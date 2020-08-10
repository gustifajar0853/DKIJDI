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
            onTap: () async {
              const url =
                  'https://nasional.kompas.com/read/2020/08/07/08253531/urgensi-ruu-pks-untuk-segera-disahkan-dpr';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://nasional.kompas.com/read/2020/07/27/10170991/peristiwa-kudatuli-27-juli-1996-saat-megawati-melawan-tetapi-berakhir-diam';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://megapolitan.kompas.com/read/2020/08/09/18281561/tolak-mengungsi-ke-pulau-saat-aksi-411-ahok-lebih-baik-saya-mati-di-rumah';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://regional.kompas.com/read/2020/08/09/17431311/kasus-fetish-kain-jarik-polisi-pengakuan-tersangka-ada-25-korban';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://regional.kompas.com/read/2020/08/09/12485791/guru-silat-setubuhi-muridnya-berulang-kali-terungkap-setelah-hamil-7-bulan';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'http://www.kompas.com/edu/read/2020/08/08/145237571/wifi-desa-praktik-baik-gotong-royong-pendidikan-di-tengah-pandemi-dari-riau';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'http://edukasi.kompas.com/read/2020/08/05/115926871/seperti-ini-upaya-kemendikbud-dalam-pemerataan-pendidikan';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'http://megapolitan.kompas.com/read/2020/08/05/09330311/dewan-pendidikan-kota-bekasi-imbau-warga-berbagi-wifi-agar-siswa-bisa';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'http://nasional.kompas.com/read/2020/08/05/19535311/mensos-minta-poltekesos-bandung-jadi-pelopor-instansi-pendidikan-green';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'http://www.kompas.com/global/read/2020/08/01/151352470/kisah-seorang-veteran-perang-dunia-ii-yang-selesaikan-pendidikan-di-usia';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://sport.detik.com/moto-gp/d-5126042/link-live-streaming-motogp-ceko-saksikan-di-sini';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://sport.detik.com/sepakbola/uefa/d-5126252/kiper-mu-ini-anggap-liga-europa-seperti-vida-o-muerte';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://sport.detik.com/sepakbola/uefa/d-5126249/disebut-berselisih-dengan-messi-manolas-marah-besar';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://sport.detik.com/sepakbola/uefa/d-5126253/aksi-robert-lewandowski-bikin-tammy-abraham-kagum';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://sport.detik.com/sepakbola/liga-indonesia/d-5126241/jadwal-bali-united-di-piala-afc-2020';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://tekno.kompas.com/read/2020/08/09/07000057/inilah-daftar-ponsel-android-terkencang-juli-2020-versi-antutu';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://tekno.kompas.com/read/2020/08/09/19030027/galaxy-note-20-ultra-punya-layar-120-hz-ini-fungsinya';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://tekno.kompas.com/read/2020/08/09/17040037/karyawan-facebook-boleh-wfh-hingga-juli-2021-dan-dapat-tunjangan-alat-kerja';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://tekno.kompas.com/read/2020/08/09/14505347/beda-samsung-galaxy-note-20-dan-note-20-ultra-dari-desain-hingga-spesifikasi';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://tekno.kompas.com/read/2020/08/09/10080037/samsung-hadirkan-xbox-game-pass-di-galaxy-note-20';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
      backgroundColor: Colors.green
    );
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
            onTap: () async {
              const url =
                  'https://www.cnbcindonesia.com/news/20200809115004-4-178481/penyakit-gegara-virus-tick-borne-china-mirip-covid-19';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://health.kompas.com/read/2020/08/08/121102768/10-penyebab-berat-badan-susah-turun-padahal-sudah-diet';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://health.kompas.com/read/2020/08/09/193700568/makanan-yang-tidak-boleh-dimakan-saat-diet';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://sukabumiupdate.com/detail/life/sehat/67565-Beda-Nyeri-Dada-akibat-Covid-19-Kecemasan-dan-Penyakit-Jantung';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
            onTap: () async {
              const url =
                  'https://www.harapanrakyat.com/2019/04/bahaya-makan-mie-instan-campur-nasi/#:~:text=Bahaya%20makan%20mie%20instan%20dengan%20nasi%20lainnya%20yaitu%20jika%20Anda,juga%20bisa%20menimbulkan%20penyakit%20jantung.';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
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
      backgroundColor: Colors.red
    );
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
