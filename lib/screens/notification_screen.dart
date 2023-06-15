import 'package:flutter/material.dart';
import 'package:medical_app/commen_weigets/commen_text.dart';

class Notification_Screen extends StatefulWidget {
  const Notification_Screen({Key? key}) : super(key: key);

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    List notification = [
      {
        'img': "assert/image/img_16.png",
        'name': "14 Message",
        'subtitle': "Check your schedule Today",
      },
      {
        'img': "assert/image/img_17.png",
        'name': "3 Schedules!",
        'subtitle': "Check your schedule Today",
      },
      {
        'img': "assert/image/img_18.png",
        'name': "Medicine",
        'subtitle': "Check your schedule Today",
      },
      {
        'img': "assert/image/img_19.png",
        'name': "Vaccine Update",
        'subtitle': "Check your schedule Today",
      },
      {
        'img': "assert/image/img_20.png",
        'name': "App Update",
        'subtitle': "Check your schedule Today",
      },
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Commen_text(
              text: "Notifications",
              size: 27,
              weight: FontWeight.bold,
              color: Colors.black,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 25),
                    height: height * 0.12,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 0.2,
                          spreadRadius: 0.2,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          height: height * 0.06,
                          width: width * 0.15,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? Colors.red.shade100
                                : index == 1
                                    ? Color(0xffBECADA)
                                    : index == 2
                                        ? Color(0xffFAF0DB)
                                        : index == 3
                                            ? Color(0xffBECADA)
                                            : Color(0xffF2E3E9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.asset(
                              notification[index]['img'],
                              height: height * 0.1,
                              width: width * 0.08,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Commen_text(
                                text: notification[index]['name'],
                                color: Colors.black,
                                weight: FontWeight.w500,
                                size: 22,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Commen_text(
                                text: notification[index]['subtitle'],
                                color: Colors.grey,
                                weight: FontWeight.bold,
                                size: 15,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
