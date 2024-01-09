import 'package:codemehubtest/ui/util/app_color.dart';
import 'package:codemehubtest/ui/util/app_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: ListView(
        primary: true,
        padding:const EdgeInsets.all(12),
        children: [
          // main header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon:const Icon(Icons.filter_list,size: 30,)),
              const Text("Lead List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              const Spacer(),
              IconButton(onPressed: (){}, icon:const Icon(Icons.notifications))
            ],
          ),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: 10, itemBuilder: (BuildContext context, int index) {
            return   Container(
              padding: const EdgeInsets.only(top: 10,left:10),
              margin: const EdgeInsets.all(12),
              height: screenHeight(context)/5,
              decoration: BoxDecoration(
                  color:AppColor.kWhite,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0,2), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.location_on),
                      const Text("Calicut"),
                      dividerSW(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 70,
                        width: 30,
                        decoration: BoxDecoration(
                            color: AppColor.kLightBlue,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Center(child: Text("01")),
                      ),
                      dividerSW(),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("David Morgui",style: TextStyle(color: AppColor.kDarkBlue,fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("abc@gmail.com",style: TextStyle(color: AppColor.kGrey,fontSize: 12,fontWeight: FontWeight.bold),),
                          Text("12/12/2023",style: TextStyle(color: AppColor.kGrey,fontSize: 12,fontWeight: FontWeight.bold),),
                          Text("9744105322",style: TextStyle(color: AppColor.kGrey,fontSize: 12,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width:50,
                        decoration: BoxDecoration(
                            color: AppColor.kLightBlue,

                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Center(
                          child: Text("Flutter",style: TextStyle(color: AppColor.kDarkBlue,fontSize: 12,fontWeight: FontWeight.bold)),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon:const Icon(Icons.call,size: 32,)),
                      dividerSW()
                    ],
                  ),

                ],
              ),
            );
          },

          )

        ],
      )),
    );
  }
}
