import 'package:assignments/pages/home_page/sign_up_page.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey=GlobalKey<FormState>();
bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(padding: EdgeInsets.all(15),
child:
SingleChildScrollView(child: 
Column(

  children: [
    Column(
      children: [
        Container(
        
          height: 650,
         child:
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

        Text("Login",style: TextStyle(
          fontSize: 50
        ),),
        Text("Welcome Back ! Login to your credentials"),
          Form(
         key: _formkey, 
          child:Column(children:[
        TextFormField(
   validator: (email) {
     if(email!.isEmpty){
return "Enter email id";
     }
     if(!email.contains("@")&&(email.contains("."))){
return "Enter a valid email";
     }
return null;
   },
   
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    hintText: "Email id"
    ,prefixIcon: Icon(Icons.email)
  ),
  


        ),SizedBox(
          height: 10,
        ),
       
          TextFormField(
            
            
            obscureText: _obscureText,
            obscuringCharacter: "*",
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    hintText: "Password"
    ,prefixIcon: _obscureText?IconButton(onPressed: () {
      _obscureText=false;
    }, icon: Icon(Icons.visibility_off)):IconButton(onPressed:() {_obscureText=true;
      
    }, icon: Icon(Icons.visibility))

  ),)
          
                   ]
                        )

        ),
         Container(
          width: double.infinity,
          child:
        ElevatedButton(
          
          onPressed: () {
          
        }, child: Text("Log In")
        ,style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      )
    ),),
        ),
        
        ),
        TextButton(onPressed: () {
          if(_formkey.currentState!.validate()){
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => SignUpPage(),), (route) => false);
          }
       else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email id or username is incorrect"),duration: Duration(seconds: 3),));
       }
       
        }, child: Text("Do You have an account ? Sign up"))
      ],
    )
        )
  ],
),
])
)
) ,
    );
  }

}