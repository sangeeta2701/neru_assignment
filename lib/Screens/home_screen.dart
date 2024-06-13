import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neru_assignment/utils/colors.dart';
import 'package:neru_assignment/widgets/sizedbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<QueryDocumentSnapshot> data = [];

  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("services").get();
    data.addAll(querySnapshot.docs);
    setState(() {
      
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        // wColor,
        lightBlue,
        mediumBlue,
        darkBlue,
      ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                Text(
                  "Choose Your Industry Below",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: wColor,
                      decoration: TextDecoration.none),
                ),
                height30,
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child:data.isEmpty?Center(child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(wColor),
                  )): ListView.builder(
                    physics: ScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (context, index){
                      return  Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          height: 330,
                          width: MediaQuery.of(context).size.width * 0.92,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [wColor.withOpacity(0.3), wColor.withOpacity(0.1)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.0, 1.0]),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                          ),
                                          image: DecorationImage(
                        image: NetworkImage("${data[index]['image']}"), fit: BoxFit.cover)),
                              ),
                              height12,
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  "${data[index]['desc']}",
                                  style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: wColor,
                                            decoration: TextDecoration.none,
                                            height: 1.4),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              height12,
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 50),
                                child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                        backgroundColor: mediumBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                                          onPressed: () {},
                                          child: Center(
                        child: Text(
                                            "Enter Portal",
                                            style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: wColor,
                          decoration: TextDecoration.none),
                                          ))),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
               

               
              ],
            ),
          ),
        ),
      ),
    );
  }

  
}
