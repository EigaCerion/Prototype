import 'package:digimon_ego_app/Provider/LoginProvider.dart';
import 'package:digimon_ego_app/view/pages/HomeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

 
class LoginView extends StatelessWidget {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(),
                  Tittle(),
                  const SizedBox(height: 24.0),
                  InputUsername(),
                  const SizedBox(height: 16.0),
                  InputPassword(),
                  const SizedBox(height: 16.0),
                  RememberMe(),
                  const SizedBox(height: 16.0),
                  TombolMasuk(),
                  const SizedBox(height: 8.0),
                  TextLupaPassword(),
                ],
              ),
            ),
          ),
 
          Consumer<LoginProvider>(
            builder: (context, prov, w) {
              return Visibility(
                visible: prov.loading,
                replacement: SizedBox(),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.grey.withOpacity(.7),
                  child: Center(child: CupertinoActivityIndicator()),
                ),
              );
            }
          )
        ],
      ),
    );
  }
}

class RememberMe extends StatelessWidget {
  const RememberMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: false,
            onChanged: (bool? value) {
              // setState(() {
              //   _rememberMe = value!;
              // });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45,top: 15),
            child: const Text('Ingat Saya'),
          ),
        ],
      ),
    );
  }
}

class TextLupaPassword extends StatelessWidget {
  const TextLupaPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text('Lupa Password?'),
    );
  }
}

class TombolMasuk extends StatelessWidget {
  const TombolMasuk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 43, 42, 42),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),

        ),
      onPressed: () {
          context.read<LoginProvider>().login().then((value) {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=>HomeView()));
          });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: const Text('Masuk',),
      ),
    );
  }
}

class Tittle extends StatelessWidget {
  const Tittle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'DIGIMON EGO',
      style: TextStyle(fontSize: 24.0),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Image.asset(
        'assets/images/logo.png', // ganti dengan path logo anda
        width: 150,
      ),
    );
  }
}

class InputPassword extends StatelessWidget {
  const InputPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Sandi',
        ),
      ),
    );
  }
}

class InputUsername extends StatelessWidget {
  const InputUsername({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'NISN',
        ),
      ),
    );
  }
}
