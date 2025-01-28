import 'package:bmi_application/hero_anime.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('BMW S1000rr', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.black,

            child: Column(
              children: [
               InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HeroAnime()));
                },
                 child:
                 Hero(
                  tag: 'bmwS1000rr',
                  child:
                  Image.asset('assets/images/bmw.jpg'),
                 )
               ),
               const SizedBox(height: 20),
               Text('BMW S1000RR' ,style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
               ),
               const SizedBox(height: 10),
               Container(
                padding: const EdgeInsets.all(10),
                child: Text('Key Features and Specifications (2024 Model)\n Engine:999cc \n inline 4-cylinder\n engine.Liquid-cooled, DOHC, 4-valves per cylinder.\n Power Output: Approximately 205 horsepower at 13,000 RPM.\n Torque: 113 Nm at 11,000 RPM.\n Performance:\n Top Speed: Over 300 km/h (186 mph).\n Acceleration: 0-100 km/h (0-62 mph) in about 3 seconds.\n 6-speed gearbox with a quick-shifter for clutchless up and downshifts.\n Chassis & Suspension:\n Aluminium bridge frame for lightweight handling.\n Fully adjustable front and rear suspension.\n Dynamic Damping Control (DDC) available as an option.\n Electronics:\n Riding Modes: Rain, Road, Dynamic, and Race.\n Dynamic Traction Control (DTC).\n ABS Pro (cornering ABS).\n Launch Control and Wheelie Control.\n TFT Display with smartphone connectivity.\n Design:\n Aggressive aerodynamic styling with winglets for increased downforce.\n Lightweight materials (aluminum and carbon fiber options for wheels).\n Available in various color schemes, including classic BMW M colors.\n Other Features:\n LED headlights and taillights.\n Adjustable seat height.\n Optional heated grips and cruise control.\n Notable Highlights\n Track-Oriented Superbike: The S1000RR is designed for the racetrack but is road-legal, offering incredible handling and stability at high speed\n .\n Innovative Winglets: Newer models feature aerodynamic winglets to enhance downforce, improving cornering and stability.\n Customization: BMW offers extensive customization options, including M\n Performance Parts.\n Competition\n The BMW S1000RR competes with other flagship superbikes like:\n Yamaha YZF-R1\n Kawasaki Ninja ZX-10R\n Ducati Panigale V4\n Honda CBR1000RR-R Fireblade', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}