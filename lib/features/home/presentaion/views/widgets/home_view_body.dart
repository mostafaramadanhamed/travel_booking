import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/core/widgets/text_filed.dart';
import 'package:travel_booking/features/home/presentaion/views/hotel_details_view.dart';

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
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: buildNonScrollable(size, categories),
        ),
        SliverFillRemaining(
          child: VListViewTrips(size: size),
        ),
      ],
    ) ;
  }

  Column buildNonScrollable(Size size, List<String> categories) {
    return Column(
          children: [
            TopContainer(size: size),
            const SizedBox(height: 15,),
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
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: BeforeGrid(frisTitle:'Nearby Me'),
            ),
            const SizedBox(height: 10,),
            HListView(size: size),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: BeforeGrid(frisTitle:'Popular For Me'),
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
                    Text(categories,style: TextStyle(fontWeight: FontWeight.w600),),
                  ],
                ),
              );
  }
}

class VListViewTrips extends StatelessWidget {
  const VListViewTrips({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    padding: const EdgeInsets.symmetric(horizontal: 30.0),
    itemCount: 5,
    itemBuilder:(context,index)=> Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child:
    GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:
            (context)=> const HotelDetailsView() ,
        ),);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        height: 110,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3/3,
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                margin: const EdgeInsets.all(8),
                decoration:  BoxDecoration(
                  color: Colors.blue,
                  image: const DecorationImage(image: NetworkImage('https://img.freepik.com/free-photo/young-woman-hiker-taking-photo-with-smartphone-mountains-peak-winter_335224-427.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=ais'),
                    fit: BoxFit.fill,),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right:16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   SizedBox(
                     width: size.width*0.5,
                     child: const Row(
                       children: [
                         Text('Mountain Trip',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                         Spacer(),
                         Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                         SizedBox(width:6.3 ,),
                         Text('4.9',),
                       ],
                     ),
                   ),
                    const SizedBox(height: 6,),
                    const Row(
                      children: [
                        Icon(FontAwesomeIcons.locationDot,color: AppColor.kBottomNavIconColor,size: 16,),
                        SizedBox(width:4 ,),
                        Text('NewYork',style: TextStyle(color: AppColor.kBottomNavIconColor,fontSize: 13),),

                      ],
                    ),
                    const SizedBox(height: 6,),
                    Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '40\$',
                                style: TextStyle(
                                  color: AppColor.kSecondaryColor,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: ' /Person',
                                style: TextStyle(
                                  color: AppColor.kBottomNavIconColor,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            )
          ],
        ),

      ),
    )
      ,
    ),
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class HListView extends StatelessWidget {
  const HListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: SizedBox(
        height: size.height/3.4,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index)=> Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 8.0),
            child:   AspectRatio(
              aspectRatio:190/220,
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration:  BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(children: [
                  Expanded(flex:3,child: Container(
                    margin: const EdgeInsets.only(left: 8,top: 8,right: 8,),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(image: NetworkImage('https://img.freepik.com/free-photo/pier-lake-hallstatt-austria_181624-44201.jpg?w=1060&t=st=1690287804~exp=1690288404~hmac=7735d5dafa455360925ed2e09eed3a2453b1ebbf2066b591ddaf474665296cca'),
                          fit: BoxFit.fill,),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 6,
                              spreadRadius: 1,
                              offset: const Offset(1,6  )
                          ),
                        ]
                    ),
                  )),
                  Expanded(flex: 2,child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text('Lake View',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                            Spacer(),
                            Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                            SizedBox(width:6.3 ,),
                            Text('4.9',),
                          ],
                        ),
                        const SizedBox(height: 6,),
                        const Row(
                          children: [
                            Icon(FontAwesomeIcons.locationDot,color: AppColor.kBottomNavIconColor,size: 16,),
                            SizedBox(width:4 ,),
                            Text('NewYork',style: TextStyle(color: AppColor.kBottomNavIconColor,fontSize: 13),),

                          ],
                        ),
                        const SizedBox(height: 6,),
                        Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '40\$',
                                    style: TextStyle(
                                      color: AppColor.kSecondaryColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' /Person',
                                    style: TextStyle(
                                      color: AppColor.kBottomNavIconColor,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Icon(Icons.favorite,color:AppColor.kSecondaryColor,size: 18,),
                          ],
                        ),
                      ],
                    ),
                  ),),
                ],),
              ),
            ),
          ),
        ),
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
          fontSize: 19,
          fontWeight: FontWeight.w600,
        ),),
        const Spacer(),
        const  Text('See All',style: TextStyle(
          color: AppColor.kSecondaryColor,
        ),),
      ],
    );
  }
}

