import 'package:flutter/material.dart';
import 'package:video_compress/screens/compression_type.dart';
import 'package:video_compress/utils/colors.dart';
import 'package:video_compress/widgets/button_widget.dart';

class CompressVideo extends StatefulWidget {
  const CompressVideo({Key? key}) : super(key: key);

  @override
  _CompressVideoState createState() => _CompressVideoState();
}

class _CompressVideoState extends State<CompressVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        toolbarHeight: 80,
        leading: GestureDetector(
           onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.only(left: 10),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[700],
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 23,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Compress Video",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 30),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage("assets/images/image.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50,top: 40,bottom: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Original Size",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "3,6MB",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                     Column(
                      children: [
                        Text(
                          "Expected Size",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1,2MB",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
              
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1,color: Colors.grey)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                             "Basic Compression",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                                 fontWeight: FontWeight.w700),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Text(
                             "Medium file size, best quality",
                             style: TextStyle(
                                 color: Colors.white.withOpacity(0.5),
                                 fontSize: 16,
                                 fontWeight: FontWeight.w400),
                           )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                     Container(
                        width: double.infinity,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1,color: Colors.grey)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                             "Strong Compression",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                                 fontWeight: FontWeight.w700),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Text(
                             "Smallest file size, best quality",
                             style: TextStyle(
                                 color: Colors.white.withOpacity(0.5),
                                 fontSize: 16,
                                 fontWeight: FontWeight.w400),
                           )
                        ],
                      ),
                    ),
                     SizedBox(height: 20,),
                     Container(
                        width: double.infinity,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1,color: Colors.grey)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                             "Custom",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                                 fontWeight: FontWeight.w700),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Text(
                             "Choose Your Own Settings",
                             style: TextStyle(
                                 color: Colors.white.withOpacity(0.5),
                                 fontSize: 16,
                                 fontWeight: FontWeight.w400),
                           )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
               GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (Context)=>CompressionType()));
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 50, bottom: 50,left: 10,right: 10),
                      child: ButtonWidget(buttonname: "Continue",))
                  )
            ],
          ),
        ),
      ),
    );
  }
}
