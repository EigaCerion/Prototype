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
                  content: "Kepada seluruh karyawan dan karyawati,Dengan ini kami sampaikan bahwa perusahaan kami akan memberikan libur kepada seluruh karyawan dan karyawati pada hari Kamis, 1 April 2023. Libur ini diberikan sebagai bagian dari upaya perusahaan untuk memberikan waktu istirahat yang memadai bagi karyawan dan karyawati.Harap diperhatikan bahwa pada hari tersebut, kantor kami akan ditutup dan tidak ada aktivitas operasional yang akan dilakukan. Seluruh karyawan dan karyawati kami diharapkan untuk tidak datang ke kantor pada hari tersebut dan dapat mengambil kesempatan ini untuk beristirahat dan bersantai di rumah.Kami akan kembali beroperasi pada hari Jumat, 2 April 2023, seperti biasa.Terima kasih atas perhatiannya.",
                ),
                SizedBox(height: 20),
                PengumumanCard(
                  title: "Judul Pengumuman",
                  date: "30 Maret 2023",
                  content: "Isi pengumuman",
                ),
                SizedBox(height: 20),
                // widget lainnya
                Text("Widget lainnya"),
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

  const PengumumanCard({Key? key, required this.title, required this.date, required this.content})
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
      child: Card(
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
