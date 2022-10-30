import 'package:contenter/data_structs/profile.dart';
import 'package:contenter/main.dart';
import 'package:contenter/style/colors.dart';
import 'package:contenter/style/fonts.dart';
import 'package:contenter/widgets/appBarHeader.dart';
import 'package:contenter/widgets/story_video_card.dart';
import 'package:contenter/widgets/upload_content.dart';
import 'package:flutter/material.dart';

class TakePartPage extends StatefulWidget {
  const TakePartPage({super.key});

  @override
  State<StatefulWidget> createState() => _TakePartPageState();
}

class _TakePartPageState extends State<TakePartPage> {
  final profile = ProfileData();

  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

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
                      onPressed: () {},
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
                const StroryVideoCard(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Reply to request',
                    style: footerLarge,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const UploadContent(),
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
