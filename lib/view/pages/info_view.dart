import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // widget pengumuman
                SizedBox(height: 20),
                PengumumanCard(
                  title: "Judul Pengumuman",
                  date: "1 Maret 2023",
                  content:
                      "Kepada seluruh karyawan dan karyawati,Dengan ini kami sampaikan bahwa perusahaan kami akan memberikan libur kepada seluruh karyawan dan karyawati pada hari Kamis, 1 April 2023. Libur ini diberikan sebagai bagian dari upaya perusahaan untuk memberikan waktu istirahat yang memadai bagi karyawan dan karyawati.Harap diperhatikan bahwa pada hari tersebut, kantor kami akan ditutup dan tidak ada aktivitas operasional yang akan dilakukan. Seluruh karyawan dan karyawati kami diharapkan untuk tidak datang ke kantor pada hari tersebut dan dapat mengambil kesempatan ini untuk beristirahat dan bersantai di rumah.Kami akan kembali beroperasi pada hari Jumat, 2 April 2023, seperti biasa.Terima kasih atas perhatiannya.",
                ),
                SizedBox(height: 20),
                PengumumanCard(
                  title: "Judul Pengumuman",
                  date: "30 Maret 2023",
                  content: """ Kepada seluruh karyawan dan karyawati,

Dengan ini kami sampaikan bahwa perusahaan kami akan memberikan libur kepada seluruh karyawan dan karyawati pada hari Kamis, 1 April 2023. Libur ini diberikan sebagai bagian dari upaya perusahaan untuk memberikan waktu istirahat yang memadai bagi karyawan dan karyawati.

Harap diperhatikan bahwa pada hari tersebut, kantor kami akan ditutup dan tidak ada aktivitas operasional yang akan dilakukan. Seluruh karyawan dan karyawati kami diharapkan untuk tidak datang ke kantor pada hari tersebut dan dapat mengambil kesempatan ini untuk beristirahat dan bersantai di rumah.

Kami akan kembali beroperasi pada hari Jumat, 2 April 2023, seperti biasa.

Terima kasih atas perhatiannya.

Hormat kami, """,
                ),
                SizedBox(height: 20),
                PengumumanCard(
                  title: "Judul Pengumuman",
                  date: "30 Maret 2023",
                  content: """ Kepada seluruh karyawan dan karyawati,

Dengan ini kami sampaikan bahwa perusahaan kami akan memberikan libur kepada seluruh karyawan dan karyawati pada hari Kamis, 1 April 2023. Libur ini diberikan sebagai bagian dari upaya perusahaan untuk memberikan waktu istirahat yang memadai bagi karyawan dan karyawati.

Harap diperhatikan bahwa pada hari tersebut, kantor kami akan ditutup dan tidak ada aktivitas operasional yang akan dilakukan. Seluruh karyawan dan karyawati kami diharapkan untuk tidak datang ke kantor pada hari tersebut dan dapat mengambil kesempatan ini untuk beristirahat dan bersantai di rumah.

Kami akan kembali beroperasi pada hari Jumat, 2 April 2023, seperti biasa.

Terima kasih atas perhatiannya.

Hormat kami, """,
                ),
                SizedBox(height: 20),
                PengumumanCard(
                  title: "Judul Pengumuman",
                  date: "30 Maret 2023",
                  content: """ Kepada seluruh karyawan dan karyawati,

Dengan ini kami sampaikan bahwa perusahaan kami akan memberikan libur kepada seluruh karyawan dan karyawati pada hari Kamis, 1 April 2023. Libur ini diberikan sebagai bagian dari upaya perusahaan untuk memberikan waktu istirahat yang memadai bagi karyawan dan karyawati.

Harap diperhatikan bahwa pada hari tersebut, kantor kami akan ditutup dan tidak ada aktivitas operasional yang akan dilakukan. Seluruh karyawan dan karyawati kami diharapkan untuk tidak datang ke kantor pada hari tersebut dan dapat mengambil kesempatan ini untuk beristirahat dan bersantai di rumah.

Kami akan kembali beroperasi pada hari Jumat, 2 April 2023, seperti biasa.

Terima kasih atas perhatiannya.

Hormat kami, """,
                ),
                SizedBox(height: 20),
                PengumumanCard(
                  title: "Judul Pengumuman",
                  date: "30 Maret 2023",
                  content: """ Kepada seluruh karyawan dan karyawati,

Dengan ini kami sampaikan bahwa perusahaan kami akan memberikan libur kepada seluruh karyawan dan karyawati pada hari Kamis, 1 April 2023. Libur ini diberikan sebagai bagian dari upaya perusahaan untuk memberikan waktu istirahat yang memadai bagi karyawan dan karyawati.

Harap diperhatikan bahwa pada hari tersebut, kantor kami akan ditutup dan tidak ada aktivitas operasional yang akan dilakukan. Seluruh karyawan dan karyawati kami diharapkan untuk tidak datang ke kantor pada hari tersebut dan dapat mengambil kesempatan ini untuk beristirahat dan bersantai di rumah.

Kami akan kembali beroperasi pada hari Jumat, 2 April 2023, seperti biasa.

Terima kasih atas perhatiannya.

Hormat kami, """,
                ),
                SizedBox(height: 20),
                // widget lainnya
                Text("Hmm,sepertinya udah di akhir pengumuman nih"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PengumumanCard extends StatefulWidget {
  final String title;
  final String date;
  final String content;

  const PengumumanCard(
      {Key? key,
      required this.title,
      required this.date,
      required this.content})
      : super(key: key);

  @override
  _PengumumanCardState createState() => _PengumumanCardState();
}

class _PengumumanCardState extends State<PengumumanCard> {
  bool _showDetails = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showDetails = !_showDetails;
        });
      },
      child: Container(
        width: double.infinity, // set width to screen width
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                widget.date,
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
              ),
              SizedBox(height: 8.0),
              if (_showDetails)
                Text(
                  widget.content,
                  style: TextStyle(fontSize: 16.0),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
