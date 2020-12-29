import 'package:carousel_slider/carousel_slider.dart';
import 'package:dt/widgets/call_to_action/call_to_action.dart';
import 'package:dt/widgets/dt_details/dt_details.dart';
import 'package:dt/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:dt/widgets/centered_view/centered_view.dart';


/// This is the stateless widget that the main application instantiates.
class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return DefaultTextStyle(
      
      style: Theme.of(context).textTheme.bodyText2,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(

            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
                maxWidth: 1200,
                
              ),
              
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                     NavigationBar(), //we add the NavigationBar to the HomeView UI and we'll be able to see our UI that the navigation bar is squashed to the top
                     
                     Expanded(
                        child: Center(
                          child:
                          CarouselSlider(
                            
                            //1st Image of Slider
                            items: [
                              Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                  image: DecorationImage(
                                    // image: NetworkImage(
                                    //   'https'
                                    // ),

                                    image: AssetImage('lib/assets/sliders/dtSlide1.jpg'),
                                  
                                    fit: BoxFit.fill,
                                  ),
                              ),
                              ),

                                //2nd Image of Slider
                              Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                  image: DecorationImage(
                                    // image: NetworkImage(
                                    //   'https'
                                    // ),

                                    image: AssetImage('lib/assets/sliders/dtSlide2.jpg'),
                                  
                                    fit: BoxFit.fill,
                                  ),
                              ),
                              ),

                                //3rd Image of Slider
                              Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                  image: DecorationImage(
                                    // image: NetworkImage(
                                    //   'https'
                                    // ),

                                    image: AssetImage('lib/assets/sliders/dtSlide3.jpg'),
                                  
                                    fit: BoxFit.fill,
                                  ),
                              ),
                              ),

                                //4th Image of Slider
                              Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                  image: DecorationImage(
                                    // image: NetworkImage(
                                    //   'https'
                                    // ),

                                    image: AssetImage('lib/assets/sliders/dtSlide4.jpg'),
                                  
                                    fit: BoxFit.fill,
                                  ),
                              ),
                              ),

                                //5th Image of Slider
                              Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                  image: DecorationImage(
                                    // image: NetworkImage(
                                    //   'https'
                                    // ),

                                    image: AssetImage('lib/assets/sliders/dtSlide5.jpg'),
                                  
                                    fit: BoxFit.fill,
                                  ),
                              ),
                              ),
                            ],

                            //Slider Container properties  //Options: It consists of many properties
                            options: CarouselOptions(
                              //height: 400.0,  //Overall height of card to display the image
                              autoPlay: true,   //Cards automatically slides at a time
                              autoPlayCurve: Curves.bounceIn,  //determines the animation curve
                              aspectRatio: 16/6,
                              /*  used if no height have been declared
                              Aspect Ratio is used to declare the height
                              Ratio width: 16
                              Ratio height: 6
                              */
                              
                              autoPlayInterval: Duration(   //sets Duration to determent the frequency of slides when autoPlay is set to true
                                seconds: 3,
                              ),
                              autoPlayAnimationDuration: Duration(milliseconds: 800), //The animation duration between two slides while in auto playback  //Used to declare time for automated slide
                              initialPage: 0,
                              enlargeCenterPage: true,
                              scrollDirection: Axis.horizontal,
                              enableInfiniteScroll: true,
                              //viewportFration: 0.8,
                              //pauseAutoPlayOnTouch: sets a timer on touch detected that pause the autoplay
                              //onPageChanged: called whenever the page in the centre of the viewport changes

                            ),
                          ),
                        ),
                      ),

                      // Expanded(
                      //         // A flexible child that will grow to fit the viewport but
                      //         // still be at least as big as necessary to fit its contents.
                      //         child: Container(
                      //           color: const Color(0xffee0000), // Red  __ we use 0xff in place of #
                      //           height: 120.0,
                      //           alignment: Alignment.center,
                      //           child: const Text('Flexible Content'),
                      //         ),
                      //       ),
                    

                    Row(
                      children: <Widget>[
                      DtDetails(),
                      
                      Expanded(
                          child: Center(
                          child: CallToAction('Services'),
                          ),
                          ),

                      ],
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,  //for column main axis is y and cross axis is x
                      mainAxisAlignment: MainAxisAlignment.start,   //this center is for position of axis it can be : end(end of widget), start, spaceBetween,stretch(takes the full available)...
                      children: <Widget>[
                        Text(
                          'DukoreTech \nWelcome',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 80, height: 0.9),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "It's software company in country of Burundi, We develop applications: Desktop, mobile and web site,... we project to be a example in our country in the world of Technology. We help others to go ahead in programming, For The Love Of Technology.",
                          style: TextStyle(fontSize: 21, height: 1.7),
                        ),
                        
                      ],
                    ),

                      


                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}