import 'package:flutter/material.dart';
import '../Theme.dart';


class Services extends StatefulWidget {
  Widget image;

  Services({ required this.image});
  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
          children: [
        CircleAvatar(radius: 40, backgroundColor: MyTheme.OrangeLight, child: Container(
          width:40 ,height:30 ,
            child: widget.image)),
      ]),
    );
  }
}

class Accessories extends StatelessWidget {
  Widget image;
  String Name;
  int Price;

  Accessories({required this.image,required this.Name,required this.Price,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height*0.15, width: MediaQuery.sizeOf(context).width*1,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: MyTheme.OrangeLight),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height*0.4,width:MediaQuery.sizeOf(context).width*0.4 ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      image,
                    ],
                  ),
                ),
                Spacer(),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(Name,style: Theme.of(context).textTheme.titleMedium,),
                      Row(
                          children: [
                            Text(Price.toString(), style: Theme.of(context).textTheme.titleSmall,),
                            Icon(Icons.currency_pound, size: 20, color: MyTheme.PrimaryLight,),
                          ]),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text('Next', style: Theme.of(context).textTheme.bodySmall,),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(105.0, 40.0),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                              backgroundColor: MyTheme.BabyBlueLight,
                              padding: EdgeInsets.symmetric(horizontal: 30,))),
                    ]),
                Spacer(),
              ]),
        ),),

    );
  }
}