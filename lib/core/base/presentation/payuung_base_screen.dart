import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payuung_pribadi/core/base/cubit/payuung_base_state.dart';
import 'package:payuung_pribadi/utils/themes/typography_text_style.dart';
import '../../../utils/themes/theme.dart';

import 'package:payuung_pribadi/utils/error/error_exception.dart';
import '../../../utils/widgets/custom_snackbar.dart';
import '../cubit/payuung_base_listener.dart';

class PayuungBaseScreen<BLOC extends BlocBase<STATE>,
    STATE extends PayuungBaseState> extends StatelessWidget {
  final Widget child;
  final Widget? loading;
  final Function? onError;
  final Function? actionError;
  final List<String>? exceptionErrors;
  final bool isAutoClearErrorState;
  final bool hardReset;

  const PayuungBaseScreen({
    super.key,
    required this.child,
    this.loading,
    this.actionError,
    this.onError,
    this.exceptionErrors,
    this.isAutoClearErrorState = true,
    this.hardReset = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<BLOC, STATE>(
      listenWhen: (previous, current) {
        return previous != current && notShowErrorSame(previous, current);
      },
      listener: (_, state) {
        if (state.errorState != null) {
          if (onError != null) {
            onError!();
            return;
          }
          final failure = state.errorState;

          if (exceptionErrors == null) {
            if (failure != null) {
              final bloc = BlocProvider.of<BLOC>(context);
              if (bloc is PayuungBaseListener) {
                (bloc as PayuungBaseListener).clearErrorState();
              }

              if (failure is NetworkException) {
                showDialogCustom(
                  context,
                  "Pesan",
                  failure.message!,
                );
              } else if (failure is LocalException) {
                showDialogCustom(
                  context,
                  "Pesan",
                  failure.message!,
                );
              } else if (failure is FormException) {
                showDialogCustom(
                  context,
                  "Pesan",
                  failure.message!,
                );
              } else if (failure is NetworkException) {
                showDialogCustom(
                  context,
                  "Pesan",
                  failure.message!,
                );
              } else if (failure is PermissionException) {
                CustomSnackbar.snackbar(context, failure.message!, Colors.red);
              } else {
                CustomSnackbar.snackbar(
                    context, failure.toString(), Colors.red);
              }
            } else {
              showDialogCustom(context, "Pesan", "A Error");
            }
          }
        }
      },
      child: BlocBuilder<BLOC, STATE>(
        buildWhen: (previous, current) {
          return previous != current && notShowErrorSame(previous, current);
        },
        builder: (ctx, state) {
          return Stack(
            children: [
              state.isLoading != null ? Center(child: CircularProgressIndicator()) : Container(),
              child,
            ],
          );
          return PayuungLoadingScreen(
            dismissible: false,
            isLoading: state.isLoading ?? false,
            progressIndicator: const AnimationLoading(),
            child: child,
          );
        },
      ),
    );
  }

  void showDialogCustom(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: AlertDialog(
            insetPadding: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            alignment: Alignment.center,
            titlePadding: EdgeInsets.zero,
            title: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  message,
                  style: TypographyTextStyle.bodyRegular1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: SizeScreen.maxWidth(context),
                  margin: EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 16,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Kembali",
                      style: TypographyTextStyle.bodyRegular1
                          .copyWith(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: CustomColor.yellowColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String buildErrMsg(String errMsg) {
    return errMsg;
  }

  bool notShowErrorSame(STATE previous, STATE current) {
    return (current.errorState != null
        ? previous.errorState != current.errorState
        : current.errorState == null);
  }
}

class PayuungLoadingScreen extends StatelessWidget {
  final bool isLoading;
  final double opacity;
  final Color? color;
  final double blurEffectIntensity;
  final Widget progressIndicator;
  final Offset? offset;
  final bool dismissible;
  final Widget child;

  PayuungLoadingScreen({
    Key? key,
    required this.isLoading,
    this.opacity = 0.8,
    this.color,
    this.blurEffectIntensity = 0,
    required this.progressIndicator,
    this.offset,
    this.dismissible = false,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [child];
    if (isLoading) {
      Widget layOutProgressIndicator;
      if (offset == null) {
        layOutProgressIndicator = Center(child: progressIndicator);
      } else {
        layOutProgressIndicator = Positioned(
          left: offset!.dx,
          top: offset!.dy,
          child: progressIndicator,
        );
      }
      final modal = [
        BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: blurEffectIntensity, sigmaY: blurEffectIntensity),
          child: Opacity(
            opacity: opacity,
            child: ModalBarrier(
                dismissible: dismissible, color: color ?? Color(0xff163141)),
          ),
        ),
        layOutProgressIndicator,
      ];
      widgetList += modal;
    }
    return Stack(
      alignment: Alignment
          .bottomCenter, //causing slight problems **can restore anytime
      children: widgetList,
    );
  }
}

class AnimationLoading extends StatefulWidget {
  const AnimationLoading({
    Key? key,
    this.color,
    this.size = 65,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 1200),
    this.controller,
  }) : super(key: key);

  final Color? color;
  final double size;
  final IndexedWidgetBuilder? itemBuilder;
  final Duration duration;
  final AnimationController? controller;

  @override
  State<AnimationLoading> createState() => _AnimationLoading();
}

class _AnimationLoading extends State<AnimationLoading>
    with SingleTickerProviderStateMixin {
  static const _itemCount = 12;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = (widget.controller ??
        AnimationController(vsync: this, duration: widget.duration))
      ..repeat();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: Size.square(widget.size),
        child: Stack(
          children: List.generate(_itemCount, (index) {
            final position = widget.size * .5;
            return Positioned.fill(
              left: position,
              top: position,
              child: Transform(
                transform: Matrix4.rotationZ(30.0 * index * 0.0174533),
                child: Align(
                  alignment: Alignment.center,
                  child: ScaleTransition(
                    scale: DelayTween(
                            begin: 0.0, end: 1.0, delay: index / _itemCount)
                        .animate(_controller),
                    child: SizedBox.fromSize(
                        size: Size.square(widget.size * 0.15),
                        child: _itemBuilder(index)),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) => widget.itemBuilder != null
      ? widget.itemBuilder!(context, index)
      : DecoratedBox(
          decoration: BoxDecoration(
              color: widget.color ?? Colors.white, shape: BoxShape.circle),
        );
}

class DelayTween extends Tween<double> {
  DelayTween({double? begin, double? end, required this.delay})
      : super(begin: begin, end: end);

  final double delay;

  get math => null;

  @override
  double lerp(double t) =>
      super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}
