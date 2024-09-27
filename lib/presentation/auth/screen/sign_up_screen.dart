import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static String routeName = "/signUp";

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final emailFocusNode = FocusNode();
    final emailController = TextEditingController();
    final passwordFocusNode = FocusNode();
    final passwordController = TextEditingController();
    final nameFocusNode = FocusNode();
    final nameController = TextEditingController();
    final phoneFocusNode = FocusNode();
    final phoneController = TextEditingController();

    return CupertinoPageScaffold(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Your Account",
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
                  "Name",
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
                  controller: nameController,
                  focusNode: nameFocusNode,
                  onTapOutside: (event) {
                    nameFocusNode.unfocus();
                  },
                  placeholder: "Name",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                  keyboardType: TextInputType.name,
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
                  "Phone",
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
                  controller: phoneController,
                  focusNode: phoneFocusNode,
                  onTapOutside: (event) {
                    phoneFocusNode.unfocus();
                  },
                  placeholder: "Phone",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                  keyboardType: TextInputType.phone,
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
                const Gap(48),
                Row(
                  children: [
                    Expanded(
                      child: CupertinoButton.filled(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        borderRadius: BorderRadius.circular(48),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Sign Up",
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "By registering you agree to \n",
                        children: [
                          TextSpan(
                            text: "Terms & Conditions",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
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
                  ],
                ),
                const Gap(64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      minSize: 0,
                      padding: EdgeInsets.zero,
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          children: [
                            TextSpan(
                              text: "Sign In",
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
