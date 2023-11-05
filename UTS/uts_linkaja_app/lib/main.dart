import 'package:flutter/material.dart'; 
import 'package:carousel_slider/carousel_slider.dart';
import 'package:uts_linkaja_app/history.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromARGB(255, 167, 167, 167),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

final List<String> imgList = [
  'https://cdn.linkaja.com/website/posts/March2022/1647938109-Pembayaran%20Resmi%20KP.jpg',
  'https://www.astronauts.id/blog/wp-content/uploads/2022/10/Belanja-Hemat-di-Astro-Pakai-LinkAja-Langsung-Dapat-Cashback-Spesial.jpg',
  'https://cdn.linkaja.com/website/posts/May2022/1653372317-WEB%20BANNER%20794x366%20(50).jpg',
  'https://cdn.linkaja.com/website/posts/March2023/1678099933-HEADER%20ARTICLE%20592X342.jpg',
  'https://cdn.linkaja.com/website/posts/March2022/1648723321-WEB%20BANNER%20794x366%20-%202022-03-31T173852.731.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
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
                      margin: EdgeInsets.only(right: 20, top: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.percent,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Tindakan saat tombol notifikasi ditekan
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 238, 50, 36),
                border: Border.all(color: Color.fromARGB(255, 239, 43, 29), width: 2.0),
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
                                    'Rp. 150.000',
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
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.add_card_rounded,
                        size: 35,
                      ),
                      Text("TopUp"),
                    ]),
                  ),
                  Container(
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.account_balance_wallet_rounded,
                        size: 35,
                      ),
                      Text(
                        "Send Money",
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ),
                  Container(
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.confirmation_number_rounded,
                        size: 35,
                      ),
                      Text("Ticket Code"),
                    ]),
                  ),
                  Container(
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.apps_rounded,
                        size:35,
                      ),
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
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.speaker_phone_sharp,
                        size:35,
                        ),
                      Text("Pulsa/Data"),
                    ]),
                  ),
                  Container(
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.electric_bolt_rounded,
                        size: 35),
                      Text("Electricity"),
                    ]),
                  ),
                  Container(
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.health_and_safety_rounded,
                        size: 35),
                      Text("BPJS"),
                    ]),
                  ),
                  Container(
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.gamepad_rounded,
                        size: 35),
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
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.connected_tv,
                        size: 35),
                      Text("Cable TV & Internet"),
                    ]),
                  ),
                  Container(
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.water_drop,
                        size:35),
                      Text("PDAM"),
                    ]),
                  ),
                  Container(
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.credit_card,
                        size:35),
                      Text("Kartu Uang Elektronik",textAlign: TextAlign.center,),
                    ]),
                  ),
                  Container(
                    width: 90,
                    child: Column(children: [
                      Icon(
                        Icons.more_horiz_rounded,
                        size:35),
                      Text("More"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 100.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  enlargeFactor: 0.2,
                ),
                items: imageSliders,
              ),
            ),
          ]),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: const Icon(Icons.qr_code_2_outlined),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            NavIcon(
              iconData: Icons.home_outlined,
              name: "Home",
              onTap: () {},
            ),
            NavIcon(
              iconData: Icons.history,
              name: "History",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => History(),
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      "Pay",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            NavIcon(
              iconData: Icons.inbox_outlined,
              name: "Inbox",
            ),
            NavIcon(
              iconData: Icons.account_circle_outlined,
              name: "Account",
            ),
          ],
        ),
      ),
    );
  }
}

class NavIcon extends StatelessWidget {
  final IconData iconData;
  final String name;
  final void Function()? onTap;

  const NavIcon({
    super.key,
    required this.iconData,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: Colors.grey,
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
