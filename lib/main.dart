import 'package:flutter/material.dart';
import 'guide_me.dart' as first;
import 'guide_me.dart';
import 'sell_my_crops.dart' as second;
import 'sell_my_crops.dart';

void main() {

  runApp(MaterialApp(

    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      '/HomeRoute': (context) => HomeRoute(),
      '/GuideMe': (context) => first.GuideMe(),
      '/SellMyCrops': (context) => second.SellMyCrops(),


    },
  ));
}

class FirstScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:  Scaffold(
        body: SafeArea(
          child:Center(
            child: Column(
                children: [



                     SizedBox(

                       height: 50,
                     ),
                     Center(
                       child:Text("Smart Kisan",style: TextStyle(fontFamily: 'Cinzel', color: Colors.green,fontSize: 55))
                     ),




                  FlowerImageAsset(),

                  SizedBox(
                    width: 300,
                    child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          side: BorderSide(color: Colors.black),
                          primary: Colors.green,
                          minimumSize: const Size.fromHeight(65), // NEW
                        ),
                        child:Text("Let's Go"),
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) =>
                            new HomeRoute(),
                          ));
                        }
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );

  }
}



class HomeRoute extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'smart_naari',
      home:  MyHomePage(title:'Smart Kisan' ),
      theme: ThemeData(
        primarySwatch: Colors.green,

      ),
    );

  }
}

class MyHomePage  extends StatelessWidget {
  var title;

  MyHomePage( {Key ? key,required this.title} ): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            title, style: TextStyle(fontFamily: 'Cinzel', color: Colors.white)),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/farmers_tractor.jpg',
                height: 200,
                width: 200),

            SizedBox(
              width: 300,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.black),
                  primary: Colors.green,
                  minimumSize: const Size.fromHeight(55), // NEW
                ),
                onPressed: () {
                  //_askCameraPermission();
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new GuideMe(),
                  ));
                },
                label: Text('Guide Me'),
                icon: Icon(Icons.light),
              ),),

            Image.asset('assets/images/sell_my_crops.jpg',
                height: 200,
                width: 200),

            SizedBox(
              width: 300,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.black),
                  primary: Colors.green,
                  minimumSize: const Size.fromHeight(55), // NEW
                ),
                onPressed: () {

                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new SellMyCrops(),
                  ));
                },
                label: Text('Sell My Crop'),
                icon: Icon(Icons.money),
              ),),
          ],


        ),
      ),
      backgroundColor: Colors.white,
    );
  }



}



class FlowerImageAsset extends StatelessWidget{
  Widget build(BuildContext context) {

    AssetImage assetImage = AssetImage('assets/images/khet.jpg');
    Image image = Image(image: assetImage,height: 450,
      width: 500,

      color: Colors.white,
      colorBlendMode: BlendMode.darken,
      fit: BoxFit.fitWidth,);
    return Container(child: image);

  }
}