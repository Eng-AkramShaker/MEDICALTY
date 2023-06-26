
import 'package:Medicalty/View/widget/textfield_screen/my_text_form_field.dart';
import 'package:Medicalty/controllers/accounts/login_controller.dart';
import 'package:Medicalty/model/accounts/admin_login_model/admin_login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../constatnt/image_app.dart';
import '../../../main.dart';
import '../../widget/login/container.dart';
import '../../widget/login/mytext_field.dart';
import '../Trainer/paymentCompleted.dart';
import '../home_page/navBar.dart';
import 'create_accounts.dart';
import 'forgot_password.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
        builder: (controller) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 47, left: 24, right: 24),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            Expanded(
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 82,
                        ),
                        const Text(
                          'Welcome to Pro Dector!',
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Switzer',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        const Text(
                          'Hello there, sign in to continue!',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Switzer',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 46,
                        ),
                        MyTextFormField(
                          controller:controller.emailController ,
                          validator: (){},
                          obscureText: false,
                          labelText: 'yourmail@mail.com',
                          keyboardType: TextInputType.text,
                        ),
                        const SizedBox(
                          height: 46,
                        ),
                        MyTextFormField(
                          controller:controller.passwordController ,
                          validator: (){},
                          obscureText: controller.isVisibility,
                          labelText: 'Password',
                          keyboardType: TextInputType.text,
                          suffixIcon: InkWell(
                            onTap: (){
                              controller.visibility();
                            },
                            child: Icon(controller.isVisibility ? Icons.visibility : Icons.visibility_off),
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(const Forgot_Password());
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Color(0xff7DB00E),
                                  fontSize: 14,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentCompleted()),
                            );
                          },
                          child: InkWell(
                            onTap: () {
                              controller.loginAdmin(AdminLoginModel(
                                  email: controller.emailController.text,
                                  password: controller.passwordController.text,

                              ),
                                context
                              );

                            },
                            child: Container_wed(
                              color: const Color(0xff022939),
                              text: 'Login',
                              fontSize: 22,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 47,
                        ),
                        const Center(
                          child: Text('Or Login with',
                              style: TextStyle(
                                color: Color(0xff303841),
                                fontSize: 14,
                                fontFamily: 'Switzer',
                              )),
                        ),
                        const SizedBox(
                          height: 17.5,
                        ),
                        Container(
                          height: 51,
                          width: double.infinity,
                          child: Center(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(25)),
                                      child: Image.asset('assets/images/google1.png')),
                                  const Text('Connect with Google',
                                      style: TextStyle(
                                        color: Color(0xff303841),
                                        fontSize: 14,
                                        fontFamily: 'Switzer',
                                      )),
                                  const SizedBox()
                                ],
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xff69696940), width: 1),
                            borderRadius: const BorderRadius.all(Radius.circular(6)),
                            color: const Color(0xffF5F5F5),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 51,
                          width: double.infinity,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(25)),
                                    child: Image.asset('assets/images/facebook1.png'),
                                  ),

                                  const Text('Connect With Facebook',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Switzer',
                                      )),
                                  const SizedBox()
                                ],
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xff69696940), width: 1),
                              borderRadius:
                              const BorderRadius.all(Radius.circular(6)),
                              color: const Color(0xff4267B2)),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don’t have an account?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Switzer',
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Create_Accounts()),
                                );
                              },
                              child: InkWell(
                                onTap: () {
                                  Get.to(const Create_Accounts());
                                },
                                child: const Text('Register!',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Switzer',
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ]))
          ],
        )));
  }
}
