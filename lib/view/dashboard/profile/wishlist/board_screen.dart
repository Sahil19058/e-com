import 'package:flutter/material.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/apptextstyle/apptextstyle.dart';
import '../../../../utils/appimage/appimage.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
          itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                color: AppColor.fontWhite,
                child: Container(
                  height: 226,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 148,
                            width: 107,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft:Radius.circular(10) ),
                              image: DecorationImage(
                                  image: AssetImage(AppImage.boardModel1Image)
                              )
                            ),
                          ),
                          Container(
                            height: 148,
                            width: 107,
                            decoration: BoxDecoration(
                                // borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft:Radius.circular(20) ),
                                image: DecorationImage(
                                    image: AssetImage(AppImage.boardModel2Image),
                                )
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 86,
                                width: 52,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(AppImage.boardModel6Image),
                                      fit: BoxFit.fitHeight
                                    )
                                ),
                              ),
                              Container(
                                height: 62  ,
                                width: 52,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(AppImage.boardModel5Image),
                                      fit: BoxFit.fitHeight
                                    )
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Container(
                                height: 59,
                                width: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(AppImage.boardModel3Image)
                                    )
                                ),
                              ),
                              Container(
                                height: 88  ,
                                width: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(AppImage.boardModel4Image)
                                    )
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                                "Going out outfits",
                              style: AppTextStyles.boardTitle,
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                            "36 items",
                          style: AppTextStyles.womenCardText,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
        )
    );
  }
}
