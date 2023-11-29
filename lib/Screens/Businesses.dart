// ignore: file_names
import 'package:flutter/material.dart';
import 'package:udaan_marketplaceapp/BusinessDetails/BusinessDetails.dart';

class Businesses extends StatefulWidget {
  const Businesses({super.key});


  @override
  State<Businesses> createState() => _BusinessesState();
}

class _BusinessesState extends State<Businesses> {

  // ignore: non_constant_identifier_names
  var businesses_list = [
    {
      "name": "Cake n Bake",
      "category": "Bakery ◦ Cakes",
      "picture": 'assets/images/cakenbake.png',
      "rating": "3.0/5",
      "description": "Best in cakes"
    },
    {
      "name": "Top Today",
      "category": "Unisex saloon",
      "picture": "assets/images/toptoday.png",
      "haircut": "Available Haircuts"
    },
    {
      "name": "Arun Electronics",
      "category": "Electronics shop",
      "picture": "assets/images/Arunelectronics.png",
    },
    {
      "name": "Logozz",
      "category": "Graphic ◦ logo design",
      "picture": "assets/images/logozz.png",
    },
    {
      "name": "Tasteyyy",
      "category": "Restaurant ◦ Veg ◦ Non Veg",
      "picture": "assets/images/tasteyyy.png",
    },
  
        {
      "name": "Trenz",
      "category": "Cloths ◦ Fashion",
      "picture": "assets/images/trenz.png",
    },
    {
      "name": "Shoe Shop",
      "category": "Footware",
      "picture": "assets/images/shoeshop.png",
    },
    {
      "name": "Shree Hardware Shop",
      "category": "Hardware shop",
      "picture": "assets/images/hardwareshop.png",
    },
    {
      "name": "BookMall",
      "category": "Books ◦ Magzines",
      "picture": "assets/images/bookmall.png",
    },
    {
      "name": "Home Check",
      "category": "Homeware",
      "picture": "assets/images/homeware.png",
    },
    {
      "name": "Car Care",
      "category": "Car accessories",
      "picture": "assets/images/carcare.png",
    },
      {
      "name": "Coverz",
      "category": "Mobile accessories",
      "picture": "assets/images/mobileshop.png",
    },
    {
      "name": "GamerzHub",
      "category": "Gameing tools",
      "picture": "assets/images/gamerzhub.png",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: businesses_list.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: (100/80),
        crossAxisCount: 1),
         itemBuilder: (BuildContext context, int index ){
          return Single_business(
            business_name: businesses_list[index]['name'],
            business_category: businesses_list[index]['category'],
            business_picture: businesses_list[index]['picture'],
            business_rating: businesses_list[index]['rating'],
            business_description: businesses_list[index]['description'],
            business_haircut: businesses_list[index]['haircut'],
          );
         }
      );
  }
}

// ignore: camel_case_types
class Single_business extends StatelessWidget {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_name; 
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_category;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_picture;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_rating;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_description;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final business_haircut;

  const Single_business({super.key, 
      // ignore: non_constant_identifier_names
      this.business_name,
      // ignore: non_constant_identifier_names
      this.business_category,
      // ignore: non_constant_identifier_names
      this.business_picture,
      // ignore: non_constant_identifier_names
      this.business_rating,
      // ignore: non_constant_identifier_names
      this.business_description,
      // ignore: non_constant_identifier_names
      this.business_haircut,
      });
  @override
  Widget build(BuildContext context) {
    return  Card(
      semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
    margin: const EdgeInsets.all(16),
      elevation: 1,
       child: Hero(
        tag: business_name,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> BusinessDetails(
                business_detail_name: business_name,
                business_detail_category: business_category,
                business_detail_picture: business_picture,
                business_detail_rating: business_rating,
                business_detail_description: business_description,
                business_detail_haircut: business_haircut,
              ))),
            child: GridTile(
              footer: Container(
                height: 80,
                color: Colors.white,
                child: Center(
                  child: ListView(
                    children: [
                      ListTile(
                        // leading: Icon(icon),
                        contentPadding: const EdgeInsets.only(bottom: 0, top: 6, left: 20, right: 20),
                        title: Text('$business_name', style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown
                        ),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                           icon: const Icon(Icons.favorite_outline, color: Colors.red,)
                           ),
                        subtitle: Text('$business_category',style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.brown
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // footer: Container(
              //   height: 90,
              //   color: Colors.white70,
              //   child: ListTile(
              //     leading: Text(
              //       business_name,
              //       style: TextStyle(
              //         fontSize: 20,
              //       ),
              //       ),
              //       title: Text("$business_category ",
              //       style: TextStyle(
              //         fontSize: 20,
              //       ),
              //       textAlign: TextAlign.end,
              //       ),
              //   ),
                
              // ),
              child: Image.asset(business_picture,
              fit: BoxFit.cover,
              )),
          ),
        ),
        ),
    );
  }
}