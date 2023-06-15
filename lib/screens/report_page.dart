import 'package:flutter/material.dart';
import 'package:medical_app/commen_weigets/commen_text.dart';

class Report_page extends StatefulWidget {
  const Report_page({Key? key}) : super(key: key);

  @override
  State<Report_page> createState() => _Report_pageState();
}

class _Report_pageState extends State<Report_page> {
  @override
  Widget build(BuildContext context) {
    List bloodgroup = [
      {
        "name": "Blood Group",
        "group": "A+",
        "icon": "assert/image/img_12.png",
      },
      {
        "name": "Weight",
        "group": "80 Kg",
        "icon": "assert/image/img_11.png",
      },
    ];
    List report = [
      {
        'imag': "assert/image/img_14.png",
        'name': "General Health",
        'subtitle': "8 files",
      },
      {
        'imag': "assert/image/img_15.png",
        'name': "General Health",
        'subtitle': "8 files",
      },
    ];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Commen_text(
                  text: "Report",
                  color: Colors.black,
                  size: 30,
                  weight: FontWeight.bold,
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                  size: 25,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Container(
              height: height * 0.2,
              width: width,
              decoration: BoxDecoration(
                color: Color(0xffDCEDF9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assert/image/img_10.png',
                      width: width * 0.32,
                      height: height * 0.5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.17,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 20),
                  height: height * 0.15,
                  width: width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: index == 0 ? Color(0xffF5E1E9) : Color(0xffFAF0DB),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Center(
                                  child: Image.asset(
                                    bloodgroup[index]['icon'],
                                    height: height * 0.04,
                                    width: width * 0.095,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.more_horiz,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Commen_text(
                                  text: bloodgroup[index]['name'],
                                  size: 18,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Commen_text(
                                  text: bloodgroup[index]['group'],
                                  size: 30,
                                  weight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Commen_text(
              text: 'Lattest Report',
              size: 24,
              color: Colors.black,
              weight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: height * 0.2,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    report[index]['imag'],
                  ),
                  title: Commen_text(
                    text: report[index]['name'],
                    color: Colors.black,
                    weight: FontWeight.bold,
                    size: 21,
                  ),
                  subtitle: Commen_text(
                    text: report[index]['subtitle'],
                    color: Colors.black,
                    weight: FontWeight.w400,
                    size: 18,
                  ),
                  trailing: Icon(Icons.more_vert),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
