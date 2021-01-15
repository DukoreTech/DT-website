import 'package:carousel_slider/carousel_slider.dart';
import 'package:dt/UI/widgets/responsive.dart';
import 'package:flutter/material.dart';

class CodeLifeCarousel extends StatefulWidget {
  @override
  _CodeLifeCarouselState createState() => _CodeLifeCarouselState();
}

class _CodeLifeCarouselState extends State<CodeLifeCarousel> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  //To add the floating selector follow these steps:select and color:hover
  List _isHovering = [false, false, false, false, false];
  List _isSelected = [true, false, false, false, false];

  int _current = 0;


    //Define a list of images and the labels for them
  final List<String> images = [
    'lib/assets/sliders/dtSlide1.jpg',
    'lib/assets/sliders/dtSlide2.jpg',
    'lib/assets/sliders/dtSlide3.jpg',
    'lib/assets/sliders/dtSlide4.jpg',
    'lib/assets/sliders/dtSlide5.jpg',
  ];

  final List<String> places = [
    'YIC',
    'After Code',
    'Code life',
    'Code life',
    'Code life',
  ];


    //Generate a list of Widgets to show in the carousel
  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }


  //Inside the build method store the list of widgets and display them 
  //inside the carousel with their respective labels
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Stack(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(   //Options: It consists of many properties
              scrollPhysics: ResponsiveWidget.isSmallScreen(context)
                  ? PageScrollPhysics()
                  : NeverScrollableScrollPhysics(),
              enlargeCenterPage: true,
              aspectRatio: 18 / 8,
              autoPlay: true,

              //Modify the onPageChanged property of the CarouselOptions widget
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                  for (int i = 0; i < imageSliders.length; i++) {
                    if (i == index) {
                      _isSelected[i] = true;
                    } else {
                      _isSelected[i] = false;
                    }
                  }
                });
              }),

          carouselController: _controller,
        ),
        AspectRatio(
          aspectRatio: 18 / 8,
          child: Center(
            child: Text(
              places[_current],
              style: TextStyle(
                letterSpacing: 8,
                fontFamily: 'Electrolize',
                fontSize: screenSize.width / 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        ResponsiveWidget.isSmallScreen(context)
            ? Container()
            : AspectRatio(
              /*  used if no height have been declared
                          Aspect Ratio is used to declare the height
                          Ratio width: 17
                          Ratio height: 8
                          */
                aspectRatio: 17 / 8,
                child: Center(
                  heightFactor: 1,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: screenSize.width / 8,
                        right: screenSize.width / 8,
                      ),
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: screenSize.height / 50,
                            bottom: screenSize.height / 50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (int i = 0; i < places.length; i++)
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onHover: (value) {
                                        setState(() {
                                          value
                                              ? _isHovering[i] = true
                                              : _isHovering[i] = false;
                                        });
                                      },
                                      onTap: () {
                                        _controller.animateToPage(i);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: screenSize.height / 80,
                                            bottom: screenSize.height / 90),
                                        child: Text(
                                          places[i],
                                          style: TextStyle(
                                            color: _isHovering[i]
                                                ? Theme.of(context)
                                                    .primaryTextTheme
                                                    .button
                                                    .decorationColor
                                                : Theme.of(context)
                                                    .primaryTextTheme
                                                    .button
                                                    .color,
                                          ),
                                        ),
                                      ),
                                    ),

                          /* Display the row of widgets inside a Card containing
                           the text and show an underline to highlight the option
                            that is selected. The highlighter can be created like this:*/
                                    Visibility(
                                      maintainSize: true,
                                      maintainAnimation: true,
                                      maintainState: true,
                                      visible: _isSelected[i],
                                      child: AnimatedOpacity(
                                        duration: Duration(milliseconds: 400),
                                        opacity: _isSelected[i] ? 1 : 0,
                                        child: Container(
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffd86310),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          width: screenSize.width / 10,
                                        ),
                                  /*  scrollDirection: Axis.horizontal,
                                    enableInfiniteScroll: true,
                                    //viewportFration: 0.8,
                                    //pauseAutoPlayOnTouch: sets a timer on touch detected that pause the autoplay
                                    //onPageChanged: called whenever the
                                    page in the centre of the viewport changes*/



                                      ),
                                    )
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
