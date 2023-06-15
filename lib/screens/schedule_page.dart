import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/commen_weigets/commen_text.dart';

class Schedule_Page extends StatefulWidget {
  const Schedule_Page({Key? key}) : super(key: key);

  @override
  State<Schedule_Page> createState() => _Schedule_PageState();
}

class _Schedule_PageState extends State<Schedule_Page> {
  int count = -1;
  int selected = -1;
  List schedual = [
    {
      "date": "11",
      "day": "Mon",
    },
    {
      "date": "12",
      "day": "Tue",
    },
    {
      "date": "13",
      "day": "Wen",
    },
    {
      "date": "14",
      "day": "Thu",
    },
    {
      "date": "15",
      "day": "Fri",
    },
    {
      "date": "16",
      "day": "Sat",
    },
    {
      "date": "17",
      "day": "Sun",
    },
  ];
  List container = [
    {
      'img': 'assert/image/img_7.png',
      'time': '12:30 PM',
      'name': 'Dr.Zim Akhter',
      'problem': 'Cardiologist',
    },
    {
      'img': 'assert/image/img_8.png',
      'time': '11:30 PM',
      'name': 'Dr.Shahin Alam',
      'problem': 'Cardiologist',
    },
    {
      'img': 'assert/image/img_9.png',
      'time': '10:30 PM',
      'name': 'Dr.Mim Akhter',
      'problem': 'Cardiologist',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Commen_text(
                  text: "Schedule",
                  color: Colors.black,
                  size: 30,
                  weight: FontWeight.bold,
                ),
                Spacer(),
                Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                  size: 25,
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: schedual.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      count = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                    width: width * 0.22,
                    decoration: BoxDecoration(
                      color: count == index
                          ? Color(0xff1C6BA4)
                          : Color(0xffDCEDF9),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Commen_text(
                          text: schedual[index]['date'],
                          size: 25,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Commen_text(
                          text: schedual[index]['day'],
                          size: 20,
                          color: Colors.black,
                          weight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                    width: width * 0.15,
                    height: height * 0.16,
                    decoration: BoxDecoration(
                      color: selected == index
                          ? Color(0xff1C6BA4)
                          : Color(0xffF1E6EAF7),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Row(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            height: height * 0.07,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(container[index]['img'])),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Commen_text(
                                    text: container[index]['time'],
                                    size: 18,
                                    color: selected == index
                                        ? Colors.white
                                        : Colors.black,
                                    weight: FontWeight.w400,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Commen_text(
                                    text: container[index]['name'],
                                    size: 23,
                                    color: selected == index
                                        ? Colors.white
                                        : Colors.black,
                                    weight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Commen_text(
                                    text: container[index]['problem'],
                                    size: 18,
                                    color: selected == index
                                        ? Colors.white
                                        : Colors.black,
                                    weight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => Row(
                children: [
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
              itemCount: container.length,
            ),
          )
        ],
      ),
    );
  }
}
