import 'package:bmi_application/details.dart';
import 'package:flutter/material.dart';

class HeroAnime extends StatefulWidget {
  const HeroAnime({super.key});

  @override
  State<HeroAnime> createState() => _HeroAnimeState();
}

class _HeroAnimeState extends State<HeroAnime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Bikes Heaven', style: Theme.of(context).textTheme.titleLarge,),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Details()));
                  },
                  child: Hero(
                    tag: 'bmwS1000rr',
                    child: Image.asset('assets/images/bmw.jpg',  width: 190,),
                  
                  ),
                ),
                Image.asset('assets/images/ducati.jpg',width:190)
              ]
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/zx10r.jpeg', width: 190,),
                Image.asset('assets/images/1199.jpeg', width: 190,),
              ],
            ),
             const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/r1m.jpeg', width: 190,),
                Image.asset('assets/images/lambo.jpg', width: 190,)
              ],
            ),
             const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Details()));
                  },
                  child: Hero(
                    tag: 'bmwM1000rr',
                    child: Image.asset('assets/images/m1000.jpeg', width: 190,)),
                ),
                Image.asset('assets/images/r1.jpeg', width: 190,)
              ],
            )
          ],
        ),
      ),
    );
  }
}