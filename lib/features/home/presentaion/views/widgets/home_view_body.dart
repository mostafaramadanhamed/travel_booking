import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/core/widgets/text_filed.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    List<String> categories=[
      'Hotel',
      'Flight',
      'Train',
      'More',
    ];
    return Column(
      children: [
        Container(
          height: size.height/3.5,
          width: size.width,
          decoration: const BoxDecoration(
            color: AppColor.kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
            )
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50,),
                const Text('Location',style: TextStyle(color: Colors.white,fontSize: 20),),
                const SizedBox(height: 5,),
                const Row(
                  children: [
                    Icon(Icons.location_on_rounded,size: 26,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text('New York,Usa',style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),
                    Spacer(),
                    Icon(Icons.notifications,size: 26,color: Colors.white,),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    const Expanded(child: CustomTextFiled(hint: 'Search any Hotel')),
                    const SizedBox(width: 10,),
                    Container(width: 60,height:55,decoration: BoxDecoration(
                      color: AppColor.kSecondaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:         const Icon(Icons.dehaze,size: 26,color: Colors.white,),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
        const SizedBox(height: 30,),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
         //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  buildCategoryItem(size, categories[0],icon: FontAwesomeIcons.hotel),
                  const SizedBox(width: 15,),
                  buildCategoryItem(size, categories[1],icon: FontAwesomeIcons.plane),
                  const SizedBox(width: 15,),

                  buildCategoryItem(size, categories[2],icon: FontAwesomeIcons.trainSubway),
                  const SizedBox(width: 15,),

                  buildCategoryItem(size, categories[3],icon: FontAwesomeIcons.grip),

                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: BeforeGrid(frisTitle:'Nearby Me'),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: SizedBox(
                height: size.height/4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index)=> Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 8.0),
                    child:   AspectRatio(
                      aspectRatio:175/205,
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          // image: const DecorationImage(image: AssetImage(MyAssets.itemPic),
                          //   fit: BoxFit.fill,),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(children: [
                          Expanded(flex:3,child: Container(
                            margin: EdgeInsets.only(left: 8,top: 8,right: 8,),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 6,
                                spreadRadius: 1,
                                offset: Offset(1,6  )
                              ),
                            ]
                          ),
                          )),
                          const Expanded(flex: 2,child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                BeforeGrid(frisTitle: 'frisTitle')
                              ],
                            ),
                          ),),
                        ],),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ],
    );
  }

  SizedBox buildCategoryItem(Size size,String categories,{required IconData icon,}) {
    return SizedBox(
                child: Column(
                  children: [
                    Container(
                      height: size.height/10,
                      width: size.width/5.5,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: Icon(icon,color: AppColor.kPrimaryColor,),
                    ),
                    const SizedBox(height: 7,),
                    Text(categories),
                  ],
                ),
              );
  }
}

class BeforeGrid extends StatelessWidget {
  const BeforeGrid({
    super.key,required this.frisTitle,
  });
final String frisTitle;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(frisTitle,style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        const Spacer(),
        const  Text('See All',style: TextStyle(
          color: AppColor.kSecondaryColor,
        ),),
      ],
    );
  }
}

