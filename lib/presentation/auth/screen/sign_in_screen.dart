import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';
import 'package:pawa_pet_adoption/core/constants/icons.dart';
import 'package:pawa_pet_adoption/presentation/auth/screen/sign_up_screen.dart';
import 'package:pawa_pet_adoption/presentation/main/screens/main_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static String routeName = "/signIn";

  @override
  State<SignInScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final emailFocusNode = FocusNode();
    final emailController = TextEditingController();
    final passwordFocusNode = FocusNode();
    final passwordController = TextEditingController();

    return CupertinoPageScaffold(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
                const Gap(18),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.gray,
                  ),
                ),
                const Gap(32),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                const Gap(10),
                CupertinoTextField(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                  controller: emailController,
                  focusNode: emailFocusNode,
                  onTapOutside: (event) {
                    emailFocusNode.unfocus();
                  },
                  placeholder: "Email",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: AppColors.placeholder,
                    ),
                  ),
                ),
                const Gap(24),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                const Gap(10),
                CupertinoTextField(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                  controller: passwordController,
                  focusNode: passwordFocusNode,
                  onTapOutside: (event) {
                    passwordFocusNode.unfocus();
                  },
                  placeholder: "Password",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: AppColors.placeholder,
                    ),
                  ),
                ),
                const Gap(24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      minSize: 0,
                      padding: EdgeInsets.zero,
                      child: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(48),
                Row(
                  children: [
                    Expanded(
                      child: CupertinoButton.filled(
                        onPressed: () {
                          if (emailController.text.trim().isNotEmpty &&
                              passwordController.text.trim().isNotEmpty) {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              MainScreen.routeName,
                              (route) => false,
                            );
                          } else {
                            showCupertinoDialog(
                              context: context,
                              builder: (context) => CupertinoAlertDialog(
                                title: const Text(
                                  'Alert',
                                  style: TextStyle(
                                      color: CupertinoColors.destructiveRed),
                                ),
                                content: const Text('Sign failed'),
                                actions: <CupertinoDialogAction>[
                                  CupertinoDialogAction(
                                    isDestructiveAction: true,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    textStyle: const TextStyle(
                                        color: CupertinoColors.activeBlue),
                                    child: const Text('Yes'),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        borderRadius: BorderRadius.circular(48),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Sign In",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(24),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: AppColors.placeholder,
                      ),
                    ),
                    const Gap(8),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: AppColors.placeholder,
                        fontSize: 14,
                      ),
                    ),
                    const Gap(8),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: AppColors.placeholder,
                      ),
                    ),
                  ],
                ),
                const Gap(24),
                CupertinoButton(
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(48),
                  minSize: 0,
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48),
                      border: Border.all(
                        width: 1,
                        color: AppColors.placeholder,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppIcons.icGoogle,
                          width: 28,
                          height: 28,
                        ),
                        const Gap(12),
                        Text(
                          "Sign In with Google",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(24),
                CupertinoButton(
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(48),
                  minSize: 0,
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48),
                      border: Border.all(
                        width: 1,
                        color: AppColors.placeholder,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppIcons.icApple,
                          width: 28,
                          height: 28,
                        ),
                        const Gap(12),
                        Text(
                          "Sign In with Apple",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(SignUpScreen.routeName);
                      },
                      minSize: 0,
                      padding: EdgeInsets.zero,
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          children: [
                            TextSpan(
                              text: "Sign Up",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.gray,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
