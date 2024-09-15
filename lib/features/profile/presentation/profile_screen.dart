import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:payuung_pribadi/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:payuung_pribadi/utils/const/assets_path.dart';
import 'package:payuung_pribadi/utils/themes/typography_text_style.dart';

import '../../../di/dependency_injection.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<ProfileCubit>()..getUserData(),
      child: ProfileScreenUI(),
    );
  }
}

class ProfileScreenUI extends StatefulWidget {
  const ProfileScreenUI({super.key});

  @override
  State<ProfileScreenUI> createState() => _ProfileScreenUIState();
}

class _ProfileScreenUIState extends State<ProfileScreenUI> {
  @override
  Widget build(BuildContext context) {
    appBar() {
      return AppBar(
        title: Text(
          "Profile",
          style: TypographyTextStyle.headingBold6.copyWith(fontSize: 16),
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              context.pop();
            },
            child: Icon(
              Icons.arrow_back_ios_new,
            )),
      );
    }

    Widget header() {
      return BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: const BoxDecoration(
                      color: Color(0xff7c94b6),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Center(
                      child: Text(
                        "F",
                        style: TypographyTextStyle.headingBold1.copyWith(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomRight,
                    child: SvgPicture.asset(
                      iOpenCamera,
                      fit: BoxFit.fill,
                      width: 20,
                    ),
                  ))
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.userEntity.fullname,
                    style: TypographyTextStyle.headingExtraBold5,
                  ),
                  Text(
                    "Masuk reguler dengan email",
                    style: TypographyTextStyle.bodyRegular2.copyWith(
                      color: Colors.grey.shade600,
                    ),
                  )
                ],
              )
            ],
          );
        },
      );
    }

    Widget body() {
      Widget menuProfile() {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(8.0)
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: InkWell(
            onTap: (){
              // profile detail
            },
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)
                    ),
                  ),
                  child: SvgPicture.asset(
                    iPersonalInfo
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Informasi Pribadi",
                  style: TypographyTextStyle.bodyRegular1,
                ),
              ],
            ),
          ),
        );
      }

      Widget menuLogOut() {
        return Container(
          margin: EdgeInsets.only(
            top: 16,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(8.0)
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 20.0,
              ),
            ],
          ),
          child:InkWell(
            onTap: () {
              // log out
            },
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)
                    ),
                  ),
                  child: SvgPicture.asset(
                      iLogOut
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Log Out",
                  style: TypographyTextStyle.bodyRegular1,
                ),
              ],
            ),
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          children: [
            menuProfile(),
            menuLogOut(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
