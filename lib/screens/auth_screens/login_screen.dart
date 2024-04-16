import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promina_task/cubit/my_cubit.dart';

import '../components/custom_form_filed.dart';
import '../home_acreen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LoginScreen";

  LoginScreen({super.key});
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyCubit, MyState>(
      listener: (context, state) {},
      builder: (context, state) => Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/bg.jpg'), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 105.w,
                    ),
                    Transform.rotate(
                      angle: 50 / 180,
                      child: const Icon(
                        Icons.favorite,
                        size: 40,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                    ),
                    Transform.rotate(
                      angle: -50 / 180,
                      child: const Icon(
                        Icons.photo_camera,
                        size: 100,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.sp),
                Text(
                  '    My \n Gallery', // Login title
                  style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.sp),
                Center(
                  child: SizedBox(
                    width: 250.w,
                    child: Card(
                      shadowColor: Colors.transparent,
                      elevation: 50,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 20.0),
                        child: Form(
                          key: formKey,
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  'LOG IN',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19.sp,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: CustomFormField(
                                    hintText: 'User Name ',
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                SizedBox(
                                  width: double.infinity,
                                  child: CustomFormField(
                                    hintText: 'Password ',
                                    isPassword: true,
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                InkWell(
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomeScreen(),
                                          ));
                                    }
                                  },
                                  child: Container(
                                    height: 30.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const Center(
                                      child: Text(
                                        'SUBMIT',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
