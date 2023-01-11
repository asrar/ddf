import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/text_form_field_widget.dart';

class IndependentForm extends StatefulWidget {
  const IndependentForm({Key? key}) : super(key: key);

  @override
  State<IndependentForm> createState() => _IndependentFormState();
}

class _IndependentFormState extends State<IndependentForm> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0e756a),
        title: Text(
          'Manage by Self',
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
              child: Text('Login',
                  style: TextStyle(
                      color: Color(0xff4441e5),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                  ),
              ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFromField(
            controller: emailController,
            icon: Icons.email,
            password: false,
            email: 'Email',
            inputType: TextInputType.emailAddress,
            onChanged: (String ) {  },
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
          TextFromField(
            controller: passwordController,
            icon: Icons.vpn_key,
            password: true,
            email: 'password',
            inputType: TextInputType.text,
            onChanged: (String) {  },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
                onPressed: () {

                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'No have an account ?  ',
                    style: TextStyle(
                        color: Color(0xff4441e5),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Sans"),
                  ),
                )),
          ),
          InkWell(

            // onTap: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => DoctorList()));
            // },

            child: CustomBotton(
              title: "Login",
            ),
          )
        ],
      ),
    );
  }
}