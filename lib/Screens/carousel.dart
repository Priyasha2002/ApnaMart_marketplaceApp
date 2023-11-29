import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      pageController.page;
      setState(() {
        _currPageValue= pageController.page!;
      });
    });
  }

@override
void dispose(){
  pageController.dispose();
}

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          child: PageView.builder(
            controller: pageController,
            itemCount: 1,
            itemBuilder: (context, position){
              return _buildPageItem(position);
            }),
        ),
        // DotsIndicator(
        //   dotsCount: 3,
        //   position: _currPageValue,
        //   decorator: DotsDecorator(
        //   activeColor: const Color(0xffCA955C),
        //   size: const Size.square(9.0),
        //   activeSize: const Size(18.0, 9.0),
        //   activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        //   ),
        // ),
      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = Matrix4.identity();
    if(index == _currPageValue.floor()){
      var currScale = 1-(_currPageValue - index)*(1-_scaleFactor);
      // var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);

    } else if(index ==_currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue - index +1 )*(1-_scaleFactor);
      // var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else if(index == _currPageValue.floor()-1){
       var currScale = 1-(_currPageValue - index)*(1-_scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    }



    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
          height: 220,
          margin: const EdgeInsets.only(left: 5, right: 10),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven?const Color(0xffCA955C):const Color(0xff9294cc),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/welcome.png"
            ),
            ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: 140,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.shade200,
            
          ),
          child: Container(
            padding: EdgeInsets.only(top: 25, left: 34, right: 35),
            child: const Column(
              children: [
                Text('Order Anything,\n   Everything...!', style: TextStyle(color: Colors.black54, fontSize: 28, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ),
        ],
      ),
    );
  }
}