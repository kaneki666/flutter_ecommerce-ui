import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/details/details_screen.dart';
import 'package:learn_flutter/screens/home/components/image_data.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10 * 2), //20
        child: GridView.builder(
          // We just turn off grid view scrolling
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          // just for demo
          itemCount: imageList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.693,
          ),
          itemBuilder: (context, index) => ImageCard(
            imageData: imageList[index],
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final ImageData imageData;

  const ImageCard({
    required this.imageData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(imageData: imageData),
          ),
        ),
      },
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipPath(
                clipper: CategoryCustomShape(),
                child: AspectRatio(
                  aspectRatio: 0.7,
                  child: Container(
                    color: Color.fromRGBO(243, 243, 243, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '${imageData.title}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Hero(
                      tag: imageData.id,
                      child:
                          Image.asset(imageData.imageUrl, fit: BoxFit.contain)),
                ),
              ),
            ],
            //
          ),
        ),
      ),
    );
  }
}

class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
