import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(top: 20,left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text('All Reviews',style: TextStyle(color: Color(0xff242424),
                    fontSize: 24,fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 15,),
              Card(
                color: Color(0xffF2F2F2),
                child: Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFF359CB6),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Reviews ',
                            style: TextStyle(
                                color: Color(0xFF2C2C2C),
                                fontFamily: 'sans',
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      // Divider(),
                      Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFF359CB6),
                                child: Text(
                                  '97%',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Satisfied out of\n862 patients',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Doctor Checkup'),
                              Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 5,
                                    color: Color(0xFF359CB6),
                                  ),
                                  SizedBox(width: 10),
                                  Text('97%'),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Clinic enviroonment',style: TextStyle(
                                  color: Color(0xff2C2C2C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                              ),),
                              Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 5,
                                    color: Color(0xFF359CB6),
                                  ),
                                  SizedBox(width: 10),
                                  Text('99%')
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Staff behaviour'),
                              Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 5,
                                    color: Color(0xFF359CB6),
                                  ),
                                  SizedBox(width: 10),
                                  Text('98%')
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Container(
                      //   width: MediaQuery.of(context).size.width,
                      //   padding: EdgeInsets.symmetric(
                      //       horizontal: 10, vertical: 10),
                      //   decoration: BoxDecoration(
                      //       border: Border.all(color: Colors.grey[100]!),
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(10))),
                      //   child: Text(
                      //     'Highly recmended',
                      //     style: TextStyle(color: Colors.grey),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
             Expanded(
               child: ListView.builder(
                 itemCount: 6,
                   itemBuilder: (context,index){
                 return  Card(
                   child: Padding(
                     padding: EdgeInsets.symmetric(vertical: 14,horizontal: 10),
                     child: Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff359CB6),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child:Image.asset('assets/appointment/profile.png',fit: BoxFit.cover,),
                                ),
                                SizedBox(width: 15,),
                                Text('John',style: TextStyle(color: Color(0xff242424),fontSize: 14,fontWeight: FontWeight.w600),),
                              ],
                            ),
                             Row(
                               children: [
                                 Text('4.5',style:TextStyle(color: Color(0xff242424),fontWeight: FontWeight.w600,fontSize: 14),),
                                 SizedBox(width: 4,),
                                 Icon(Icons.star,color: Colors.orange,size: 20,)
                               ],
                             )


                           ],
                         ),
                         SizedBox(height: 10,),
                         Text('is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley.',style: TextStyle(
                           color: Color(0xff242424),fontSize: 10,fontWeight: FontWeight.w400
                         ),)
                       ],
                     ),
                   ),
                 );
               }),
             )
            ],
          ),
        ),
      ),
    );
  }
}
