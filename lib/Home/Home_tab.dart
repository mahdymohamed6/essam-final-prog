import 'package:flutter/material.dart';
import 'Home_Widget.dart';
import '../Theme.dart';

class Hometab extends StatelessWidget {
  const Hometab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:MyTheme.PrimaryLight,
      appBar: AppBar(
        backgroundColor: MyTheme.PrimaryLight,elevation: 0,
        title: Image.asset('assets/images/logo_light.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Car Services & Repair",style: Theme.of(context).textTheme.titleLarge),
                Image.asset('assets/images/home1.png'),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Services",style: Theme.of(context).textTheme.titleLarge),
                    Spacer(),
                    ElevatedButton(onPressed: (){},child: Text('See All'),style: ElevatedButton.styleFrom(backgroundColor: MyTheme.BabyBlueLight,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),)
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                        Services(image: Image.asset('assets/images/Mechanical.png')),
                        CircleAvatar(radius: 40, backgroundColor: MyTheme.OrangeLight, child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(('N'),style:Theme.of(context).textTheme.titleMedium,),
                            Image.asset('assets/images/Air.png'),
                          ],
                        )),
                        Services(image: Image.asset('assets/images/Truck.png')),
                        Services(image: Image.asset('assets/images/Electrical.png')),
                        Services(image: Image.asset('assets/images/car_wash.png')),
                        CircleAvatar(radius: 40, backgroundColor: MyTheme.OrangeLight, child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/Electrical.png',width: 20,height: 20,),
                            Image.asset('assets/images/Air.png'),
                          ],
                        )),
                        CircleAvatar(radius: 40, backgroundColor: MyTheme.OrangeLight, child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('92',style: Theme.of(context).textTheme.titleLarge,)
                          ],
                        )),

                      ]),
                ),
                Row(
                  children: [
                    Text("Accessories",style: Theme.of(context).textTheme.titleLarge),
                    Spacer(),
                    ElevatedButton(onPressed: (){},child: Text('See All'),style: ElevatedButton.styleFrom(backgroundColor: MyTheme.BabyBlueLight,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),)
                  ],
                ),
                Accessories(image: Image.asset('assets/images/car_tire.png'), Name: 'Car Tire', Price: 300),
                Accessories(image: Image.asset('assets/images/exhaust.png'), Name: 'Exhaust', Price: 300),
                Accessories(image: Image.asset('assets/images/oil.png'), Name: 'Car Oil', Price: 300),
                Accessories(image: Image.asset('assets/images/lantern.png'), Name: 'Car Lantern', Price: 300),
                Accessories(image: Image.asset('assets/images/phone.png'), Name: 'Phone Holder', Price: 300),
              ]),
        ),
      ),
    );
  }
}