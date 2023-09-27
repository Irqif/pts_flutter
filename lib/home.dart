import 'package:flutter/material.dart';
import 'package:pts_flutter/cart.dart';
import 'package:pts_flutter/detail.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget Kategori(String title, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical:12),
          decoration: BoxDecoration(
            border: Border.all(
                color: selectIndex == index ? Color(0xff00B14F) : Colors.grey),
            color: selectIndex == index ? Color(0xff00B14F) : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text('${title}',style: TextStyle(
            color: selectIndex == index ? Colors.white : Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),)
        ),
      );
    }

    Widget Produck(String imageUrl, String product, String harga) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Detail())
        );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: 173,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              product,
              style: TextStyle(fontSize: 16, color: Color(0xff292D32)),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              harga,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff292D32)),
            )
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Container(
              // padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
              decoration: BoxDecoration(
                  color: Color(0xffF2F2F7),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Cari pakaian pria',
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey[700],
                    ),
                    border: InputBorder.none),
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                size: 26,
              ),
              onPressed: () {},
              color: Colors.black,
            ),
            IconButton(
              icon: Icon(Iconsax.bag),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              color: Colors.black,
            ),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                    decoration: BoxDecoration(
                        color: Color(0xffDBCCF3),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 48, left: 28),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tanggal Tua Hemat',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff292D32)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Flash Sale Serba\nRp50 ribuan',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Text(
                                'S&K Berlaku',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff292D32),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 27,
                          ),
                          Image.asset('assets/orang.png')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Kategori',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18)),
                          Text(
                            'Lihat semua',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff00B14F)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Kategori('Semua', 0),
                            SizedBox(
                              width: 11,
                            ),
                            Kategori('Kemeja', 1),
                            SizedBox(
                              width: 11,
                            ),
                            Kategori('Sepatu', 2),
                            SizedBox(
                              width: 11,
                            ),
                            Kategori('Aksesoris', 3)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 24),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Produck('assets/gambar1.png',
                                    'Batik Pria Lengan\nPanjang', 'Rp 199.900'),
                                SizedBox(
                                  width: 17,
                                ),
                                Produck(
                                    'assets/gambar2.png',
                                    'New Balance 992\nGrey Original',
                                    'Rp1.240.000'),
                              ],
                            ),
                            Row(
                              children: [
                                Produck(
                                    'assets/gambar3.png',
                                    'Skinny Jeans Dark\nBlue Wanita',
                                    'Rp379.900'),
                                SizedBox(
                                  width: 17,
                                ),
                                Produck(
                                    'assets/Rectangle4.png',
                                    'Kacamata Baca\nAnti Radiasi Blue Ray',
                                    'Rp125.000'),
                              ],
                            ),
                            Row(
                              children: [
                                Produck(
                                    'assets/Rectangle5.png',
                                    'Kemeja Pria Polos\nLengan Pendek Oxford',
                                    'Rp 119.900'),
                                SizedBox(
                                  width: 17,
                                ),
                                Produck(
                                    'assets/Rectangle6.png',
                                    'Human Greatness\nHoodie Hitam',
                                    'Rp1.229.000'),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.home_1,
                color: Color(0xff00B14F),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.heart),
              label: 'Favorit',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.task_square),
              label: 'Transaksi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_circle),
              label: 'Profile',
            ),
          ],
          selectedLabelStyle: TextStyle(color: Color(0xff00B14F)),
          selectedItemColor: Color(0xff00B14F),
          unselectedItemColor: Color(0xff292D32),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          type: BottomNavigationBarType.fixed,
        )
      );
  }
}
