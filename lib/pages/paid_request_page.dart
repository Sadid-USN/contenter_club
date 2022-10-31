import 'package:contenter/main.dart';
import 'package:contenter/style/colors.dart';
import 'package:contenter/style/fonts.dart';
import 'package:contenter/widgets/appBarHeader.dart';
import 'package:contenter/widgets/privacy_policy_card.dart';
import 'package:contenter/widgets/story_video_card.dart';
import 'package:contenter/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaidRequestPage extends StatefulWidget {
  const PaidRequestPage({super.key});

  @override
  State<StatefulWidget> createState() => _PaidRequestPageState();
}

class _PaidRequestPageState extends State<PaidRequestPage> {
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
                    const StoryVideoCard(),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Materials',
                        style: footerLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      decoration: BoxDecoration(
                          color: gray04,
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(17.0),
                      child: Text(
                        'I created the video with combining aesthetic looking food and thought of backstage magic',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              color: black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          print("=====Real.mp4====");
                        },
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              color: gray04,
                              borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Reel.mp4',
                                style: GoogleFonts.openSans(
                                  textStyle: const TextStyle(
                                      fontSize: 14, color: blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SubmitButton(
                        text: 'Download materials',
                        onTap: () {
                          print("=====Download materials====");
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 150,
                    ),
                    // const UploadContent(),
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
