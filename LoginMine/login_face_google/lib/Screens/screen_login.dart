import 'package:flutter/material.dart';
import 'package:login_face_google/Screens/utilities/constants.dart';

//clase para aplicar el color del cuerpo de la pantalla
class ColorBody extends StatelessWidget {
  const ColorBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF73AEF5),
            Color(0xFF61A4F1),
            Color(0xFF478DE0),
            Color(0xFF398AE5),
          ],
          stops: [0.1, 0.4, 0.7, 0.9],
        ),
      ),
    );
  }
}

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  _ScreenLogin createState() => _ScreenLogin();
}

class _ScreenLogin extends State<ScreenLogin> {
  bool _rememberMe = false;
  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Email',
          style: kLabelStyle,
        ),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefix: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Ingrese su Email',
              hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPassTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Contraseña',
          style: kLabelStyle,
        ),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: const TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefix: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Ingrese su Contraseña',
              hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildFpassWBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('Presionó: Olvido la Constraseña'),
        child: const Text(
          'Olvidó la Contraseña?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _buildRememberMeTX() {
    return Row(
      children: <Widget>[
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(
            value: _rememberMe,
            checkColor: Colors.green,
            activeColor: Colors.white,
            onChanged: (bool? value) {
              setState(() {
                _rememberMe = value!;
              });
            },
          ),
        ),
        const Text('Recuerdame', style: kLabelStyle),
      ],
    );
  }

  Widget _builBtnLogin() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => print('Boton de Login Presionado'),
          style: ButtonStyle(backgroundColor:
              MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
            return Colors.white;
          }), shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
              (Set<MaterialState> states) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0));
          })),
          child: const Text(
            'Iniciar Sesion',
            style: TextStyle(
              color: Colors.black45,
              letterSpacing: 0.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
        ));
  }

  Widget _buildLoginText() {
    return Column(
      children: const <Widget>[
        Text(
          '- O -',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 20.0),
        Text(
          'Iniciar Sesion con',
          style: kLabelStyle,
        )
      ],
    );
  }

  Widget _buildSocialBtn(Function()? onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 3),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialbtnRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(() => print('Presiono Facebook'),
              const AssetImage('assets/logos/facebook.jpg')),
          _buildSocialBtn(() => print('presiono Google'),
              const AssetImage('assets/logos/google.jpg')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        const ColorBody(),
        SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 35.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Inicio de Sesion',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                _buildEmailTF(),
                const SizedBox(
                  height: 30.0,
                ),
                _buildPassTF(),
                _buildFpassWBtn(),
                _buildRememberMeTX(),
                _builBtnLogin(),
                _buildLoginText(),
                _buildSocialbtnRow(),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
