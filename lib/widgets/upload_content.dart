import 'package:contenter/style/colors.dart';
import 'package:contenter/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadContent extends StatelessWidget {
  const UploadContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 2 * 1.5,
                decoration: BoxDecoration(
                    color: gray04, borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/upload.png'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Reel.mp4',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(fontSize: 14, color: blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 55,
              width: 60,
              decoration: BoxDecoration(
                  color: gray04, borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/delete.png'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 2),
            height: 55,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: gray04, borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/clip.png'),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Upload file',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(fontSize: 14, color: blue),
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          'Max size – 65 MB, Duration – 15 sec',
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(fontSize: 14, color: gray01),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Descroption',
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(fontSize: 14, color: black),
              ),
            ),
            Text(
              '120/300',
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(fontSize: 14, color: black),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          alignment: Alignment.center,
          height: 100,
          decoration: BoxDecoration(
              color: gray04, borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.all(17.0),
          child: Text(
            'I created the video with combining aesthetic looking food and thought of backstage magic',
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.normal, fontSize: 16, color: black),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SubmitButton(
          onTap: () {},
        ),
      ],
    );
  }
}
