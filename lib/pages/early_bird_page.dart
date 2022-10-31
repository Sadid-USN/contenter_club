import 'package:contenter/class/all_content.dart';
import 'package:contenter/main.dart';
import 'package:contenter/style/colors.dart';
import 'package:contenter/style/fonts.dart';
import 'package:contenter/widgets/appBarHeader.dart';
import 'package:contenter/widgets/early_bird_card.dart';
import 'package:contenter/widgets/privacy_policy_card.dart';
import 'package:contenter/widgets/story_video_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EarlyBirdPage extends StatefulWidget {
  const EarlyBirdPage({super.key});

  @override
  State<StatefulWidget> createState() => _EarlyBirdPageState();
}

class _EarlyBirdPageState extends State<EarlyBirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: apbbarHeader,
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const HeaderWidget(),
                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const NavigationPage();
                            }));
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 25,
                          ),
                        ),
                        Text(
                          'back to business',
                          style: footerMedium,
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    const EarlyBirdCard(),
                    const SizedBox(
                      height: 40,
                    ),

                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 45,
                                width: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  color: Color.fromARGB(255, 213, 207, 241),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'All',
                                      style: GoogleFonts.openSans(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: blue),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 30,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: gray04,
                                      ),
                                      child: Text(
                                        '6',
                                        style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: blue),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80,
                                height: 2,
                                color: violet,
                              )
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: allContent.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                allContent[index].cmaera),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(allContent[index].vido,
                                                style: GoogleFonts.openSans(
                                                  textStyle: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 16,
                                                      color: gray01),
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Image.asset(
                                                  allContent[index].galery),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(allContent[index].photo,
                                                style: GoogleFonts.openSans(
                                                  textStyle: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 16,
                                                      color: gray01),
                                                )),
                                          ],
                                        ),
                                      ),
                                      // Container(
                                      //   margin: const EdgeInsets.only(
                                      //       top: 5, left: 10, right: 10),
                                      //   width: 200,
                                      //   height: 2,
                                      //   color: gray01,
                                      // )
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    const StoryVideoCard(
                      isButtontrue: true,
                    ),
                    const SizedBox(
                      height: 100,
                    ),

                    //  const UploadContent(),
                  ],
                ),
              ),
              const PrivacyPolicyCard(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NavigationPage();
            }));
          },
          tooltip: 'Navigation',
          child: const Icon(Icons.add),
        ));
  }
}
