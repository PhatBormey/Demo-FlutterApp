import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final controller=ScrollController();
  final String profile="assets/logo.jpg";
  final String cover="assets/mypic.jpg";
 // final List<String> friProfile=[
 //   "assets/Cat_Movie_001.jpg",
 //   "assets/Cat_Movie_002.jpg",
 //   "assets/Dog_Movie_001.jpg",
 //   "assets/Dog_Movie_002.jpg",
 //   "assets/Crocodile_Movie_001.jpg",
 //   "assets/Crocodile_Movie_002.jpg",
 //   "assets/Snake_Movie_001.jpg",
 //   "assets/Snake_Movie_002.jpg",
 //   "assets/Snake_Movie_003.jpg",
 // ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         home: Scaffold(
           // appBar: _buildAppBar,
          body: _buildBody,

        ),
    );
  }

  AppBar get _buildAppBar{
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back,color: Colors.green,),
        onPressed: () {
        },
      ),
    );
  }

  Widget get _buildBody{
    return Stack(
      children:[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green,Colors.white,Colors.black],
                begin: Alignment.topLeft,
              end: Alignment.bottomRight
            )
          ),
        ),
      SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            // controller: controller,
            children: [
//Profile
              SizedBox(
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      height: 220,
                        width: double.infinity,
                        child: Image(image: AssetImage(cover),
                          fit: BoxFit.fitWidth,)),
                    Positioned(
                      top: 0,
                        left: 0,
                        child:IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
            icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,),
          )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Stack(
                        children: [
                           Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10),
                             child: CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(profile),
                                ),
                           ),
                          Positioned(
                            bottom: 15,
                              right: 15,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.black12,
                                child: Icon(Icons.camera_alt_outlined,color: Colors.black,),
                              ),
                              // child: ClipRRect(
                              //   borderRadius: BorderRadius.circular(15),
                              //   child: Container(
                              //     height: 30,
                              //     width: 30,
                              //     color: Colors.black12,
                              //     child: Icon(Icons.camera_alt_outlined),
                              //   ),
                              // )
                            )
                        ],
                      ),
                    ),

                  ],
                ),


              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bormey Phat",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("study hard for my future"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.person_add_alt_outlined),
                                    SizedBox(width: 10,),
                                    Text("Add Friend",
                                      style: TextStyle(
                                        fontSize: 16
                                      ),)
                                  ],
                                ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green)
                               ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.message),
                                    SizedBox(width: 10,),
                                    Text("Messagge",
                                      style: TextStyle(
                                        fontSize: 16
                                      ),)
                                  ],
                                ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green
                            ),
                              ),
                        ),
                          SizedBox(width: 5,),

                         ClipRRect(
                           borderRadius: BorderRadius.circular(5),
                           child: Container(
                             alignment: Alignment.centerRight,
                             height: 38,
                             width:40,
                             color: Colors.black12,
                             child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz),
                        ),
                           ),
                         )
                      ],
                    ),
//Friends
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 300,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Friends",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    SizedBox(height: 5,),
                                    Text("1000",
                                      style:TextStyle(

                                      ) ,),

                                  ],
                                ),
                                TextButton(onPressed: () {},
                                    child: Text("See Friends"))
                              ],
                            ),
                          ),
//Friends Profile
                          Expanded(
                            child: GridView.builder(
                                itemCount: lstFri.length,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                                itemBuilder:(context, index) {
                                  final fri= lstFri[index];
                                  return Card(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.black12,
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image(image: AssetImage(fri.profilePic),
                                              height: 80,
                                            width: double.infinity,),
                                            Text(fri.name)
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("See all friends",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ]
    );
    // return Stack(
    //   children: [
    //     Container(
    //         decoration:BoxDecoration(
    //             gradient: LinearGradient(
    //               colors: [Colors.green,Colors.white,Colors.black87,],
    //               begin: Alignment.topLeft,
    //               end: Alignment.bottomRight,
    //             )
    //         )
    //     ),
    //     Positioned(
    //       child: Container(
    //         height: 200,
    //         width: double.infinity,
    //         child: Image(image: AssetImage("assets/mypic.jpg"),fit: BoxFit.fitWidth,),
    //       ),
    //     ),
    //     Positioned(
    //       top: 140,
    //         left: 5,
    //         child: ClipRRect(
    //           borderRadius: BorderRadius.circular(60),
    //           child: Container(
    //             color: Colors.green,
    //             height: 120,
    //             width: 120,
    //                   child: Image(image: AssetImage("assets/logo.jpg"),),
    //           ),
    //         ),
    //         ),
    //     Positioned(
    //       top: 215,
    //         left: 80,
    //         child:ClipRRect (
    //           borderRadius: BorderRadius.circular(15),
    //           child: Container(
    //             height: 30,
    //               width: 30,
    //               color: Colors.black12,
    //               child: Icon(Icons.camera_alt_outlined,color:Colors.white ,size: 25,),),
    //         )),
    //     Positioned(
    //       top: 260,
    //     left: 10,
    //     child: Text("Phat Bormey",
    //       style:TextStyle(
    //         fontSize: 25,
    //         fontWeight: FontWeight.bold
    //       ) ,),
    //     ),
    //     Positioned(
    //       top: 290,
    //       left: 15,
    //       child: Text("Study hard for the future",
    //         style:TextStyle(
    //             fontSize: 15,
    //
    //         ) ,),
    //     ),
    //     Positioned(
    //         top: 310,
    //         left: 15,
    //           child: ElevatedButton(
    //             style: ElevatedButton.styleFrom(
    //               backgroundColor: Colors.green,
    //             ),
    //             child: Icon(Icons.person_add_alt_outlined),
    //       onPressed: (){
    //
    //       },
    //     ),
    //         ),
    //
    //   ],
    // );
  }
}

class Friends{
  final String name;
  final String profilePic;

  Friends({
    required this.name,
    required this.profilePic
  });
}
final List<Friends> lstFri=[
  Friends(name: "Bormey Phat", profilePic: "assets/cat.jpg"),
  Friends(name: "Ranny", profilePic: "assets/dog.jpg"),
  Friends(name: "Chan That", profilePic: "assets/crocodile.jpg"),
  Friends(name: "Phanna", profilePic: "assets/buffalo.jpg"),
  Friends(name: "Dovin", profilePic: "assets/cow.jpg"),
  Friends(name: "Puthi", profilePic: "assets/logo.jpg"),

];