library LibraryWidget;

import 'package:flutter/material.dart';

class TopBox extends StatelessWidget {
  const TopBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 188.9,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0593FE), Color(0xFF047BD4)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: ContainerFill(),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(),
      ],
    );
  }
}

// class Notify extends StatelessWidget {
//   const Notify({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: 0,
//       left: 235,
//       bottom: 860,
//       child: IconButton(
//         icon: Icon(Icons.notifications),
//       ),
//     );
//   }
// }
class Notify extends StatelessWidget {
  const Notify({
    required Key key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 235,
      bottom: 860,
      child: IconButton(
        icon: Icon(Icons.notifications),
        onPressed: onPressed,
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Yusuf Aristokrat S.Kom',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8937647829',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    ' | ',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Sistem Informasi',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContainerFill extends StatelessWidget {
  const ContainerFill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Opacity(
        opacity: 0.5,
        child: Image.asset(
          'assets/images/learning.png',
          // width: 300, // ubah sesuai dengan ukuran yang diinginkan
          // height: 300,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        PopupMenuButton(
          offset: Offset(-30, 123), // mengatur posisi menu dropdown
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            PopupMenuItem(
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 5.0),
                  Text(
                    'Edit Profil',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              child: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 5.0),
                  Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10,
              top: 45,
              left: 0,
              bottom: 0,
            ),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
      ],
    );
  }
}

class PresensimasukWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      height: 70,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.white,
                  Color(0xFF0593FE),
                  Color(0xFF034E87),
                ],
              ),
            ),
          ),
          Positioned(
            top: 7.4,
            left: 7,
            child: Image.asset(
              'assets/images/Vectormasuk.png',
              width: 55,
              height: 56.2,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 27.5,
            left: 65,
            child: Text(
              'PRESENSI MASUK',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}