import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'info_View.dart';
import 'profil_view.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:digimon_ego_app/library/home_widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              TopBox(),
              Notify(
                key:Key("notify"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InfoView(),
                    ),
                  );
                },
              ),
              Profile(),
              TopWidget(),
              Center(
                heightFactor: 1.5,
                child: Container(
                  width: double.infinity,
                  height: 668,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Color.fromRGBO(216, 225, 233, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => InfoView(),
//             ),
//           ); // aksi ketika tombol ditekan
//         },
//       ),
//     );
//   }
// }
