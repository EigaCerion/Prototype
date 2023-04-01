import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'info_View.dart';
import 'profil_view.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 188.9,
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: ContainerFill(),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                   Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InfoView(),
                            ),
                          ); // aksi ketika tombol ditekan
                  },
                ),
              ),
              Profile(),
              TopWidget(),
            ],
          ),
        ),
      ),
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
