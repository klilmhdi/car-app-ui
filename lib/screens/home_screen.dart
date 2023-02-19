import 'package:car_app_ui/share/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        // shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: size.width * 0.05),
          child: SizedBox(
            height: size.width * 0.1,
            width: size.width * 0.1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Icon(
                UniconsLine.bars,
                color: Colors.blueGrey,
                size: size.height * 0.025,
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leadingWidth: size.width * 0.15,
        title: Text(
          'Car App UI'.toUpperCase(), style: GoogleFonts.dancingScript(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 28.0),
          // themeData.brightness == Brightness.dark
          //     ? "${lightText}"
          //     : "${darkText}",
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: size.width * 0.05,
            ),
            // child: SizedBox(
            //   height: size.width * 0.1,
            //   width: size.width * 0.1,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: themeData.primaryColorDark.withOpacity(0.03),
            //       borderRadius: const BorderRadius.all(
            //         Radius.circular(10),
            //       ),
            //     ),
            //     // child: Switch.adaptive(value: value, onChanged: onChanged),
            //   ),
            // ),
          ),
        ],
      ),
      bottomNavigationBar: buildCustomBottomNavBar(1, size, themeData),
      body: SafeArea(
        child: ListView(
          children: [
            // text form field
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.04,
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Colors.grey[300], //section bg color
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.04,
                      ),
                      child: Align(
                        child: Text(
                          'With Corporate Difference',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.black87,
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.01,
                      ),
                      child: Align(
                        child: Text(
                          'Enjoy the fun driving in Enterprise',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: size.width * 0.035,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.03,
                        left: size.width * 0.04,
                        bottom: size.height * 0.025,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.65,
                            height: size.height * 0.06,
                            child: TextField(
                              //searchbar
                              style: GoogleFonts.poppins(
                                color: themeData.primaryColor,
                              ),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  top: size.height * 0.01,
                                  left: size.width * 0.04,
                                  right: size.width * 0.04,
                                ),
                                enabledBorder: textFieldBorder(),
                                focusedBorder: textFieldBorder(),
                                border: textFieldBorder(),
                                hintStyle: GoogleFonts.poppins(
                                  color: themeData.primaryColor,
                                ),
                                hintText: 'Search a car',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.025,
                            ),
                            child: Container(
                              height: size.height * 0.06,
                              width: size.width * 0.14,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Color(0xff3b22a1), //filters bg color
                              ),
                              child: Icon(
                                UniconsLine.sliders_v,
                                color: Colors.white,
                                size: size.height * 0.032,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // top brands widget
            buildTopBrands(size, themeData),
            // most rented widget
            buildMostRented(size, themeData),
          ],
        ),
      ),
    );
  }
}