// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, sized_box_for_whitespace, file_names, prefer_const_constructors, unused_local_variable, camel_case_types, unused_element, prefer_final_fields, unused_field

import 'package:Medicalty/services/settingServices.dart';
import 'package:flutter/material.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'package:get/get.dart';

import '../informations/appointment_booking.dart';
import '../informations/center_information.dart';
import '../informations/create_insurance_company.dart';
import '../informations/create_new_section.dart';
import '../informations/create_pharmacy.dart';
import '../informations/disease_reporting.dart';
import '../informations/new_doctor.dart';
import '../informations/new_employee.dart';
import '../informations/new_expenses.dart';
import '../informations/new_experiences.dart';
import '../informations/new_invoices.dart';
import '../informations/new_products_services.dart';
import '../informations/new_request.dart';
import '../informations/registration_patient.dart';

class Speed_Dial extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  bool customDialRoot = true;
  bool extend = false;
  bool rmIcons = false;

  AnimationController? _controller;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.blackBlueColor2,
        title: const Text("Speed Dial"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorApp.blackBlueColor2,
        onPressed: () {
          Get.to(()=> CreateNewSectionPage());
        },
        child: Icon(_isExpanded ? Icons.close : Icons.add),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 630,
              width: 250,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListView(
                  children: [
                    (myBox!.get('type') == 'doctor' ||myBox!.get('type')  == 'center'||myBox!.get('type')  == 'hospital' )?
                    SpeedDialWidget(
                      title: 'doctors',
                      image: 'doc.png',
                      myColor: ColorApp.brownDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> NewDoctorPage());
                      },
                    ): Text(''),
                    (myBox!.get('type')  == 'center'||myBox!.get('type')  == 'hospital' )?
                    SpeedDialWidget(
                      title: 'departments',
                      image: 'departments.png',
                      myColor: ColorApp.redDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> CreatePharmacyPage());
                      },
                     ): Text(''),
                     (myBox!.get('type')  == 'center'||myBox!.get('type')  == 'hospital' )?
                    SpeedDialWidget(
                      title: 'Insurance',
                      image: 'insurance.png',
                      myColor: ColorApp.blueDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> CreateInsuranceCompanyPage());
                      },
                     ): Text(''),
                    SpeedDialWidget(
                      title: 'customers',
                      image: 'customers.png',
                      myColor: ColorApp.orangeDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> RegistrationPatientPage());
                      },
                    ),
                    SpeedDialWidget(
                      title: 'spending',
                      image: 'spending.png',
                      myColor: ColorApp.greenDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> NewExpensesPage());
                      },
                    ),
                    SpeedDialWidget(
                      title: 'Invoice',
                      image: 'invoice.png',
                      myColor: ColorApp.indigoDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> NewInvoicesPage());
                      },
                    ),
                    SpeedDialWidget(
                      title: 'Departure',
                      image: 'departure.png',
                      myColor: ColorApp.whiteGreenDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> CenterInformationPage());
                      },
                    ),
                    SpeedDialWidget(
                      title: 'employees',
                      image: 'employees.png',
                      myColor: ColorApp.deepBlueDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> NewEmployeePage());
                      },
                    ),
                    SpeedDialWidget(
                      title: 'new request',
                      image: 'request.png',
                      myColor: ColorApp.pinkDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> NewRequestPage());
                      },
                    ),
                    SpeedDialWidget(
                      title: 'Add product',
                      image: 'product.png',
                      myColor: ColorApp.whiteBlackDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> NewProductPage());
                      },
                    ),
                    SpeedDialWidget(
                      title: 'experience',
                      image: 'experience.png',
                      myColor: ColorApp.pinkDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> NewExperiencesPage());
                      },
                    ),
                    SpeedDialWidget(
                      title: 'appointments',
                      image: 'appointments.png',
                      myColor: ColorApp.whiteBlueDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> AppointmentBookingPage());
                      },
                    ),
                    SpeedDialWidget(
                      title: 'Diseases',
                      image: 'diseases.png',
                      myColor: ColorApp.greyDialColor.withOpacity(0.6),
                      onTap: () {
                        Get.to(()=> DiseaseReportingPage());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget SpeedDialWidget({
    required Color myColor,
    required String title,
    required String image,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: ClipPath(
        clipper: CustomClipPath(),
        child: Container(
          width: 230,
          height: 40,
          child: Stack(
            children: [
              Align(
                // alignment: Alignment.center,
                child: ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    width: 135,
                    height: 30,
                    decoration: BoxDecoration(
                      color: myColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4.5),
                      child: OnBoardingTextWidget(
                        // textAlign: TextAlign.center,
                        text: title,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 24,
                top: -0.5,
                child: Image.asset(
                  'assets/images/floating_images/$image',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.lineTo(size.width * .97, 0);
    path.quadraticBezierTo(
      w * 0.8,
      h * 0.5,
      w * 0.97,
      h,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
