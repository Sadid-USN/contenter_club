import 'package:contenter/class/all_content.dart';
import 'package:contenter/main.dart';
import 'package:contenter/style/colors.dart';
import 'package:contenter/style/fonts.dart';
import 'package:contenter/widgets/appBarHeader.dart';
import 'package:contenter/widgets/early_bird_card.dart';
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
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
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: allContent.length,
                      itemBuilder: (context, index) {
                        return Row(
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
                                        allContent[index].all,
                                        style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
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
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: gray04,
                                        ),
                                        child: Text(
                                          allContent[index].number.toString(),
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
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Image.asset('assets/icons/camera.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Video',
                                  style: GoogleFonts.openSans(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: gray01),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      }),
                ),

                // Container(
                //   padding: const EdgeInsets.all(20),
                //   decoration: BoxDecoration(
                //     color: gray04,
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Row(
                //             children: [
                //               Image.asset('assets/icons/camera.png'),
                //               const SizedBox(
                //                 width: 8,
                //               ),
                //               Text(
                //                 'Story Video',
                //                 style: Theme.of(context).textTheme.titleMedium,
                //               ),
                //             ],
                //           ),
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.end,
                //             children: [
                //               Text(
                //                 '\$30',
                //                 style: Theme.of(context).textTheme.titleMedium,
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //       const SizedBox(
                //         height: 20,
                //       ),
                //       Text(
                //         'To make a video of backstage of making a coffee.',
                //         style: Theme.of(context).textTheme.titleSmall,
                //       ),
                //       const SizedBox(
                //         height: 20,
                //       ),
                //       SubmitButton(
                //         text: 'Take a part',
                //         color: gray03,
                //         onTap: () {},
                //       )
                //     ],
                //   ),
                // ),
                const StroryVideoCard(
                  isButtontrue: true,
                ),
                const SizedBox(
                  height: 20,
                ),

                //  const UploadContent(),
              ],
            ),
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
