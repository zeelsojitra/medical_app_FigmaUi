import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/commen_weigets/Commen_textfiled.dart';
import 'package:medical_app/commen_weigets/commen_text.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List detils = [
    {
      'time': '12',
      'day': 'Tue',
      'time1': '9:30',
      'Name': 'Dr. Min Akhter',
      'problem': 'Depration',
    },
    {
      'time': '13',
      'day': 'Wed',
      'time1': '10:30',
      'Name': 'Dr. Zim Akhter',
      'problem': 'Fever',
    },
  ];

  List image = [
    "assert/image/img_3.png",
    "assert/image/img_4.png",
    "assert/image/img_5.png",
    "assert/image/img_6.png",
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Commen_text(
                        color: Colors.black,
                        size: 18,
                        text: "👋 Hello!",
                        weight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Commen_text(
                        color: Colors.black,
                        size: 30,
                        text: "John doe",
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Spacer(),
                  Center(
                    child: Image.asset(
                      'assert/image/img.png',
                      height: height * 0.1,
                      width: width * 0.15,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Commen_TextFiled(
                picon: Icon(
                  Icons.search,
                  size: 27,
                ),
                sicon: Icon(
                  Icons.tune,
                  size: 25,
                ),
                filedcolor: Color(0xffEEF6FC),
                hintText: "Search Medical",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Commen_text(
                text: "Services",
                size: 20,
                weight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  image.length,
                  (index) => Center(
                        child: Image.asset(
                          image[index],
                          height: height * 0.06,
                          width: width * 0.22,
                        ),
                      )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 15),
              child: Container(
                height: height * 0.22,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffDCEDF9),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Commen_text(
                            size: 25,
                            weight: FontWeight.bold,
                            color: Colors.black,
                            text: 'Get the Best\nMedical Service ',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Commen_text(
                            size: 16,
                            weight: FontWeight.w500,
                            color: Colors.grey,
                            text:
                                'Lorem Ipsum is simply dummy\ntext of the printing ',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Center(
                          child: Image.asset(
                            'assert/image/img_2.png',
                            height: height * 0.22,
                            width: width * 0.3,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Commen_text(
                size: 25,
                weight: FontWeight.bold,
                color: Colors.black,
                text: 'Upcoming Appointments',
              ),
            ),
            SizedBox(
              height: height * 0.17,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        color:
                            index == 0 ? Color(0xff1C6BA4) : Color(0xffEAC117),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 14),
                                height: height * 0.14,
                                width: width * 0.21,
                                decoration: BoxDecoration(
                                  color: Color(0xff24FFFFFF),
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Commen_text(
                                      text: detils[index]['time'],
                                      size: 30,
                                      color: Colors.white,
                                      weight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Commen_text(
                                      text: detils[index]['day'],
                                      size: 20,
                                      weight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: 155,
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ),
                                Commen_text(
                                  text: detils[index]['time1'],
                                  size: 18,
                                  weight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Commen_text(
                                  text: detils[index]['Name'],
                                  size: 25,
                                  weight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Commen_text(
                                  text: detils[index]['problem'],
                                  size: 18,
                                  weight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
