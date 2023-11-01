import 'package:flutter/material.dart'; //tes


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

final List<String> imgList = [
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
          ),
        ))
    .toList();

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(right: 20.0),
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToIhy4KyY-ALuwCR9Z3_zCTW--fU_3agJjOItWx2hLBA&s'),
                    width: 38,
                    height: 38,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 38, // Set the height of the Icon
                      child: Icon(
                        Icons.percent,
                        size: 38,
                      ),
                    ),
                    Container(
                      width: 38, // Set the width of the Icon
                      height: 38, // Set the height of the Icon
                      child: Icon(
                        Icons.favorite_outline,
                        size: 38,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.red, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Hi, Andhito Galih Nur Cahyo',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5.0),
                          padding: EdgeInsets.all(10.0),
                          width: 150,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Balance',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rp. 10.000.000',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15.0),
                          width: 150,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bonus Balance',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '50.000',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15),),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(
                        Icons.add_card_outlined,
                        size: 25,
                      ),
                      Text("TopUp"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(
                        Icons.money,
                        size: 25,
                      ),
                      Text(
                        "Send Money",
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("Ticket Code"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("See All"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.add_card_outlined),
                      Text("Pulsa"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.money),
                      Text("Electricity"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("BPJS"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("mgames"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.add_card_outlined),
                      Text("Internet"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.money),
                      Text("PDAM"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("Kartu Elektronik",textAlign: TextAlign.center,),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("More"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.add_card_outlined),
                      Text("TopUp"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.money),
                      Text("Send Money"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("Ticket Code"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("See All"),
                    ]),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}