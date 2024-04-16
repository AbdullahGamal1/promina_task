import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/custom_bottom.dart';
import '../components/custom_silver_grid.dart';

class TabletHomeBody extends StatelessWidget {
  const TabletHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                      backgrounIcondColor: Colors.redAccent,
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
                      backgrounIcondColor: Colors.redAccent,
                      title: 'Upload',
                      icon: Icons.arrow_upward,
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.transparent,
                            elevation: 5,
                            content: Column(
                              children: [
                                CustomBottom(
                                  backgrounIcondColor: Colors.redAccent,
                                  title: 'Gallery',
                                  icon: Icons.photo_library,
                                  onTap: () {},
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomBottom(
                                  backgrounIcondColor: Colors.redAccent,
                                  title: 'Camera',
                                  icon: Icons.photo_camera,
                                  onTap: () {},
                                )
                              ],
                            )));
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
