import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one/screen/carousel.dart';

class bodyHead extends StatefulWidget {
  Size size;
  bodyHead({Key? key, required this.size}) : super(key: key);

  @override
  State<bodyHead> createState() => _bodyHeadState();
}

class _bodyHeadState extends State<bodyHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.35,
      child: Stack(
        children: [
          CarouselBuild(
            size: widget.size,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 75,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              child: Icon(Icons.store, color: Colors.white),
                            ),
                            TextSpan(
                                text: " Shop Name ",
                                style: GoogleFonts.lato(
                                    fontSize: 18, fontWeight: FontWeight.bold)
                                // style: TextStyle(
                                //     fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                                text: " johnson road",
                                style: GoogleFonts.lato(fontSize: 16)
                                //style: TextStyle(fontSize: 20),
                                ),
                          ]))
                        ],
                      ),
                      flex: 4,
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      thickness: 1,
                      width: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                          child: Center(
                              child: FaIcon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                      ))),
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      thickness: 1,
                      width: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(247, 211, 102, 1),
                      Color.fromRGBO(253, 161, 132, 1),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.transparent),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
