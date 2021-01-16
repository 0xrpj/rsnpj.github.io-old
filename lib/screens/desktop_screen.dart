import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/constants.dart';
import 'package:personalportfolio/footer.dart';
import 'package:personalportfolio/widgets/about_me.dart';
import 'package:personalportfolio/widgets/projects.dart';
import 'package:personalportfolio/widgets/social.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopScreen extends StatefulWidget {
  @override
  _DesktopScreenState createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  launchUrl(String url) async {
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundCOlor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        // color: Colors.yellow,
                        height: MediaQuery.of(context).size.height / 1.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SelectableText(
                                  'Farrukh',
                                  style: titleTextColor,
                                ),
                                SelectableText(
                                  'Sajjad',
                                  style: titleTextColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: SelectableText(
                                    'flutter developer | dart lord',
                                    style: GoogleFonts.inconsolata(
                                      color: Colors.black,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              width: 1.5,
                              color: Colors.black,
                              indent: 150,
                              endIndent: 100,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                              //color: Colors.red,
                              height: MediaQuery.of(context).size.height / 2.5,
                              child: SvgPicture.asset(
                                'assets/images/avatar.svg',
                                height:
                                    MediaQuery.of(context).size.height / 2.5,
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Socials(),
                    ],
                  ),
                ),
                Projects(),
                Aboutme(),
                Footer(),
              ],
            ),
            // Positioned(
            //   top: MediaQuery.of(context).size.height / 2,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 18.0),
            //     child: GestureDetector(
            //       onTap: () {},
            //       child: AnimatedContainer(
            //         duration: Duration(
            //           milliseconds: 250,
            //         ),
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           border: Border.all(
            //             color: Colors.black,
            //             width: 3,
            //           ),
            //         ),
            //         child: Icon(
            //           Icons.menu,
            //           size: 80,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
