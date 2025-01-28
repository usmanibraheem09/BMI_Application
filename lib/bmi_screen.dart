import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  var wtController= TextEditingController();
    var ftController= TextEditingController();
    var inController= TextEditingController();

    var result='';
    var msg='';
    var bgColor= Colors.blue[100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('BMI Application', style: 
          Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500).copyWith(color: Theme.of(context).colorScheme.onPrimary),
       ),
       centerTitle: true,
      ),
      body: Container(
        color: bgColor,
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.only(left:40, right:30),
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('BMI', style: TextStyle( fontSize: 30, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: wtController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Enter your weight in KGs', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
                  ),
                  prefixIcon: const Icon(Icons.line_weight),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height:10),
              TextField(
                controller:ftController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.height),
                  label: Text('Enter your height in feet', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.number,
                controller: inController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.height),
                  label: Text('Enter your height in inches', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500)),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  
                ),
                onPressed: (){
                  var wt=wtController.text.toString();
                  var ft=ftController.text.toString();
                  var inc= inController.text.toString();
          
                  if(wt!='' && ft!='' && inc!=''){
                   var dwt= int.parse(wt);
                   var dft= int.parse(ft);
                   var dinc= int.parse(inc);
          
                   var tInches= (dft*12)+ dinc;
          
                   var tM= tInches*0.0254;
          
                   var bmi= dwt/(tM*tM);

                    if(bmi>0&& bmi<18){
                  msg='You are under weight';
                  bgColor=Colors.red[200];
                 }else if(bmi>=18 && bmi<=25){
                  msg='You are heathy';
                  bgColor=Colors.green[300];
                 }else{
                  msg='You are over weight';
                  bgColor= Colors.orange[300];
                 }
                  
                   setState(() {
                     result='$msg \n Your BMI is: ${bmi.toStringAsFixed(4)}';
                   });
                   
                  }
                  else{
                     setState(() {
                    result='Please fill all the fields carefully';
                  });
                  }
              }, 
              child: const Text('Get Result:', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              ),
              const SizedBox(height: 20),
              Text(result, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500),)
            ],
          ),
        ),
      ),
    );
  }
}