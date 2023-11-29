import 'package:flutter/material.dart';
import 'package:udaan_marketplaceapp/Screens/Businesses.dart';
import 'package:udaan_marketplaceapp/Screens/CartScreen.dart';
import 'package:udaan_marketplaceapp/Screens/ProfileScreen.dart';
import 'package:udaan_marketplaceapp/Screens/carousel.dart';

class  HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State< HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        toolbarHeight: 66,
        iconTheme: const IconThemeData(color: Colors.brown),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        title: const Padding(
          padding: EdgeInsets.only(top:0),
          child: Text('ApnaMart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 37,
              color: Colors.brown
            ),
          ),
        ),
        
        actions: <Widget>[
           Padding(
            padding: const EdgeInsets.only(right: 0),
            child: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.favorite,
              size: 30,
              color: Colors.brown,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()));
              },
              icon: const Icon(Icons.shopping_cart,
              size: 30,
              ),
              ),
          ),
        ],
      ),

      //Project
      
      drawer: SafeArea(
        child: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
            ),
          ),
          elevation: 50,
          backgroundColor: Colors.grey.shade200,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                onDetailsPressed: () {},
                accountName: const Text(
                    'xyz',
                  style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
                ),
                 accountEmail: const Text(
                  'Deliver to xyz, xyz road, xyz, India',
                style: TextStyle(fontSize: 12,
                color: Colors.white),
              ),
                currentAccountPicture: GestureDetector(
                  child: const CircleAvatar(
                    backgroundColor: Colors.white70,
                      child: Icon (Icons.person, color: Colors.brown,)
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Colors.brown,
                ),
              ),
             const SizedBox(height: 15),
              InkWell(
                borderRadius: BorderRadius.circular(0),
                splashColor: Colors.brown.shade100,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: const ListTile(
                  title: Text(
                    'Home',style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  leading: Icon(Icons.home_rounded,
                    size: 25,
                    color: Colors.brown,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.brown.shade100,
                onTap: (){},
                child: const ListTile(
                  title: Text(
                    'My orders',style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  leading: Icon(Icons.receipt_long_outlined,
                    size: 25,
                    color: Colors.brown,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.brown.shade100,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()));
                },
                child: const ListTile(
                  title: Text(
                    'My cart',style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  leading: Icon(Icons.shopping_cart,
                    size: 25,
                    color: Colors.brown,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.brown.shade100,
                onTap: (){},
                child: const ListTile(
                  title: Text(
                    'Notifications',style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  leading: Icon(Icons.notifications,
                    size: 25,
                    color: Colors.brown,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.brown.shade100,
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
                },
                child: const ListTile(
                  title: Text(
                    'Profile',style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  leading: Icon(Icons.person_rounded,
                    size: 25,
                    color: Colors.brown,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Divider(thickness: 1),
              const SizedBox(height: 5),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.brown.shade100,
                onTap: (){},
                child: const ListTile(
                  title: Text(
                    'Support',style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  leading: Icon(Icons.chat_rounded,
                    size: 25,
                    color: Colors.brown,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.brown.shade100,
                onTap: (){},
                child: const ListTile(
                  title: Text(
                    'About',style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  leading: Icon(Icons.help_rounded,
                    size: 25,
                    color: Colors.brown,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            InkWell(
               borderRadius: BorderRadius.circular(50),
                splashColor: Colors.brown.shade100,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style: const TextStyle(color: Colors.brown),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffCA955C),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.white,
                    hintText: 'Search by shop, product, category',
                    hintStyle: const TextStyle(color: Colors.white)
                    ,
                  ),
                ),
               ),
            ),
            SizedBox(
              height: 10,
            ),
            CarouselPage(), 
            const Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Text("◦•◦ Popular Categories ◦•◦",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 25,
              ),
              ),
            ),
            const SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                        const SizedBox(width: 15,),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))), backgroundColor: const Color(0xffCA955C),
                              elevation: 0,
                            ),
                            
                            child: const Text(
                              'Sort ≓',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            onPressed: () {
                              showModalBottomSheet(
                                backgroundColor: Colors.grey.shade200,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
                                context: context,
                                 builder: (BuildContext context){
                                  return SizedBox(
                                    height: 400,
                                    child: Center(
                                      child: ElevatedButton(
                                        onPressed: (){
                                          Navigator.pop(context);
                                        },
                                         child: const Text('close'),
                                         ),
                                    ),
                                  );
                                 }
                              );
                            },
                          ),
                        ),
                      
                        const SizedBox(width: 10,),
                        InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                          },
                          child: Container(
                            height: 47,
                            width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Electronics",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                        ),
                          const SizedBox(width: 10,),
                          InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Gaming",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 110,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Clothing",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Grooming",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Bakery",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                          const SizedBox(width: 20),
                           InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Services",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                           const SizedBox(width: 20),
                           InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Footware",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                           const SizedBox(width: 20),
                           InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Hardware",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                           const SizedBox(width: 20),
                           InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Books",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                           const SizedBox(width: 20),
                           InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Homeware",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                           const SizedBox(width: 20),
                           InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Car assesories",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                           const SizedBox(width: 20),
                           InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){},
                            child: Container(
                              height: 47,
                              width: 120,
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffCA955C),
                            ),
                            child:
                            const Center(
                                child:
                                Text("Phone",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                                ),
                            ),
                          ),
                          const SizedBox(width: 20),
            
                      ],     
              ),
            ),
            const SizedBox(height: 7),
            const Divider(thickness: 3, color: Color(0xffEEDFCC),),
            
             Row(
               children: [
                 const Padding(
                   padding: EdgeInsets.only(left: 22, right: 118),
                   child:
                    Text("Shops around you",
                   style: TextStyle(
                     color: Colors.brown,
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                   ),
                   ),
                 ),
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))), backgroundColor: Colors.grey.shade200,
                                  elevation: 0,
                                ),
                                
                                child: const Text(
                                  '☰',
                                  style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 27),
                                  ),
                                onPressed: () {
                                  showModalBottomSheet(
                                    backgroundColor: Colors.grey.shade200,
                                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                                    context: context,
                                     builder: (BuildContext context){
                                      return SizedBox(
                                        height: 400,
                                        child: Center(
                                          child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.pop(context);
                                            },
                                             child: const Text('close'),
                                             ),
                                        ),
                                      );
                                     }
                                  );
                                },
                              ),
                            ),
               ],
             ),
             const SizedBox(
              height: 10,
             ),
             ListView.builder(
               physics: const NeverScrollableScrollPhysics(),
               shrinkWrap: true,
             itemCount: 15,
             itemBuilder: (context, index){
               return Container(
                 margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                 child: Row(
                   children: [
                     Container(
                       width: 170,
                       height: 150,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.white38,
                         image: const DecorationImage(
                           fit: BoxFit.cover,
                           image: AssetImage(
                             "assets/images/cakenbake.png",
                             ), 
                             )
                       ),
                     ),
                     Expanded(
                       child: Container(
                         height: 120,
                         decoration: const BoxDecoration(
                           borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)), 
                           color: Color(0xffCA955C),
                         ),
                         child: const Padding(
                           padding: EdgeInsets.only(right: 50, top: 10),
                           child: Column(
                             children: [
                               Text('Cake n Bake', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                               Padding(
                                 padding: EdgeInsets.only(right: 34, top: 10),
                                 child: Text('Cakes ◦ Bakery', style: TextStyle(color: Colors.white, fontSize: 15),),
                               ),
                               Row(
                                 children: [
                                   Padding(
                                     padding: EdgeInsets.only(left: 12, top: 10),
                                     child: Icon(Icons.store_outlined, color: Colors.white,),
                                   ),
                                   SizedBox(
                                     width: 5,
                                   ),
                                   Padding(
                                      padding: EdgeInsets.only(left: 12, top: 10,),
                                      child: Icon(Icons.location_pin, color: Colors.white,),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(top: 10, left: 2),
                                     child: Text('1.2km', style: TextStyle(color: Colors.white),),
                                   ),
                                 ],
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               );
             }
          ),
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(30),
            //     color: Colors.grey.shade200,
            //   ),
            //   height: 510,
            //   child: const Businesses(),
            // ),
            
            
            // Container(
            //   width: 402,
            //   height: 500,
            //   decoration: BoxDecoration(
            //     color: const Color(0xffEEDFCC),
            //     borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Businesses(),
            //   ),
          ],
        ),
      ),
    );
  }
}
