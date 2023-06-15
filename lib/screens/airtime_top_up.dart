import 'package:flutter/material.dart';
import 'package:acces_bank_clone/components/custom_button.dart';
import 'package:acces_bank_clone/components/text_input.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController productController = TextEditingController();
  double imgHeight = 100;
  double imgWidth = 90;
  double networkSizedBoxWidth = 10;
  int buttonAirtimeData = 1;
  String networkButton = 'Airtel';
  double selectedAmount = 0;

  printMe() {
    //test function
    //print("Test Working, tesrnnnn");
  }

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 36, 35, 35),
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.white,
        ),
        title: const Text(
          'Mobile Topup',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        // child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: const Color.fromARGB(255, 36, 35, 35),
            child: SizedBox(
              //width: 900,
              //height: 120,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      ' 0048701922',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '  PREMIER SAVINGS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: '  Alt. Number:  ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                        children: <TextSpan>[
                          TextSpan(
                            text: '1175199089      ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '        Account Status: ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: 'Regular',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 8, bottom: 4),
            child: Text(
              'Daily Transaction Limit: \u{20A6} 300, 000',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),

          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: LinearProgressIndicator(
          //     backgroundColor: Colors.grey,
          //     //valueColor: AlwaysStoppedAnimation(Colors.grey),
          //   ),
          // ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(
              color: Colors.grey,
              thickness: 10,
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 4),
            child: Text(
              ' \u{20A6} 0.00 used                                         \u{20A6} 300,000 remaining',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),

          const Padding(
            padding: EdgeInsets.only(left: 8, right: 8, bottom: 2),
            child: Text(
              'Select Network Provider',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(
            height: 100,
            //width: 100,
            child: Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: networkButton == 'Airtel'
                        ? BoxDecoration(
                            border: Border.all(width: 5, color: Colors.green),
                            borderRadius: BorderRadius.circular(10),
                          )
                        : BoxDecoration(
                            border: Border.all(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          networkButton = 'Airtel';
                        });
                      },
                      child: Image.asset(
                        'assets/images/airtel.png',
                        height: imgHeight,
                        width: imgWidth,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: networkSizedBoxWidth,
                  ),
                  Container(
                    decoration: networkButton == '9Mobile'
                        ? BoxDecoration(
                            border: Border.all(width: 5, color: Colors.green),
                            borderRadius: BorderRadius.circular(10),
                          )
                        : BoxDecoration(
                            border: Border.all(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            networkButton = '9Mobile';
                          },
                        );
                      },
                      child: Image.asset(
                        'assets/images/9mobile.jpg',
                        height: imgHeight,
                        width: imgWidth,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: networkSizedBoxWidth,
                  ),
                  Container(
                    decoration: networkButton == 'Mtn'
                        ? BoxDecoration(
                            border: Border.all(width: 5, color: Colors.green),
                            borderRadius: BorderRadius.circular(10),
                          )
                        : BoxDecoration(
                            border: Border.all(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          networkButton = 'Mtn';
                        });
                      },
                      child: Image.asset(
                        'assets/images/mtn.png',
                        height: imgHeight,
                        width: imgWidth,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: networkSizedBoxWidth,
                  ),
                  Container(
                    decoration: networkButton == 'Glo'
                        ? BoxDecoration(
                            border: Border.all(width: 5, color: Colors.green),
                            borderRadius: BorderRadius.circular(10),
                          )
                        : BoxDecoration(
                            border: Border.all(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          networkButton = 'Glo';
                        });
                      },
                      child: Image.asset(
                        'assets/images/glo.jpg',
                        height: imgHeight,
                        width: imgWidth,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),

          //switch buttons
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomizedButton(
                    onPressed: () {
                      setState(() {
                        buttonAirtimeData = 1;
                      });
                    },
                    buttonText: 'Airtime',
                    buttonColor: buttonAirtimeData == 1
                        ? Colors.green
                        : const Color.fromARGB(255, 36, 35, 35),
                    textColor: Colors.white,
                  ),
                ),
                Expanded(
                  child: CustomizedButton(
                    onPressed: () {
                      setState(() {
                        buttonAirtimeData = 2;
                      });
                    },
                    buttonText: 'Data Bundles',
                    buttonColor: buttonAirtimeData == 2
                        ? Colors.green
                        : const Color.fromARGB(255, 36, 35, 35),
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          if (buttonAirtimeData == 2)
            TextInput(
              textEditingController: productController,
              hintText: 'No Product available',
              textInputType: TextInputType.text,
            ),
          if (buttonAirtimeData == 1)
            const Padding(
              padding: EdgeInsets.only(left: 8, right: 8.0, top: 8),
              child: Text(
                "Select Amount",
                style: TextStyle(color: Colors.white),
              ),
            ),
          if (buttonAirtimeData == 1)
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomizedButton(
                      buttonText: '\u{20A6}100.00',
                      buttonColor: const Color.fromARGB(255, 36, 35, 35),
                      textColor: Colors.green,
                      onPressed: () {
                        setState(() {
                          amountController.text = '200.00';
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomizedButton(
                      buttonText: '\u{20A6}500.00',
                      buttonColor: const Color.fromARGB(255, 36, 35, 35),
                      textColor: Colors.green,
                      onPressed: () {
                        setState(() {
                          amountController.text = '500.00';
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          if (buttonAirtimeData == 1)
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomizedButton(
                      buttonText: '\u{20A6}1,000.00',
                      buttonColor: const Color.fromARGB(255, 36, 35, 35),
                      textColor: Colors.green,
                      onPressed: () {
                        setState(() {
                          amountController.text = '1000.00';
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomizedButton(
                      buttonText: '\u{20A6}2,000.00',
                      buttonColor: const Color.fromARGB(255, 36, 35, 35),
                      textColor: Colors.green,
                      onPressed: () {
                        setState(() {
                          amountController.text = '2000.00';
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8, bottom: 4),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Find Beneficiary',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
          ),

          TextInput(
            textEditingController: phoneController,
            hintText: 'Mobile Number',
            suffixIcon: const Icon(
              Icons.contact_phone,
              color: Colors.green,
            ),
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 14,
          ),

          TextInput(
            textEditingController: amountController,
            hintText: '\u{20A6} Amount',
            textInputType: TextInputType.text,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, bottom: 0, top: 4),
            child: RichText(
              text: const TextSpan(
                  text: 'Maximum Amount: ',
                  children: <TextSpan>[
                    TextSpan(
                        text: '\u{20A6} 10,000.00',
                        style: TextStyle(color: Colors.green))
                  ]),
            ),
          ),
          CustomizedButton(
            buttonText: 'PROCEED',
            buttonColor: Colors.orange,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
      // ),
    );
  }
}
