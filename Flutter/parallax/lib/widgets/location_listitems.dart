import 'package:flutter/material.dart';

class LocationListItems extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String place;

  const LocationListItems(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.place});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRect(
          child: Stack(
            children: [
              _buildParallaxBackground(context),
              _buildGradient(),
              _buildTitleAndSubTitle()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowWidget(),
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
        )
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
        child: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.6, 0.95]))));
  }

  Widget _buildTitleAndSubTitle() {
    return Positioned(
        bottom: 20,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              place,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        ));
  }
}

class ParallaxFlowWidget extends FlowDelegate {
  ParallaxFlowWidget();

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(width: constraints.maxWidth);
  }

  @override
  void paintChildren(FlowPaintingContext context) {}
  // Todo

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
