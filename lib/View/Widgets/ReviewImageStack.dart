import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/main.dart';

class ReviewImagesStack extends StatelessWidget {
  const ReviewImagesStack({super.key});

  @override
  Widget build(BuildContext context) {
    // Ensure this is a valid list of URLs
    List<String> images = [
    dummyImage,
    dummyImage,
    dummyImage
      // Add more image URLs as needed
    ];

    return ImageStack(
      backgroundColor: kwhite,
      extraCountBorderColor: kwhite,
      extraCountTextStyle: const TextStyle(
        color: kblack2,
        fontFamily: 'spaceb',
      ),
      imageList: images, // This should be a List<String>
      imageSource: ImageSource.Network,
      totalCount: images.length, // Total count of images
      imageRadius: 30, // Radius of each image
      imageCount: 6, // Maximum number of images to be shown in stack
      imageBorderWidth: 0, // Border width around the images
    );
  }
}
