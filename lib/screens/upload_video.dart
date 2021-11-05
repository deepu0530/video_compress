import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_compress/screens/compress_video.dart';
import 'package:video_compress/utils/colors.dart';
import 'package:video_player/video_player.dart';

class UploadVideo extends StatefulWidget {
  const UploadVideo({Key? key}) : super(key: key);

  @override
  _UploadVideoState createState() => _UploadVideoState();
}

class _UploadVideoState extends State<UploadVideo> {

File? _video;
final picker = ImagePicker();
 VideoPlayerController? _videoPlayerController;


// This funcion will helps you to pick a Video File
_pickVideo() async {
    PickedFile? pickedFile = await picker.getVideo(source: ImageSource.gallery);
     _video = File(pickedFile!.path); 
    _videoPlayerController = VideoPlayerController.file(_video!)..initialize().then((_) {
      setState(() { });
      _videoPlayerController!.play();
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.blackColor,
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 15, right: 15),
       
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "COMPR",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[700],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Upload Your Video",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w700),
                  ),
                  // SizedBox(height: 10,),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 15),
                    child: Text(
                      "Tap the \"Choose Video button\" to select your video file",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                   if(_video != null) 
                Image.file(_video!)
            else
                Text("Click on Pick Image to select an Image", style: TextStyle(fontSize: 18.0),),
                  GestureDetector(
                    onTap: (){
                      _pickVideo();

                     // Navigator.push(context, MaterialPageRoute(builder: (Context)=>CompressVideo()));
                    },
                    child: Container(
                        width: 230,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        margin: EdgeInsets.only(top: 30, bottom: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: AppColors.appColor,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/cloud-computing.png",height: 30,width: 30,color: Colors.white,),
                              // Icon(
                              //   Icons.file_upload,
                              //   size: 30,
                              //   color: Colors.white,
                              // ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Choose Video",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Compressed Videos",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Image.asset("assets/icons/grid.png",height: 30,width: 30,color: Colors.white,)
                // Icon(
                //   Icons.all_inbox,
                //   color: Colors.white,
                //   size: 30,
                // )
              ],
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 150,
                            childAspectRatio: 0.6,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      return Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                //color: Colors.blue,
                                borderRadius: BorderRadius.circular(5),
                                 
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/image.png"),
                                    fit: BoxFit.cover)),
                                    child: Container(
                                  decoration: BoxDecoration(
                                 gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(.6),
                                Colors.black.withOpacity(.1),
                                Colors.black.withOpacity(0),
                              ],
                              stops: [0, .3, 1],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                              ),
                                    ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 10,
                            child: Text(
                              "670 MB",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
