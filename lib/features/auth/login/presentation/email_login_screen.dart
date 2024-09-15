import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payuung_pribadi/features/auth/domain/repositories/auth_navigation_repository.dart';
import 'package:payuung_pribadi/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:payuung_pribadi/routes/nav_list/auth_nav.dart';
import 'package:payuung_pribadi/utils/themes/theme.dart';
import 'package:payuung_pribadi/utils/themes/typography_text_style.dart';
import 'package:payuung_pribadi/utils/widgets/custom_button.dart';
import 'package:payuung_pribadi/utils/widgets/custom_text_form_field.dart';

import '../../../../di/dependency_injection.dart';
import '../../../../utils/const/assets_path.dart';

class EmailLoginScreen extends StatelessWidget {
  const EmailLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<LoginCubit>(),
      child: EmailLoginScreenUI(),
    );
  }
}

class EmailLoginScreenUI extends StatefulWidget {
  const EmailLoginScreenUI({super.key});

  @override
  State<EmailLoginScreenUI> createState() => _EmailLoginScreenUIState();
}

class _EmailLoginScreenUIState extends State<EmailLoginScreenUI> {
  TextEditingController emailController = TextEditingController();
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

    Widget emailForm() {
      return Container(
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 24,
        ),
        child: Form(
          // key: formKey,
          child: CustomTextFormField(
            textEditingController: emailController,
            labelText: "Alamat Email",
            hintText: "ketik email kamu di sini...",
            onChangeValue: (value) {
              context.read<LoginCubit>().onChangeEmailTextFormField(value);
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
                di<AuthNavigationRepository>().goToPasswordLoginScreen(context, email: emailController.text);
              },
              textButton: "Lanjutkan",
              isActive: state.isActiveButtonEmail,
            );
          },
        );
      }

      Widget googleButton() {
        return CustomButton(
          onPressed: () {
            // go to password login screen
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
                style: TypographyTextStyle.bodyLight1.copyWith(
                    color: Colors.grey.shade600
                ),
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
          top: 24,
        ),
        child: Column(
          children: [
            nextButton(),
            divider(),
            googleButton(),
          ],
        ),
      );
    }

    return Scaffold(
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
          emailForm(),
          buttons(),
        ],
      ),
    );
  }
}
