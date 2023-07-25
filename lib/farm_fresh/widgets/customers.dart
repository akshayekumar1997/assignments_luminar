import 'package:flutter/material.dart';

class Customer extends StatelessWidget {
  const Customer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/farm_fresh/mamoody.jpg"),
              radius: 20,
            ),
            title: Text("Mamooty",
            style: TextStyle(color: Colors.green),),
            subtitle: Text("Film actor"),
          ),
          SizedBox(
            height: 10,
          ),
          Text("A friend of mine reccomemded Farmers Fresh Zone to me, during the first lockdown .I have been a regular customer ever since !. You get reliable service,convienient doorstep delivery , reasonable price and super fresh products at your fingertips with their easy - to- use -app !.I have been recommending my friends and family to switch to")
        ],
      ),
    );
  }
}