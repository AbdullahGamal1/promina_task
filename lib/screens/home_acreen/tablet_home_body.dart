import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/my_cubit.dart';
import '../components/custom_bottom.dart';
import '../components/custom_image_picker_dialog.dart';
import '../components/custom_silver_grid.dart';

class TabletHomeBody extends StatelessWidget {
  const TabletHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var myCubit = BlocProvider.of<MyCubit>(context);

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Text(
                      ' Welcom \n  Mina ',
                      style: TextStyle(
                          fontSize: 18.sp, color: Colors.blueGrey[800]),
                    ),
                    Expanded(child: Container()),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container()),
                  SizedBox(
                    width: 80.w,
                    child: CustomBottom(
                      backgroundBottomColor: Colors.white,
                      backgroundIcondColor: Colors.redAccent,
                      title: 'Log Out',
                      icon: Icons.arrow_back,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                  SizedBox(
                    width: 80.w,
                    child: CustomBottom(
                      backgroundBottomColor: Colors.white,
                      backgroundIcondColor: Colors.redAccent,
                      title: 'Upload',
                      icon: Icons.arrow_upward,
                      onTap: () {
                        showMyUploadDialog(context,
                            action: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomBottom(
                                    backgroundBottomColor:
                                        Colors.purple.shade100,
                                    backgroundIcondColor: Colors.purpleAccent,
                                    title: 'Gallery',
                                    icon: Icons.photo_library,
                                    onTap: () {
                                      myCubit.pickImage();
                                    },
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  CustomBottom(
                                    backgroundBottomColor: Colors.cyan.shade50,
                                    backgroundIcondColor: Colors.blueAccent,
                                    title: 'Camera',
                                    icon: Icons.photo_camera,
                                    onTap: () {
                                      myCubit.takeImageFromCamera();
                                    },
                                  )
                                ],
                              ),
                            ));
                      },
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: CustomScrollView(
                slivers: [CustomSilverGrid(numberOfHorizontalItem: 5)],
              ),
            )
          ],
        ));
  }
}
