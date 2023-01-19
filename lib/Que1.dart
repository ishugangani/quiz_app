import 'package:flutter/material.dart';
import 'package:quiz_app/HomePage.dart';
import 'package:quiz_app/Lose.dart';
import 'package:quiz_app/Win.dart';

class Ques1 extends StatefulWidget {
  const Ques1({Key? key}) : super(key: key);

  @override
  State<Ques1> createState() => _Ques1State();
}

class _Ques1State extends State<Ques1> {

  List QueList = [
    "Q1. The International Literacy Day is observed on?",
    "Q2. Which was the first Indian movie nominated for Oscar?",
    "Q3. Which actor has won the most national awards in India?",
    "Q4. Who designed the Indian Parliament in New Delhi?",
    "Q5. Which monument was built by Mohammed Quli Qutab Shah in 1591 to commemorate the end of Plague?",
    "Q6. What was the code name of the first nuclear tests conducted by India in on 18 May 1974, in Pokhran, Rajasthan?",
    "Q7. India won its first Olympic hockey gold in?",
    "Q8. Which was the first University in India after independence?",
    "Q9. Who was the first Minister of Education who have been awarded with Bharat Ratna Award?",
    "Q10. Which state in India share only one border with Indian state",
  ];
  List AnsList = [
    "A",
    "C",
    "D",
    "C",
    "B",
    "C",
    "B",
    "A",
    "D",
    "D",
  ];
  List UserAnsList = [];
  List Option1 = [
    "A. Sep 8",
    "A. Salaam Bombay",
    "A. Salman Khan",
    "A. Le Corbusier",
    "A. Toli Masjid",
    "A. Operation Vijay",
    "A. 1930",
    "A. University of Calcutta",
    "A. Morarji Desai",
    "A. Goa",
  ];
  List Option2 = [
    "B. Nov 28",
    "B. Lagaan",
    "B. Akshay Kumar",
    "B. Gustave Eiffel",
    "B. Charminar",
    "B. Operation Shakti",
    "B. 1928",
    "B. Delhi University",
    "B. Zakir Hussain",
    "B. Punjab",
  ];
  List Option3 = [
    "C. May 2",
    "C. Mother India",
    "C. Amitabh Bachchan",
    "C. Edwin Landseer Lutyens",
    "C. Mecca Masjid",
    "C. Smiling Buddha",
    "C. 1932",
    "C. Madras University",
    "C. JP Narayan",
    "C. Nagaland",
  ];
  List Option4 = [
    "D. Sep 22",
    "D. Slumdog Millionaire",
    "D. Shah Rukh Khan",
    "D. Bonanno Pisano",
    "D. Jama Masjid",
    "D. Operation Ashwamedh",
    "D. 1927",
    "D. Banaras Hindu University",
    "D. Abul Kalam Azad",
    "D. Sikkim",
  ];

  int i=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF753422),
          leading: Icon(Icons.menu),
          title: Text("KBC Quiz"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.refresh),
            ),
          ],
        ),
        body: Container(
          color: Color(0xFFD79771),
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFFEBC9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      "${QueList[i]}",
                      style: TextStyle(
                        color: Color(0xFF753422),
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap:() {
                        setState(() {
                          UserAnsList.add("${AnsList[i]}");
                          if (UserAnsList[i] == AnsList[i]) {
                            Navigator.pushNamed(context, 'win');
                            i++;
                            if(i==10)
                            {
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'lose');
                            i=0;
                            UserAnsList.clear();
                          }
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF753422),width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "${Option1[i]}",
                            style: TextStyle(
                              color: Color(0xFFB05B3B),
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap:() {
                        setState(() {
                          UserAnsList.add("${AnsList[i]}");
                          if (UserAnsList[i] == AnsList[i]) {
                            Navigator.pushNamed(context, 'win');
                            i++;
                            if(i==10)
                            {
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'lose');
                            i=0;
                            UserAnsList.clear();
                          }
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF753422),width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "${Option2[i]}",
                            style: TextStyle(
                              color: Color(0xFFB05B3B),
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap:() {
                        setState(() {
                          UserAnsList.add("${AnsList[i]}");
                          if (UserAnsList[i] == AnsList[i]) {
                            Navigator.pushNamed(context, 'win');
                            i++;
                            if(i==10)
                            {
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'lose');
                            i=0;
                            UserAnsList.clear();
                          }
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF753422),width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "${Option3[i]}",
                            style: TextStyle(
                              color: Color(0xFFB05B3B),
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap:() {
                        setState(() {
                          UserAnsList.add("${AnsList[i]}");
                          if (UserAnsList[i] == AnsList[i]) {
                            Navigator.pushNamed(context, 'win');
                            i++;
                            if(i==10)
                            {
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'lose');
                            i=0;
                            UserAnsList.clear();
                          }
                        });
                      },
                       child: Container(
                        height: 45,
                        width: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF753422),width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "${Option4[i]}",
                            style: TextStyle(
                              color: Color(0xFFB05B3B),
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}