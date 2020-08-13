import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
    initialRoute: '/',
    routes: {
      '/politik': (context) => PolitikScreen(),
      '/pendidikan': (context) => PendidikanScreen(),
      '/olahraga': (context) => OlahragaScreen(),
      '/teknologi': (context) => TeknologiScreen(),
      '/kesehatan': (context) => KesehatanScreen(),
      '/tentang kami': (context) => AbouthusScreen(),
      '/beritapolitik1': (context) => BeritaPolitik1(),
      '/beritapolitik2': (context) => BeritaPolitik2(),
      '/beritapolitik3': (context) => BeritaPolitik3(),
      '/beritapolitik4': (context) => BeritaPolitik4(),
      '/beritapolitik5': (context) => BeritaPolitik5(),
      '/beritapendidikan1': (context) => BeritaPendidikan1(),
      '/beritapendidikan2': (context) => BeritaPendidikan2(),
      '/beritapendidikan3': (context) => BeritaPendidikan3(),
      '/beritapendidikan4': (context) => BeritaPendidikan4(),
      '/beritapendidikan5': (context) => BeritaPendidikan5(),
      '/beritaolahraga1': (context) => BeritaOlahraga1(),
      '/beritaolahraga2': (context) => BeritaOlahraga2(),
      '/beritaolahraga3': (context) => BeritaOlahraga3(),
      '/beritaolahraga4': (context) => BeritaOlahraga4(),
      '/beritaolahraga5': (context) => BeritaOlahraga5(),
      '/beritateknologi1': (context) => BeritaTeknologi1(),
      '/beritateknologi2': (context) => BeritaTeknologi2(),
      '/beritateknologi3': (context) => BeritaTeknologi3(),
      '/beritateknologi4': (context) => BeritaTeknologi4(),
      '/beritateknologi5': (context) => BeritaTeknologi5(),
      '/beritakesehatan1': (context) => BeritaKesehatan1(),
      '/beritakesehatan2': (context) => BeritaKesehatan2(),
      '/beritakesehatan3': (context) => BeritaKesehatan3(),
      '/beritakesehatan4': (context) => BeritaKesehatan4(),
      '/beritakesehatan5': (context) => BeritaKesehatan5(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("DKIJDI: Don't Know I Just Do It"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue[100],
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text(
                "Gusti Nala Fajar",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              accountEmail: new Text("Thefajaris0853@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://em.wattpad.com/fe3d216c75a476aa332c79cf6a393a07d7ad4047/687474703a2f2f69322e6b796d2d63646e2e636f6d2f70686f746f732f696d616765732f6f726967696e616c2f3030302f3634362f3731392f3736632e706e67?s=fit&h=759&w=1545&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profil"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Ubah Password"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Tentang"),
              onTap: () {
                Navigator.pushNamed(context, '/tentang kami');
              },
            ),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Keluar"),
                onTap: () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                }),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            IconMenu(
              title: "Politik",
              icon: Icons.account_balance,
              warna: Colors.brown,
              halaman: '/politik',
            ),
            IconMenu(
              title: "Pendidikan",
              icon: Icons.school,
              warna: Colors.orange,
              halaman: '/pendidikan',
            ),
            IconMenu(
              title: "Olahraga",
              icon: Icons.directions_run,
              warna: Colors.blue,
              halaman: '/olahraga',
            ),
            IconMenu(
              title: "Teknologi",
              icon: Icons.videogame_asset,
              warna: Colors.green,
              halaman: '/teknologi',
            ),
            IconMenu(
              title: "Kesehatan",
              icon: Icons.local_hospital,
              warna: Colors.red,
              halaman: '/kesehatan',
            ),
            IconMenu(
              title: "About us",
              icon: Icons.contacts,
              warna: Colors.blue,
              halaman: '/tentang kami',
            ),
          ],
        ),
      ),
    );
  }
}

class IconMenu extends StatelessWidget {
  IconMenu({this.title, this.icon, this.warna, this.halaman});
  final String title;
  final IconData icon;
  final MaterialColor warna;
  final String halaman;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, halaman);
        },
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}

class PolitikScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Politik"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://nasional.kompas.com/read/2020/08/07/08253531/urgensi-ruu-pks-untuk-segera-disahkan-dpr';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritapolitik1');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://asset.kompas.com/crops/tIWfo6zW53_pC8xHv7Ej3jQzU2o=/0x0:993x662/750x500/data/photo/2020/07/08/5f058f9c912a9.jpg",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Urgensi RUU PKS untuk Segera Disahkan DPR...",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://nasional.kompas.com/read/2020/07/27/10170991/peristiwa-kudatuli-27-juli-1996-saat-megawati-melawan-tetapi-berakhir-diam';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritapolitik2');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://asset.kompas.com/crops/Z2VTXhOEkaEJ7_0ERVfjNtuBvpI=/0x0:779x519/750x500/data/photo/2019/07/26/5d3ad00a9938f.jpg",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Artikel ini telah tayang di Kompas.com dengan judul Peristiwa Kudatuli 27 Juli 1996, Saat Megawati Melawan tetapi Berakhir Diam...",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://megapolitan.kompas.com/read/2020/08/09/18281561/tolak-mengungsi-ke-pulau-saat-aksi-411-ahok-lebih-baik-saya-mati-di-rumah';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritapolitik3');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://asset.kompas.com/crops/HYju4JlZtANfYj_-Xo4UyRugJEk=/68x0:932x576/750x500/data/photo/2019/07/05/2468978265.jpeg",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Tolak Mengungsi ke Pulau Saat Aksi 411, Ahok: Lebih Baik Saya Mati di Rumah",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://regional.kompas.com/read/2020/08/09/17431311/kasus-fetish-kain-jarik-polisi-pengakuan-tersangka-ada-25-korban';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritapolitik4');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://asset.kompas.com/crops/M2IEJAYyfxA9mUqfjoRdOrdfAUE=/0x0:0x0/750x500/data/photo/2020/08/08/5f2e5549bdc4d.jpg",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Kasus Fetish Kain Jarik, Polisi: Pengakuan Tersangka Ada 25 Korban",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://regional.kompas.com/read/2020/08/09/12485791/guru-silat-setubuhi-muridnya-berulang-kali-terungkap-setelah-hamil-7-bulan';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritapolitik5');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://asset.kompas.com/crops/35dvWeLvcY0u0Yy4sH3UnHA5BbE=/76x0:661x390/750x500/data/photo/2013/07/24/13175821-MG-4311-copy84780x390.jpg",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Guru Silat Setubuhi Muridnya Berulang Kali, Terungkap Setelah Hamil 7 Bulan",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.brown,
    );
  }
}

class PendidikanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Pendidikan"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://www.kompas.com/edu/read/2020/08/08/145237571/wifi-desa-praktik-baik-gotong-royong-pendidikan-di-tengah-pandemi-dari-riau';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritapendidikan1');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://asset.kompas.com/crops/fNK6zedaSfXNggBGO8K6hy59StY=/49x0:937x592/490x326/data/photo/2020/08/08/5f2e56af85de3.jpeg",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "'Wifi Desa', Praktik Baik Gotong Royong Pendidikan di Tengah Pandemi dari Riau",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://edukasi.kompas.com/read/2020/08/05/115926871/seperti-ini-upaya-kemendikbud-dalam-pemerataan-pendidikan';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritapendidikan2');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://asset.kompas.com/crops/fbZjnjztXUsNjOagNJ-j4ej2Hzo=/31x0:616x390/230x153/data/photo/2015/09/05/1301079Pendidikan-Nasional780x390.jpg",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Seperti Ini Upaya Kemendikbud dalam Pemerataan Pendidikan",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://megapolitan.kompas.com/read/2020/08/05/09330311/dewan-pendidikan-kota-bekasi-imbau-warga-berbagi-wifi-agar-siswa-bisa';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritapendidikan3');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://asset.kompas.com/crops/bY2lcGOPQTH8OGHMilwTErJREqI=/0x0:0x0/230x153/data/photo/2020/07/30/5f22bbd39afe4.jpg",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Dewan Pendidikan Kota Bekasi Imbau Warga Berbagi Wifi agar Siswa Bisa Belajar Online",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://nasional.kompas.com/read/2020/08/05/19535311/mensos-minta-poltekesos-bandung-jadi-pelopor-instansi-pendidikan-green';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritapendidikan4');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://asset.kompas.com/crops/RNQIz1hSVrvlT45bB4dXcV1peCY=/5x0:1269x842/230x153/data/photo/2020/08/05/5f2aa758806ee.jpg",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Mensos Minta Poltekesos Bandung Jadi Pelopor Instansi Pendidikan Green Social Work",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://www.kompas.com/global/read/2020/08/01/151352470/kisah-seorang-veteran-perang-dunia-ii-yang-selesaikan-pendidikan-di-usia';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritapendidikan5');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://asset.kompas.com/crops/lpyq6AS9JoPWMjBn5djIXGgK_Tc=/0x0:5472x3648/230x153/data/photo/2020/08/01/5f2522389753a.jpg",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Kisah Seorang Veteran Perang Dunia II yang Selesaikan Pendidikan di Usia 96 Tahun",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange,
    );
  }
}

class OlahragaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Olahraga"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://sport.detik.com/moto-gp/d-5126042/link-live-streaming-motogp-ceko-saksikan-di-sini';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritaolahraga1');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://akcdn.detik.net.id/community/media/visual/2020/08/09/1166069052_169.jpeg?w=700&q=80",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Link Live Streaming MotoGP Ceko Saksikan di Sini",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://sport.detik.com/sepakbola/uefa/d-5126252/kiper-mu-ini-anggap-liga-europa-seperti-vida-o-muerte';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritaolahraga2');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://sport.detik.com/sepakbola/uefa/d-5126252/kiper-mu-ini-anggap-liga-europa-seperti-vida-o-muerte",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Kiper MU Ini Anggap Liga Europa Seperti Vida O Muerte",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://sport.detik.com/sepakbola/uefa/d-5126249/disebut-berselisih-dengan-messi-manolas-marah-besar';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritaolahraga3');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://akcdn.detik.net.id/community/media/visual/2020/08/09/kostas-manolas_169.jpeg?w=700&q=80",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Disebut Berselisih dengan Messi, Manolas Marah Besar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://sport.detik.com/sepakbola/uefa/d-5126253/aksi-robert-lewandowski-bikin-tammy-abraham-kagum';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritaolahraga4');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://akcdn.detik.net.id/community/media/visual/2020/08/09/robert-lewandowski-2_169.jpeg?w=700&q=80",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Aksi Robert Lewandowski Bikin Tammy Abraham Kagum",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () async {
                            const url =
                                'https://sport.detik.com/sepakbola/liga-indonesia/d-5126241/jadwal-bali-united-di-piala-afc-2020';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text('go to Link'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/beritaolahraga5');
                          },
                          child: const Text('Detail'),
                        ),
                      ],
                    );
                  });
            },
            child: Card(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://akcdn.detik.net.id/community/media/visual/2020/04/28/af9a85dc-82b9-4857-b0ce-9d34eed8598a_169.jpeg?w=700&q=80",
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Jadwal Bali United di Piala AFC 2020",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
    );
  }
}

class TeknologiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Berita Teknologi"),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Select assignment'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              const url =
                                  'https://tekno.kompas.com/read/2020/08/09/07000057/inilah-daftar-ponsel-android-terkencang-juli-2020-versi-antutu';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text('go to Link'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/beritateknologi1');
                            },
                            child: const Text('Detail'),
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://asset.kompas.com/crops/HLmap8XSSQfxUZ84XQlzoyZrSb4=/33x0:1095x708/750x500/data/photo/2020/02/07/5e3cc9fd2829e.jpg",
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Inilah Daftar Ponsel Android Terkencang Juli 2020 Versi AnTuTu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Select assignment'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              const url =
                                  'https://tekno.kompas.com/read/2020/08/09/19030027/galaxy-note-20-ultra-punya-layar-120-hz-ini-fungsinya';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text('go to Link'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/beritateknologi2');
                            },
                            child: const Text('Detail'),
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://asset.kompas.com/crops/-F7-l5TDJhN5Fxh0LoL0_b0swfE=/188x358:1788x1424/750x500/data/photo/2020/08/05/5f2ac1c9e7b0b.jpg",
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Galaxy Note 20 Ultra Punya Layar 120 Hz, Ini Fungsinya",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Select assignment'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              const url =
                                  'https://tekno.kompas.com/read/2020/08/09/17040037/karyawan-facebook-boleh-wfh-hingga-juli-2021-dan-dapat-tunjangan-alat-kerja';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text('go to Link'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/beritateknologi3');
                            },
                            child: const Text('Detail'),
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://asset.kompas.com/crops/ihe6IUZFIcULFMxGeO_Q2dZls_A=/0x0:1000x667/750x500/data/photo/2017/12/01/480266309.jpg",
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Karyawan Facebook Boleh WFH hingga Juli 2021 dan Dapat Tunjangan Alat Kerja",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Select assignment'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              const url =
                                  'https://tekno.kompas.com/read/2020/08/09/14505347/beda-samsung-galaxy-note-20-dan-note-20-ultra-dari-desain-hingga-spesifikasi';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text('go to Link'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/beritateknologi4');
                            },
                            child: const Text('Detail'),
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://asset.kompas.com/crops/-F7-l5TDJhN5Fxh0LoL0_b0swfE=/188x358:1788x1424/750x500/data/photo/2020/08/05/5f2ac1c9e7b0b.jpg",
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Beda Samsung Galaxy Note 20 dan Note 20 Ultra, dari Desain hingga Spesifikasi",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Select assignment'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              const url =
                                  'https://tekno.kompas.com/read/2020/08/09/10080037/samsung-hadirkan-xbox-game-pass-di-galaxy-note-20';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text('go to Link'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/beritateknologi5');
                            },
                            child: const Text('Detail'),
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://asset.kompas.com/crops/y-usXk_X_C9D__TKRhWkuPHM4I0=/109x168:909x701/750x500/data/photo/2020/08/05/5f2ac4ee54739.jpg",
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Samsung Hadirkan Xbox Game Pass di Galaxy Note 20",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green);
  }
}

class KesehatanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Berita Kesehatan"),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Select assignment'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              const url =
                                  'https://www.cnbcindonesia.com/news/20200809115004-4-178481/penyakit-gegara-virus-tick-borne-china-mirip-covid-19';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text('go to Link'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/beritakesehatan1');
                            },
                            child: const Text('Detail'),
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://awsimages.detik.net.id/visual/2020/08/08/infografis-tick-borne-wabah-virus-baru-dari-china_169.jpeg?w=715&q=90",
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Penyakit Gegara Virus Tick-Borne China Mirip Covid-19?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Select assignment'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              const url =
                                  'https://health.kompas.com/read/2020/08/08/121102768/10-penyebab-berat-badan-susah-turun-padahal-sudah-diet';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text('go to Link'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/beritakesehatan2');
                            },
                            child: const Text('Detail'),
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://asset.kompas.com/crops/WFzVPaZp42cswgoLoQNw3RCZCkI=/201x3:980x522/750x500/data/photo/2019/06/20/717966506.jpg",
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "10 Penyebab Berat Badan Susah Turun padahal Sudah Diet",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Select assignment'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              const url =
                                  'https://health.kompas.com/read/2020/08/09/193700568/makanan-yang-tidak-boleh-dimakan-saat-diet';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text('go to Link'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/beritakesehatan3');
                            },
                            child: const Text('Detail'),
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://asset.kompas.com/crops/-eLwkfAhNWQixjzNAU2AgIAG-JA=/0x0:1000x667/750x500/data/photo/2019/11/16/5dcf65ee68d0f.jpg",
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Makanan yang Tidak Boleh Dimakan saat Diet",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Select assignment'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              const url =
                                  'https://sukabumiupdate.com/detail/life/sehat/67565-Beda-Nyeri-Dada-akibat-Covid-19-Kecemasan-dan-Penyakit-Jantung';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text('go to Link'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/beritakesehatan4');
                            },
                            child: const Text('Detail'),
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://sukabumiupdate.com/uploads/news/images/770x413/-_200409220743-464.jpg",
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Beda Nyeri Dada akibat Covid-19, Kecemasan dan Penyakit Jantung",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Select assignment'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              const url =
                                  'https://www.harapanrakyat.com/2019/04/bahaya-makan-mie-instan-campur-nasi/#:~:text=Bahaya%20makan%20mie%20instan%20dengan%20nasi%20lainnya%20yaitu%20jika%20Anda,juga%20bisa%20menimbulkan%20penyakit%20jantung';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text('go to Link'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/beritakesehatan5');
                            },
                            child: const Text('Detail'),
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://www.harapanrakyat.com/wp-content/uploads/2019/04/bahaya-mie-instan-1.jpeg",
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Kurangi Makan Mie Instan Campur Nasi, Ini Bahayanya!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.red);
  }
}

class AbouthusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang Kami"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Nama : Gusti Nala Fajar",
              ),
              Text(
                "Email : Thefajaris0853@gmail.com",
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back To Main Menu'),
              ),
            ]),
      ),
    );
  }
}

class BeritaPolitik1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Politik 1"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/tIWfo6zW53_pC8xHv7Ej3jQzU2o=/0x0:993x662/750x500/data/photo/2020/07/08/5f058f9c912a9.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Urgensi RUU PKS untuk Segera Disahkan DPR...",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "JAKARTA, KOMPAS.com - Rancangan Undang-Undang Penghapusan Kekerasan Seksual ( RUU PKS) dinilai sangat diperlukan saat ini. Banyak elemen masyarakat yang mendorong agar RUU tersebut segera disahkan DPR. Wakil Ketua Lembaga Perlindungan Saksi dan Korban ( LPSK) Livia Istania DF Iskandar mengungkap beberapa alasan mengapa RUU PKS perlu segera disahkan."),
          ),
        ],
      ),
    );
  }
}

class BeritaPolitik2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Politik 2"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/Z2VTXhOEkaEJ7_0ERVfjNtuBvpI=/0x0:779x519/750x500/data/photo/2019/07/26/5d3ad00a9938f.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Artikel ini telah tayang di Kompas.com dengan judul Peristiwa Kudatuli 27 Juli 1996, Saat Megawati Melawan tetapi Berakhir Diam...",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "JAKARTA, KOMPAS.com - Peristiwa Kerusuhan 27 Juli 1996, atau yang dikenal dengan Kudatuli, menyisakan misteri sekaligus membentuk Megawati Soekarnoputri yang kita kenal saat ini. Hari itu, kantor DPP Partai Demokrasi Indonesia (PDI) diambil alih paksa lewat pertumpahan darah. Suasana di Jalan Diponegoro, Jakarta, begitu mencekam. Peristiwa Kudatuli bahkan disebut sebagai salah satu peristiwa terkelam dalam sejarah demokrasi, terutama terkait dualisme partai politik di Indonesia. Sebelum sampai ke kerusuhan, hampir satu dekade lamanya PDI mengalami konflik internal. Bergabungnya Megawati ke PDI pada 1987 meresahkan banyak pihak, terutama pemerintah Orde Baru yang dipimpin Presiden Soeharto."),
          ),
        ],
      ),
    );
  }
}

class BeritaPolitik3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Politik 3"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/HYju4JlZtANfYj_-Xo4UyRugJEk=/68x0:932x576/750x500/data/photo/2019/07/05/2468978265.jpeg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Tolak Mengungsi ke Pulau Saat Aksi 411, Ahok: Lebih Baik Saya Mati di Rumah",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "JAKARTA, KOMPAS.com - Mantan Gubernur DKI Jakarta Basuki Tjahaja Purnama alias Ahok kembali menceritakan peristiwa pada 4 November 2016 atau dikenal dengan aksi 411 lalu melalui akun Youtube miliknya. Dalam dialog Makna Talks berdurasi 12 menit tersebut, Ahok mengawali ceritanya dengan suasana yang ia rasakan saat aksi massa itu terjadi. Ahok tak secara eksplisit menyebutkan bahwa ia tidak takut dengan peristiwa empat tahun silam tersebut. Namun ia menyampaikan bahwa ia masih bisa tidur nyeyak di rumah kala itu.'Kalau saya bilang saya enggak takut, entar kamu bilang saya sombong. Tapi saya mau bilang saya bisa tidur dengan nyenyak,' kata Ahok dikutip dari akun Youtubenya, Minggu (9/6/2020)."),
          ),
        ],
      ),
    );
  }
}

class BeritaPolitik4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Politik 4"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/M2IEJAYyfxA9mUqfjoRdOrdfAUE=/0x0:0x0/750x500/data/photo/2020/08/08/5f2e5549bdc4d.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Kasus Fetish Kain Jarik, Polisi: Pengakuan Tersangka Ada 25 Korban",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - Setelah polisi menetapakan G sebagai tersangka atas kasus fetish kain jarik, fakta demi fakta mulai terungkap. Ternyata, ada 25 orang yang menjadi korban perilaku menyimpang pelaku. Hal itu berdasarkan pengakuan korban kepada polisi. Perilaku menyimpang itu sudah dilakukan G sejak sejak 2015 hingga saat ini. 'Pengakuan tersangka ada 25 korban, tapi nanti masih kami dalami lagi,' kata Kapolrestabes Surabaya Kombes Pol Jhoni Isir di Mapolrestabes Surabaya, Jawa Timur, Sabtu (8/8/2020)."),
          ),
        ],
      ),
    );
  }
}

class BeritaPolitik5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Politik 5"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/35dvWeLvcY0u0Yy4sH3UnHA5BbE=/76x0:661x390/750x500/data/photo/2013/07/24/13175821-MG-4311-copy84780x390.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Guru Silat Setubuhi Muridnya Berulang Kali, Terungkap Setelah Hamil 7 Bulan",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - AK (58), seorang guru silat di Kecamatan Banjang, Kabupaten Hulu Sungai Utara (HSU), Kalimantan Selatan (Kalsel), diamankan polisi. Ia ditangkap atas dugaan kasus pencabulan terhadap murid silatnya sendiri berinisial FA (18). Kasat Reskrim Polres HSU, Iptu Kamaruddin mengatakan, terungkapnya kasus pencabulan itu setelah orangtua korban curiga dengan perubahan fisik putrinya. 'Ayah korban curiga melihat korban bertambah berat badan kemudian korban pun dibawa ke rumah sakit untuk diperiksa ternyata korban sudah hamil tujuh bulan bulan,' beber dia saat dikonfirmasi, Sabtu (8/8/2020). Setelah didesak orangtuanya, korban baru mengaku jika yang menyetubuhinya adalah guru silatnya sendiri berinisial AK."),
          ),
        ],
      ),
    );
  }
}

class BeritaPendidikan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Pendidikan 1"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/fNK6zedaSfXNggBGO8K6hy59StY=/49x0:937x592/490x326/data/photo/2020/08/08/5f2e56af85de3.jpeg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "'Wifi Desa', Praktik Baik Gotong Royong Pendidikan di Tengah Pandemi dari Riau",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - Menteri Pendidikan dan Kebudayaan Nadiem Makarim (7/8/2020) berharap kerja sama semua pihak dapat terus dilakukan dalam menghadapi normal baru pendidikan yang dilakukan selama masa pandemi. “Kerja sama secara menyeluruh dari semua pihak sangat diperlukan untuk menyukseskan pembelajaran di masa pandemi Covid-19,” pesan 'Mas Menteri' Nadiem Makarim. Salah satu tantangan belajar dari rumah (BDR) datang dari pelaksanaan pembelajaran jarak jauh ( PJJ) secara daring yang memerlukan jaringan internet. Sering menjadi kendala, siswa kesulitan akses internet karena keterbatasan jaringan atau biaya untuk membeli kuota data. Tantangan ini juga dirasakan guru di SMPN 4 Bengkalis, Provinsi Riau. Banyak siswa yang tidak mengikuti pembelajaran karena mereka tidak punya paket internet."),
          ),
        ],
      ),
    );
  }
}

class BeritaPendidikan2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Pendidikan 2"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/fbZjnjztXUsNjOagNJ-j4ej2Hzo=/31x0:616x390/230x153/data/photo/2015/09/05/1301079Pendidikan-Nasional780x390.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Seperti Ini Upaya Kemendikbud dalam Pemerataan Pendidikan",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - Tidak hanya di daerah terpencil atau tertinggal saja, tetapi di provinsi yang sudah maju juga masih ada wilayah yang belum terjangkau akses internet. Padahal, saat pandemi Covid-19 ini semua pembelajaran siswa dilakukan secara daring. Sehingga, masih diperlukan upaya agar pendidikan di Indonesia benar-benar merata. Namun disamping teknologi, ada faktor lain yang perlu ditingkatkan. Yakni peningkatan kualitas seorang pemimpin di sekolah."),
          ),
        ],
      ),
    );
  }
}

class BeritaPendidikan3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Pendidikan 3"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/bY2lcGOPQTH8OGHMilwTErJREqI=/0x0:0x0/230x153/data/photo/2020/07/30/5f22bbd39afe4.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Dewan Pendidikan Kota Bekasi Imbau Warga Berbagi Wifi agar Siswa Bisa Belajar Online",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "BEKASI, KOMPAS.com - Dewan Pendidikan Kota Bekasi meminta warga saling membantu dalam melaksanakan kegiatan belajar mengajar (KBM) jarak jauh secara daring (dalam jaringan) atau online selama pandemi Covid-19 ini. Pasalnya, di lapangan banyak pelajar terkendala kuota internet saat mengikuti KBM jarak jauh. “Situasi saat ini boleh yang mampu saling berbagi, yang punya wifi silakan beritahu kata sandinya ke tetangganya agar bisa ikut belajar online, sehingga bisa saling tolong menolonglah,” kata Ketua Dewan Pendidikan Kota Bekasi, Ali Fauzie, Selasa (4/8/2020)."),
          ),
        ],
      ),
    );
  }
}

class BeritaPendidikan4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Pendidikan 4"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/RNQIz1hSVrvlT45bB4dXcV1peCY=/5x0:1269x842/230x153/data/photo/2020/08/05/5f2aa758806ee.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Mensos Minta Poltekesos Bandung Jadi Pelopor Instansi Pendidikan Green Social Work",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - Menteri Sosial (Mensos) Republik Indonesia (RI) Juliari P Batubara menekankan, Politeknik Kesejahteraan Sosial (Poltekesos) Bandung harus menjadi pelopor instansi pendidikan yang menerapkan green social work dan kampus hijau. Hal itu disampaikannya saat diskusi bersama dalam rangka merencanakan program pekerjaan sosial berwawasan ekologis green social work, Rabu, (05/08/2020) di Auditorium Poltekesos Bandung. Sebagai informasi, green social work sendiri merupakan era baru dalam dunia pendidikan dan institusi yang mampu menciptakan kombinasi antara satu keilmuan dengan keilmuan lainnya sehingga pada akhirnya akan memiliki nilai lebih. “Dengan menggandeng universitas ternama seperti Institut Teknologi Bandung (ITB), Poltekesos pada pembangunan kampus 2 yang bernuansa baru mampu berkembang pesat dalam 20 tahun ke depan,' kata Julian."),
          ),
        ],
      ),
    );
  }
}

class BeritaPendidikan5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Pendidikan 5"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/lpyq6AS9JoPWMjBn5djIXGgK_Tc=/0x0:5472x3648/230x153/data/photo/2020/08/01/5f2522389753a.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Kisah Seorang Veteran Perang Dunia II yang Selesaikan Pendidikan di Usia 96 Tahun",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "ROMA, KOMPAS.com - Italia memiliki seorang mahasiswa tertua yang lulus pada pekan ini. Setelah melewati masa perang dunia II, Giuseppe Paterno yang berusia 96 tahun saat ini telah melewati masa ujian dan akhirnya mendapatkan gelar sarjana Sejarah dan Filsafat dari University of Palermo. Melansir ABC News pada Jumat (31/7/2020), Paterno menceritakan pengalaman pertamanya menjadi lulusan universitas. Ketika pria 96 tahun ini melangkah maju menerima gelar sarjana dan karangan bunga, lalu disambut tepuk tangan oleh keluarga, guru, dan sesama pelajar yang 70 tahun lebih muda darinya. 'Saya orang normal, seperti banyak orang lain,' ujar Paterno. Ketika ditanya bagaimana rasanya lulus begitu terlambat, ia menjawab, 'Dalam hal usia, saya telah melewati banyak hal, tetapi saya belum pernah mengalami ini (lulus universitas).'"),
          ),
        ],
      ),
    );
  }
}

class BeritaOlahraga1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Olahraga 1"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://akcdn.detik.net.id/community/media/visual/2020/08/09/1166069052_169.jpeg?w=700&q=80",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Link Live Streaming MotoGP Ceko Saksikan di Sini",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "Jakarta - Live streaming MotoGP Ceko bisa dilihat di sini. detikSport menyiarkannya secara langsung sejak pukul 17.00 WIB. Di sirkuit Brno, Minggu (9/8/2020) pukul 19.00 WIB, balapan MotoGP Ceko dilangsungkan. Rider Avintia, Johann Zarco, yang akan start terdepan. Bagi Zarco, ini merupakan kali kelima dia akan memulai balapan dari posisi terdepan. Dia pun mempunyai kesempatan besar untuk membukukan kemenangan pertama di MotoGP."),
          ),
        ],
      ),
    );
  }
}

class BeritaOlahraga2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Olahraga 2"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://sport.detik.com/sepakbola/uefa/d-5126252/kiper-mu-ini-anggap-liga-europa-seperti-vida-o-muerte",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Kiper MU Ini Anggap Liga Europa Seperti Vida O Muerte",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "Cologne - Liga Europa berlangsung dengan sistem single match. Menurut kiper Manchester United, Sergio Romero, sistem tersebut bak vida o muerte. MU sudah berada di perempatfinal final Liga Europa setelah menyingkirkan LASK dengan agregat 7-1. Setan Merah selanjutnya menantang FC Copenhagen di Stadion RheinEnergie, Jerman, Selasa (11/8/2020) dini hari WIB. Pertandingan kali ini berlangsung di tempat netral dan cuma berlangsung satu pertandingan. Situasinya berbeda saat MU berhadapan dengan LASK di babak 16 besar, yang masih memakai sistem kandang dan tandang. Perubahan sistem terpaksa dilakukan UEFA demi mempersingkat waktu, yang sebelumnya tertunda sangat lama karena pandemi virus Corona. Nah, duel ini adalah seperti hidup dan mati untuk tim yang bertanding, tak ada kesempatan kedua untuk memperbaiki hasil."),
          ),
        ],
      ),
    );
  }
}

class BeritaOlahraga3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Olahraga 3"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://akcdn.detik.net.id/community/media/visual/2020/08/09/kostas-manolas_169.jpeg?w=700&q=80",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Disebut Berselisih dengan Messi, Manolas Marah Besar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "Jakarta - Bek Napoli, Kostas Manolas, mengecam pihak yang beranggapan Lionel Messi menolak menjabat tangannya. Informasi tersebut dia nyatakan tidak benar. Barcelona berhasil mengalahkan Napoli 3-1 di leg kedua babak 16 besar Liga Champions. Dalam laga yang berlangsung di Camp Nou, Minggu (9/8/2020) dini hari WIB, tiga gol Barca lahir dari Ciement Lenglet, Messi, dan eksekusi penalti Luis Suarez. Partenopei melesakkan satu gol juga lewat eksekusi penalti Lorenzo Insigne. Kemenangan itu mengantarkan Blaugrana ke perempatfinal dengan agregat 4-2. Kedua tim sebelumnya bermain imbang 1-1 di Naples."),
          ),
        ],
      ),
    );
  }
}

class BeritaOlahraga4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Olahraga 4"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://akcdn.detik.net.id/community/media/visual/2020/08/09/robert-lewandowski-2_169.jpeg?w=700&q=80",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Aksi Robert Lewandowski Bikin Tammy Abraham Kagum",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "Munich - Ketajaman Robert Lewandowski bersama Bayern Munich menginspirasi Tammy Abraham. Striker muda Chelsea itu tak ragu ingin mengikuti jejak pemain Polandia itu. Abraham dan Lewandowski bertemu saat duel Bayern vs Chelsea pada leg kedua babak 16 besar Liga Champions di Allianz Arena, Minggu (9/8/2020) dini hari WIB. Duel berakhir dengan kemenangan Die Roten 4-1. Lewandowski mencetak dua gol pada menit ke-10 dan 83, serta memberikan dua assist buat gol Ivan Perisic (24') dan Corentin Tolisso (76'). Ada pun Chelsea hanya bisa membalas via gol Abraham di menit ke-44."),
          ),
        ],
      ),
    );
  }
}

class BeritaOlahraga5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Olahraga 5"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://akcdn.detik.net.id/community/media/visual/2020/04/28/af9a85dc-82b9-4857-b0ce-9d34eed8598a_169.jpeg?w=700&q=80",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Jadwal Bali United di Piala AFC 2020",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "Jakarta - Bali United akan kembali berlaga di Piala AFC 2020. Berikut ini jadwal laga Laskar Serdadu Tridatu di sisa Piala AFC musim ini pada September. Kepastian itu didapat oleh Bali United usai mendapat surat dari PSSI. Komite kompetisi AFC menyampaikan beberapa perubahan dalam surat itu. Tiga pertandingan di Grup G dan Grup F dilanjutkan di venue yang sama, di Quang Ninh, Vietnam. Laga-laga itu digelar pada 23-29 September, semua tim wajib sudah hadir di kota tempat laga digelar H-4 sebelum kickoff. Bali United tergabung dalam Grup G bersama dengan Than Quang Ninh (Vietnam), Svay Rieng (Kamboja), dan Ceres Negros (Filipina)."),
          ),
        ],
      ),
    );
  }
}

class BeritaTeknologi1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Teknologi 1"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/HLmap8XSSQfxUZ84XQlzoyZrSb4=/33x0:1095x708/750x500/data/photo/2020/02/07/5e3cc9fd2829e.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Inilah Daftar Ponsel Android Terkencang Juli 2020 Versi AnTuTu",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - Perusahaan pengukur kinerja ponsel, AnTuTu, kembali merilis daftar 10 ponsel Android dengan kinerja tertinggi edisi bulan Juli 2020. Daftar ini didominasi perangkat flagship yang dipersenjatai chip Qualcomm terbaru, Snapdragon 865. Tidak ada tanda-tanda kehadiran ponsel dengan chipset Kirin besutan Huawei maupun Exynos milik Samsung. Sama seperti daftar di bulan Juni lalu, Oppo Find X2 Pro berhasil memperoleh skor AnTuTu sebesar 613.048. Sementara 'saudaranya', Oppo Find X2 yang juga dibekali Snadpragon 865, berada di posisi kedua dengan skor 606.490. Oppo Find X2 Pro diklaim lebih unggul karena memiliki manajemen termal yang mampu menjaga kondisi suhu ponsel tetap stabil."),
          ),
        ],
      ),
    );
  }
}

class BeritaTeknologi2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Teknologi 2"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/-F7-l5TDJhN5Fxh0LoL0_b0swfE=/188x358:1788x1424/750x500/data/photo/2020/08/05/5f2ac1c9e7b0b.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Galaxy Note 20 Ultra Punya Layar 120 Hz, Ini Fungsinya",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - Samsung resmi meluncurkan duo smartphone terbarunya, Galaxy Note 20 dan Note 20 Ultra, dalam acara Galaxy Unpacked yang digelar secara virtual, Rabu (5/8/2020) malam. Duo smartphone ini juga sudah bisa dipesan di Indonesia. Kedua smartphone mengusung spesifikasi yang serupa. Namun varian Note 20 Ultra memiliki spesifikasi yang lebih ditingkatkan, seperti komponen layar yang memiliki refresh rate 120 Hz. Layar dengan refresh rate 120Hz kini memang sedang menjadi unggulan beberapa smartphone flagship, khususnya ponsel gaming."),
          ),
        ],
      ),
    );
  }
}

class BeritaTeknologi3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Teknologi 3"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/ihe6IUZFIcULFMxGeO_Q2dZls_A=/0x0:1000x667/750x500/data/photo/2017/12/01/480266309.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Karyawan Facebook Boleh WFH hingga Juli 2021 dan Dapat Tunjangan Alat Kerja",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - Menginjak pertengahan tahun 2020, pandemi Covid-19 belum juga usai. Perusahaan pun kemudian harus menyesuaikan lingkungan kerja mereka dengan kondisi saat ini. Salah satunya adalah Facebook. Perusahaan jejaring sosial raksasa ini mengeluarkan peraturan baru dan mengizinkan pegawainya bekerja dari rumah hingga Juli 2021. 'Berdasarkan arahan dari ahli kesehatan dan pemerintah, serta keputusan dari hasil diskusi internal kami tentang masalah ini, kami mengizinkan karyawan untuk melajutkan bekerja dari rumah secara suka rela sampai Juli 2021,' jelas perwakilan Facebook. Facebook juga akan memberikan bonus tambahan sebesar 1.000 dollar AS (sekitar Rp 14,6 juta) untuk membeli perlengkapan yang menunjang kerja di rumah. Bonus yang sama juga pernah diberikan bulan Maret lalu, saat awal pemberlakuan WFH. Meski mempersilakan karyawan untuk tetap bekerja dari rumah, Facebook tetap akan membuka kembali kantornya di beberapa wilayah. Kantor yang dibuka hanya di wilayah yang telah diizinkan oleh pemerintah setempat."),
          ),
        ],
      ),
    );
  }
}

class BeritaTeknologi4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Teknologi 4"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/-F7-l5TDJhN5Fxh0LoL0_b0swfE=/188x358:1788x1424/750x500/data/photo/2020/08/05/5f2ac1c9e7b0b.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Beda Samsung Galaxy Note 20 dan Note 20 Ultra, dari Desain hingga Spesifikasi",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - Samsung resmi meluncurkan duo smartphone terbarunya, Galaxy Note 20 dan Note 20 Ultra, dalam acara Galaxy Unpacked yang digelar secara virtual, Rabu (5/8/2020) malam. Sama seperti model lainnya di Galaxy Note series, kedua ponsel ini kompak dibekali dengan aksesori pena (stylus) khas perusahaan, S Pen, yang kini diklaim lebih canggih. Bisa dibilang begitu sebab S Pen di Galaxy Note 20 dan Note 20 Ultra kini memiliki tingkat latency 26 ms dan 9 ms, lebih ngebut dibanding S Pen Galaxy Note 10 series yang mentok di angka 46 ms. S Pen versi teranyar juga kini dibekali dengan fitur Anywhere Actions, memungkinkan pengguna mengontrol ponsel mereka, berikut beragam aplikasi di dalamnya, hanya dengan mengayunkan stylus ke beragam arah."),
          ),
        ],
      ),
    );
  }
}

class BeritaTeknologi5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Teknologi 5"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/y-usXk_X_C9D__TKRhWkuPHM4I0=/109x168:909x701/750x500/data/photo/2020/08/05/5f2ac4ee54739.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Samsung Hadirkan Xbox Game Pass di Galaxy Note 20",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - Samsung resmi meluncurkan Galaxy Note 20 series lewat gelaran Galaxy Unpacked pada 5 Agustus lalu. Untuk pertama kalinya, acara tahunan tersebut digelar secara virtual mengingat pandemi Covid-19 yang belum usai. Yang lebih menarik, kali ini Samsung turut berkolaborasi dengan raksasa teknologi Microsoft. Lewat kerja sama tersebut, Samsung menghadirkan aplikasi Xbox Game Pass khusus di Samsung Galaxy Store. Melalui Xbox Game Pass, pengguna Galaxy Note 20 dapat menukarkan token serta melakukan pembelian dalam aplikasi (in app purchase) seperti membeli skin atau item downloaded content (DLC) sebuah game Xbox atau PC."),
          ),
        ],
      ),
    );
  }
}

class BeritaKesehatan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Kesehatan 1"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://awsimages.detik.net.id/visual/2020/08/08/infografis-tick-borne-wabah-virus-baru-dari-china_169.jpeg?w=715&q=90",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Penyakit Gegara Virus Tick-Borne China Mirip Covid-19?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "Jakarta, CNBC Indonesia - Penyakit menular baru yang juga berasal dari binatang, mirip Covid-19, kembali ditemukan di China. Kali ini, sumber penyakit yang diberi nama SFTS (Severe Fever with Thrombocytopenia Syndrome) itu adalah kutu. Penyakit yang juga dikenal dengan nama tick-borne itu mewabah di Provinsi Jiangsu China Timur dan di provinsi Anhui. Jenis virus yang menyebabkan penyakit itu masuk kelompok Bunyaviridae atau bunyavirus. Menurut laporan Global Times, yang dikutip The Indian Times, Minggu (9/8/2020), sejauh ini sudah ada tujuh orang meninggal akibat penyakit itu. Di mana 60 orang lainnya dirawat. Meski baru kembali menghebohkan dalam waktu dekat ini, namun ternyata penyakit ini sudah lama mewabah di China. Tepatnya sejak 2009. Bahkan, wabah tick-borne itu juga sempat terdeteksi di Jepang dan Korea. Tapi, pemerintah China sempat mengisolasi patogen ini di tahun 2011. Menurut sebuah studi tahun 2015, ada beberapa spesies kutu yang diduga sebagai pembawa virus SFTS antara lain Haemaphyalis longicornis dan Haemaphyalis campanulata. Kutu-kutu ini biasanya terdapat pada anjing, kucing, domba, dan sapi."),
          ),
        ],
      ),
    );
  }
}

class BeritaKesehatan2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Kesehatan 2"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/WFzVPaZp42cswgoLoQNw3RCZCkI=/201x3:980x522/750x500/data/photo/2019/06/20/717966506.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "10 Penyebab Berat Badan Susah Turun padahal Sudah Diet",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com – Memiliki berat badan berlebih tentu kurang baik untuk kesehatan. Pasalnya, kegemukan dan obesitas dapat menimbulkan sejumlah komplikasi berbahaya. Melansir laman resmi Kementerian Kesehatan (Kemenkes), berikut ini beberapa bahaya obesitas bagi kesehatan yang perlu diwaspadai: Obesitas berisiko 2 kali lipat mengakibatkan terjadinya serangan jantung koroner, stroke, diabetes melitus (kencing manis), dan hpertensi (tekanan darah tinggi) Obesitas berisiko 3 kali lipat terkena batu empedu Obesitas berisiko mengakibatkan terjadinya sumbatan nafas ketika sedang tidur Obesitas berisiko tinggi untuk mengakibatkan penyakit kanker, di mana pria berisiko tinggi menderita kanker usus besar dan kelenjar prostat, sedangkan wanita berisiko tinggi untuk menderita kanker payudara dan leher rahim Obesitas berisiko meningkatkan lemak dalam darah dan asam urat Obesitas dapat mengakibatkan menurunnya tingkat kesuburan reproduksi"),
          ),
        ],
      ),
    );
  }
}

class BeritaKesehatan3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Kesehatan 3"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/-eLwkfAhNWQixjzNAU2AgIAG-JA=/0x0:1000x667/750x500/data/photo/2019/11/16/5dcf65ee68d0f.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Makanan yang Tidak Boleh Dimakan saat Diet",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "KOMPAS.com - Banyak orang melakukan diet sehat untuk menurunkan berat badan agar lebih ideal. Saat sedang menurunkan berat badan, kunci utamanya adalah mengurangi atau menghindari jenis makanan padat kalori. Namun, mempertimbangkan jumlah kalori yang masuk bukan satu-satunya faktor yang perlu dipertimbangkan. Anda juga perlu menyeimbangkan asupan dengan nutrisi kaya serat dan protein sehat."),
          ),
        ],
      ),
    );
  }
}

class BeritaKesehatan4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Kesehatan 4"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://sukabumiupdate.com/uploads/news/images/770x413/-_200409220743-464.jpg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Beda Nyeri Dada akibat Covid-19, Kecemasan dan Penyakit Jantung",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "SUKABUMIUPDATE.com - Organisasi Kesehatan Dunia (WHO) menyebutkan, orang yang positif Covid-19 akan merasa dadanya kencang atau merasa seolah-olah tidak bisa bernapas dengan baik. Dilansir dari suara.com, sayangnya perbedaan nyeri dada akibat Covid-19, kecemasan, hingga penyakit jantung hampir mirip.Melansir dari WebMD, seorang dokter penyakit dalam berlisensi, Michael W. Smith, MD dari Amerika Serikat membagikan beberapa perbedaan nyeri dada, baik bagi orang positif Covid-19, sakit jantung, hingga akibat rasa cemas atau panik."),
          ),
        ],
      ),
    );
  }
}

class BeritaKesehatan5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Kesehatan 5"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          new Card(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://www.harapanrakyat.com/wp-content/uploads/2019/04/bahaya-mie-instan-1.jpeg",
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Kurangi Makan Mie Instan Campur Nasi, Ini Bahayanya!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 3.0, 1.0),
            child: Text(
                "Berita Gaya Hidup, (harapanrakyat.com),– Siapa tak kenal Mie Instan? Salah satu makanan favorit orang Indonesia dikenal karena rasanya yang lezat dan cara menyuguhkannya yang praktis. Uniknya, orang Indonesia terbiasa mengonsumsi mie instan dengan nasi. Tujuannya tentu saja agar lebih kenyang. Padahal ada sejumlah bahaya makan mie instan bila dicampur dengan nasi. Bisa dibayangkan, nasi yang mengandung karbohidrat tinggi dipadukan dengan mie instan yang juga memiliki kandungan karbohidrat tinggi, jadinya karbohidrat kombo, akibatnya kalori yang dihasilkan dari sekali konsumsi mie instan dengan nasi pun lebih tinggi. Kebiasaan ini tentu cukup berbahaya bagi kesehatan dan harus dihindari. Memakan mie instan dengan nasi menimbulkan dampak negatif bagi kesehatan. Berikut, bahaya makan mie instan dengan nasi: Bisa Kena Penyakit Kanker"),
          ),
        ],
      ),
    );
  }
}
