import 'package:flutter/material.dart';

class BusinessDetails extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const BusinessDetails({super.key, this.business_detail_name, this.business_detail_category, this.business_detail_picture, this.business_detail_rating, this.business_detail_description, this.business_detail_haircut});
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_detail_name;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_detail_category;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_detail_picture;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_detail_rating;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_detail_description;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_detail_haircut;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 56,
        iconTheme: const IconThemeData(color: Colors.brown),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(top:0),
          child: Text('',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.brown
            ),
          ),
        ),
        
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search,
              size: 30,
              color: Colors.brown,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: (){
              },
              icon: const Icon(Icons.shopping_cart,
              size: 30,
              ),
              ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: GridTile(
              child: Image.asset(business_detail_picture,
              fit: BoxFit.cover,
              ),
              ),
          ),
          Column(
            children: [
              ListTile(
                leading: Text(business_detail_name, style: const TextStyle(color: Colors.brown,fontWeight: FontWeight.bold, fontSize: 25,),
                ),
                ),
            ],
          ),
        ],
      ),

    );
    
  }
}