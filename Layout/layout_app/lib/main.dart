import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 244, 0, 0),
            title: Text("MyApp"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Berita',
                ),
                Tab(
                  text: 'Pertandingan Hari ini',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                width: 200.0,
                height: 300.0,
                child: Column(
                  children: [
                    Image.network(
                      'https://akcdn.detik.net.id/visual/2023/09/12/timnas-indonesia-menang-atas-turkmenistan-1_169.jpeg?w=400&q=90',
                      fit: BoxFit.cover, // Mengatur tampilan gambar
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'Timnas Melaju ke Round 2 Kualifikasi Piala Dunia', // Teks di bawah gambar
                        style: TextStyle(
                          fontSize: 16.0, // Ukuran teks
                          fontWeight: FontWeight.bold, // Ketebalan teks
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 179, 0, 202),
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      margin: EdgeInsets.only(top: 5, bottom: 20),
                      child: Text(
                        'Transfer',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5, // Ganti dengan jumlah item yang sesuai
                        itemBuilder: (context, index) {
                          final itemImage =
                              'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/13/2023/08/31/Jude-Bellingham-gelandang-serang-real-madrid-2070324469.jpg';
                          final itemTitle =
                              'Bellingham Pahlawan Real Madrid di El calsico';
                          final itemDate = '30-10-2023';
                          return ListTile(
                            leading: Image.network(
                              itemImage,
                              // Atur lebar gambar sesuai keinginan
                              width: 100,
                              fit: BoxFit.cover, // Mengatur tampilan gambar
                            ),
                            title: Text(
                              itemTitle,
                              style: TextStyle(
                                fontSize:
                                    12.0, // Atur ukuran font sesuai keinginan
                              ),
                            ),
                            subtitle: Text(
                              itemDate,
                              style: TextStyle(
                                fontSize:
                                    12.0, // Atur ukuran font sesuai keinginan
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text('Konten Pertandingan Hari ini'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}