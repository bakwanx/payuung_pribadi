import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payuung_pribadi/core/base/presentation/payuung_base_screen.dart';
import 'package:payuung_pribadi/utils/ext/safe_null_object.dart';

import '../../../../di/dependency_injection.dart';
import '../../../../utils/const/assets_path.dart';
import '../../../../utils/themes/theme.dart';
import '../../../../utils/themes/typography_text_style.dart';
import '../../../../utils/widgets/custom_button.dart';
import '../../../../utils/widgets/custom_text_form_field.dart';
import '../../../base_home/domain/repositories/base_home_navigation_repository.dart';
import 'cubit/login_cubit.dart';

class PasswordLoginScreen extends StatelessWidget {
  final String? email;

  const PasswordLoginScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<LoginCubit>(),
      child: PasswordLoginScreenUI(email: email.orEmpty(),),
    );
  }
}

class PasswordLoginScreenUI extends StatefulWidget {
  final String email;
  const PasswordLoginScreenUI({super.key, required this.email});

  @override
  State<PasswordLoginScreenUI> createState() => _PasswordLoginScreenUIState();
}

class _PasswordLoginScreenUIState extends State<PasswordLoginScreenUI> {
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Widget header() {
      Widget banner() {
        return SvgPicture.asset(
          ilSignIn,
          width: SizeScreen.maxWidth(context) * 0.5,
        );
      }

      Widget welcomeText() {
        return Container(
          margin: const EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            "Selamat Datang!",
            style: TypographyTextStyle.headingBold3.copyWith(fontSize: 20),
          ),
        );
      }

      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            banner(),
            welcomeText(),
          ],
        ),
      );
    }

    Widget passwordForm() {
      return Container(
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 24,
        ),
        child: Form(
          key: formKey,
          child: CustomTextFormField(
            textEditingController: passwordController,
            labelText: "Password",
            onChangeValue: (value) {
              context.read<LoginCubit>().onChangePasswordTextFormField(value);
            },
            isPassword: true,
            validator: (value) {
              if (value!.isEmpty) {
                return "Harap diisi";
              }
              if (value.length < 6) {
                return "Minimal 6 karakter";
              }
            },
          ),
        ),
      );
    }

    Widget buttons() {
      Widget nextButton() {
        return BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return CustomButton(
              onPressed: () {
                context.read<LoginCubit>().login(widget.email, passwordController.text);
              },
              textButton: "Lanjutkan",
              isActive: state.isActiveButtonPassword,
            );
          },
        );
      }

      Widget forgotPassword() {
        return Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Text(
              "Lupa Password?",
              style: TypographyTextStyle.headingMedium6.copyWith(
                  color: Colors.grey
              ),
            ),
          ),
        );
      }

      Widget googleButton() {
        return CustomButton(
          onPressed: () {
            // go to home

          },
          logoSvg: ilLogoGoogle,
          textButton: "Lanjutkan dengan Google",
          textColor: Colors.red,
          margin: const EdgeInsets.only(
            top: 20,
          ),
          borderColor: Colors.red,
        );
      }

      Widget divider() {
        return Container(
          margin: const EdgeInsets.only(
            top: 20,
          ),
          width: 100,
          child: Row(
            children: [
              const Expanded(child: Divider()),
              const SizedBox(
                width: 8,
              ),
              Text(
                "atau",
                style: TypographyTextStyle.bodyLight1
                    .copyWith(color: Colors.grey.shade600),
              ),
              const SizedBox(
                width: 8,
              ),
              const Expanded(child: Divider()),
            ],
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 10,
        ),
        child: Column(
          children: [
            forgotPassword(),
            nextButton(),
            divider(),
            googleButton(),
          ],
        ),
      );
    }

    return PayuungBaseScreen<LoginCubit, LoginState>(
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if(state.isSuccessLogin){
            // go to home
            di<BaseHomeNavigationRepository>().goToBaseHome(context);
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              header(),
              passwordForm(),
              buttons(),
            ],
          ),
        ),
      ),
    );
  }
}
