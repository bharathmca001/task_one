import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one/widget/borderWithText.dart';
import 'package:task_one/widget/seprator.dart';

class bodyBody extends StatelessWidget {
  Size size;
  bodyBody({Key? key, required this.size}) : super(key: key);

  Widget heading(String text) {
    return Text(
      '$text',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: size.width,
            //color: Colors.indigo,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                heading('Services'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    borderWithText(
                      text: 'Stitching',
                    ),
                    borderWithText(
                      text: 'Hand Made',
                    ),
                    borderWithText(
                      text: 'Machine Made',
                    ),
                    // Spacer(),
                    RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      )),
                      TextSpan(
                          text: ' 3.2',
                          style: TextStyle(
                            color: Colors.black,
                          ))
                    ]))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        MySeparator(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heading('Category'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 80, child: borderWithText(text: 'Men')),
                          Container(
                              width: 80, child: borderWithText(text: 'Women')),
                          Container(
                            width: 80,
                            child: borderWithText(text: 'Kids'),
                          ),
                          Icon(
                            Icons.phone,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MySeparator(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                heading('Benifits'),
                SizedBox(
                  height: 8,
                ),
                AutoSizeText(
                  'Material Pickup & delivery Available',
                  style: GoogleFonts.radioCanada(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        MySeparator(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heading('Description'),
                SizedBox(
                  height: 10,
                ),
                AutoSizeText(
                  'Consequat cillum duis non velit sint non labore id incididunt dolor qui et eu. Dolore eu ad irure incididunt voluptate culpa aute sunt. Do exercitation fugiat officia non esse magna nostrud consectetur velit enim duis aliquip veniam quis. Ullamco in ex enim eu. Ex culpa adipisicing duis tempor anim et reprehenderit aliqua elit deserunt fugiat laboris. Dolor eu irure Lorem aute consequat magna. Non aute enim culpa id aliqua aute dolor sunt magna fugiat cillum in occaecat.',
                  style: GoogleFonts.radioCanada(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        MySeparator(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                heading('Rating & Comments'),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              RatingBarIndicator(
                                rating: 16,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 30.0,
                                direction: Axis.horizontal,
                              ),
                              AutoSizeText(
                                ' 16',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              RatingBarIndicator(
                                rating: 08,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 4,
                                itemSize: 30.0,
                                direction: Axis.horizontal,
                              ),
                              AutoSizeText(
                                ' 08',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              RatingBarIndicator(
                                rating: 06,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 3,
                                itemSize: 30.0,
                                direction: Axis.horizontal,
                              ),
                              AutoSizeText(
                                ' 06',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              RatingBarIndicator(
                                rating: 02,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 2,
                                itemSize: 30.0,
                                direction: Axis.horizontal,
                              ),
                              AutoSizeText(
                                ' 02',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              RatingBarIndicator(
                                rating: 01,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 1,
                                itemSize: 30.0,
                                direction: Axis.horizontal,
                              ),
                              AutoSizeText(
                                ' 01',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Center(
                          child: AutoSizeText.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text: '4.3\n',
                                  style: TextStyle(fontSize: 28)),
                              TextSpan(
                                  text: '54 Rating',
                                  style: TextStyle(fontSize: 12))
                            ]),
                            style: TextStyle(color: Colors.green),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: size.width,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 2,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle),
                            hintText: 'Write a review',
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.orangeAccent)),
                          ),
                        )),
                    Spacer(),
                    Expanded(
                        child: AutoSizeText(
                      'Reviews(12)',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      minFontSize: 12,
                    )),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
