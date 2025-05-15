import 'package:flutter/material.dart';
import '../../../../utils/appcolor.dart';
import '../../../../utils/appimage.dart';
import '../../../../utils/apptextstyle.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardHeight = screenWidth * 0.6; // Responsive card height (60% of screen width)
    final imageHeight = cardHeight * 0.65; // Images take ~65% of card height
    final smallImageWidth = screenWidth * 0.14; // Responsive width for smaller images
    final largeImageWidth = screenWidth * 0.29; // Responsive width for larger images

    return Flexible(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.01, // Responsive padding
          vertical: screenWidth * 0.02,
        ),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              color: AppColor.fontWhite,
              elevation: 2, // Subtle shadow for better visuals
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: cardHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Large Image 1
                        Container(
                          height: imageHeight,
                          width: largeImageWidth,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: AssetImage(AppImage.boardModel1Image),
                              fit: BoxFit.cover, // Ensure proper scaling
                            ),
                          ),
                        ),
                        // Large Image 2
                        Container(
                          height: imageHeight,
                          width: largeImageWidth,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppImage.boardModel2Image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // Small Images (Column 1)
                        Column(
                          children: [
                            Container(
                              height: imageHeight * 0.58,
                              width: smallImageWidth,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AppImage.boardModel6Image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: imageHeight * 0.42,
                              width: smallImageWidth,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AppImage.boardModel5Image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Small Images (Column 2)
                        Column(
                          children: [
                            Container(
                              height: imageHeight * 0.4,
                              width: smallImageWidth,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(AppImage.boardModel3Image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: imageHeight * 0.6,
                              width: smallImageWidth,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(AppImage.boardModel4Image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: screenWidth * 0.015), // Responsive spacing
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                      child: Row(
                        children: [
                          Text(
                            "Going out outfits",
                            style: AppTextStyles.boardTitle.copyWith(
                              fontSize: screenWidth < 600 ? 16 : 18, // Responsive font
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: screenWidth < 600 ? 16 : 18, // Responsive icon
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenWidth * 0.015),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                      child: Text(
                        "36 items",
                        style: AppTextStyles.womenCardText.copyWith(
                          fontSize: screenWidth < 600 ? 14 : 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}