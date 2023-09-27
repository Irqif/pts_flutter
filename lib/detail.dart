import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pts_flutter/home.dart';

class Detail extends StatefulWidget {
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  bool isPressed = false;
  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {

    Widget Ukuran (int index, String title) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffF2F2F7)
            ),
            borderRadius: BorderRadius.circular(8),
            color: selectIndex == index ? Color(0xff00B14F) : Colors.white,
          ),
          child: Text(title,style: TextStyle(color: selectIndex == index ? Colors.white : Color(0xff292D32)),),
        ),
      );
    }


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Iconsax.arrow_left,
              color: Color(0xff292D32),
            )),
        title: Center(
          child: Text(
            'Detail Product',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff292D32)),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isPressed = !isPressed; // Membalik status ikon
              });
            },
            icon: Icon(isPressed ? Iconsax.heart : Iconsax.heart5,
                color: isPressed ? Colors.black : Colors.red),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/sepatu2.png'),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'New Balance 992 Grey Original',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      '4.8',
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '(102) | 67 ulasan',
                      style: TextStyle(color: Color(0xff292D32)),
                    )
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Wrap(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Our Made US 992 men\'s sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men\'s fashion sneakers have a pigskin...',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff292D32),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Baca Selengkapnya',
                            style: TextStyle(
                              color: Colors.green, // Ubah warna menjadi hijau
                            ),
                          ),
                        ],
                      ),)
              ],
            ),
            SizedBox(height: 17,),
            Text('Pilih Ukuran', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff292D32)
            )),
            SizedBox(height: 18,),
            Row(
              children: [
                Ukuran(0, '39'),
                SizedBox(width: 16,),
                Ukuran(1, '40'),
                SizedBox(width: 16,),
                Ukuran(2, '41'),
                SizedBox(width: 16,),
                Ukuran(3, '42'),
                SizedBox(width: 16,),
                Ukuran(4, '43'),
              ],
            )
          ])
    ),
        ],
      ),

    bottomNavigationBar: Padding(
      padding: EdgeInsets.only(top: 16),
      child: Container(
        padding: EdgeInsets.only(top: 26,bottom: 24,right: 24,left: 24),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffF2F2F7)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Rp1.240.000',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600
            ),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,),
              decoration: BoxDecoration(
                color: Color(0xff00B14F),
                borderRadius: BorderRadius.circular(8)
              ),
              child: TextButton(
                onPressed: (){}, 
                child: Text('Tambah Keranjang',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ))
              ),
            )
          ],
        ),
      ),
    )
  );
  }
}
