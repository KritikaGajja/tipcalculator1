import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _perpersonAmt=0.0;
  var _totalAmt = 0.0;
  var _tip = 0.0;
  var totalPerson = 1;
  var amtController = TextEditingController();
  bool isvisible=false;
  var customTipController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('tip calculator'),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white70,
            child: Column(


                // crossAxisAlignment: CrossAxisAlignment.center ,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/hat.png',
                        width: 100,
                        height: 100,
                      ),
                      Column(
                        children: [
                          RichText(
                              text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'Mr ',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black)),
                            TextSpan(
                                text: 'TIP',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black)),
                          ])),
                          Text(
                            'Calculator',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Container(
                      width: 300,
                      height: 160,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          RichText(
                              text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'Total ',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 20)),
                            TextSpan(
                                text: '\u{20B9}/person',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 20)),
                          ])),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '\u{20B9} $_perpersonAmt',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 0.5,
                            width: 250,
                            color: Colors.black,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 32,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Total Bill'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  RichText(
                                      text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: '\u{20B9} ',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.cyan,
                                            fontWeight: FontWeight.w900)),
                                    TextSpan(
                                        text: '$_totalAmt',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.cyan,
                                            fontWeight: FontWeight.w900))
                                  ]))
                                ],
                              ),
                              SizedBox(width: 120),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Total tip'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  RichText(
                                      text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: '\u{20B9} ',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.cyan,
                                            fontWeight: FontWeight.w900)),
                                    TextSpan(
                                        text: '$_tip',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.cyan,
                                            fontWeight: FontWeight.w900))
                                  ])),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            'Enter',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black),
                          ),
                          Text('your bill',
                              style: TextStyle(fontSize: 20, color: Colors.grey)),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 21),
                        child: TextField(
                          controller: amtController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                FontAwesomeIcons.indianRupeeSign,
                                color: Colors.black,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            'Choose',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black),
                          ),
                          Text('your tip',
                              style: TextStyle(fontSize: 20, color: Colors.grey)),
                        ],
                      ),
                      Column(children: [
                        SizedBox(
                          height: 50,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 25,
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () {
                                  //10%
                                  updateUI(0.1);
                                },
                                child: RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: '10',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: '%',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold))
                                  ]),
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () {
                                  //15%
                                  updateUI(0.15);
                                },
                                child: RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: '15',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: '%',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold))
                                  ]),
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () {
                                  //20%
                                  updateUI(0.2);
                                },
                                child: RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: '20',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: '%',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold))
                                  ]),
                                )),
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Visibility(child: TextField(
                          controller: customTipController,
                        ),visible: isvisible,)  ,
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                              width: 235,
                              height: 40,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if(isvisible){
                                      var tipPercent=int.parse(customTipController.text.toString());
                                      updateUI(tipPercent/100);
                                    }else {
                                      isvisible = true;
                                      setState(() {


                                      });
                                    }
                                  },
                                  child: Text(
                                    'Custom tip',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20),
                                  ))),
                        )
                      ])
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            'Split',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black),
                          ),
                          Text('the total',
                              style: TextStyle(fontSize: 20, color: Colors.grey)),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(
                          child: Container(
                        width: 290,
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Row(
                            children: [
                             /* Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(11),
                                      bottomLeft: Radius.circular(11)),
                                  color: Colors.cyan,
                                ),
                                height: 40,
                                width: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('-',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '0',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(11),
                                      bottomRight: Radius.circular(11)),
                                  color: Colors.cyan,
                                ),
                                height: 40,
                                width: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('+',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                        color:Colors.white)),
                                  ],
                                ),
                              )*/

                              ElevatedButton(onPressed: (){
                                if(totalPerson>1){
                                  totalPerson--;
                                  _perpersonAmt=_totalAmt/totalPerson;
                                  setState((){

                                  });

                                }

                              }, child: Text('-',style: TextStyle(fontSize: 21),)),
                              Expanded(child: Center(child: Text('$totalPerson',style: TextStyle(fontSize: 21),))),
                              ElevatedButton(onPressed: (){
                             totalPerson++;
                             _perpersonAmt=_totalAmt/totalPerson;
                                  setState((){

                                  });
                              }, child: Text('+',style: TextStyle(fontSize: 21),)),
                            ],
                          ),

                        ),
                      ))
                    ],
                  ),
                ]),
          ),
        ));


  }

  void updateUI(double tip_percent){
    var amt=int.parse(amtController.text.toString());
    var tipAmt=amt*tip_percent;
    var totalAMT=amt+tipAmt;

    _totalAmt=totalAMT;
    _tip=tipAmt;
    _perpersonAmt=_totalAmt/totalPerson;

    setState((){});


  }
}
