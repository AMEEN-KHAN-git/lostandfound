import 'package:dbproject/screens/home.dart';
import 'package:dbproject/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late VideoPlayerController _videoController;
  bool _isToggled = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  void _initializeVideo() {
    _videoController = VideoPlayerController.network(
      "https://cdn.pixabay.com/video/2019/09/19/27018-361798566_large.mp4", // Video URL
      // Video URL
    )..initialize().then((_) {
        setState(() {});
        _videoController.setLooping(true);
        _videoController.play();
      }).catchError((error) {
        debugPrint("Error initializing video: $error");
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Video background
          if (_videoController.value.isInitialized)
            Positioned.fill(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _videoController.value.size.width,
                  height: _videoController.value.size.height,
                  child: VideoPlayer(_videoController),
                ),
              ),
            )
          else
            const Center(child: CircularProgressIndicator()),

          // Your existing content goes here
          Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    // Background image (kept the same)
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 0, top: 0),
                    //   child: Container(
                    //     width: 1580,
                    //     height: 729.5,
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //         image: NetworkImage(
                    //           "https://i.postimg.cc/3wkM8p9Q/TECHNOLOGY-BACKGROUND.jpg",
                    //         ),
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Animated Box
                    Padding(
                      padding: const EdgeInsets.only(left: 580, top: 130),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isToggled = !_isToggled;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOut,
                          width: 400,
                          height: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(_isToggled ? 30 : 60),
                              bottomRight:
                                  Radius.circular(_isToggled ? 30 : 60),
                              topLeft: Radius.circular(_isToggled ? 30 : 60),
                              bottomLeft: Radius.circular(_isToggled ? 30 : 60),
                            ),
                            color: _isToggled
                                ? const Color.fromARGB(45, 121, 67, 192)
                                : const Color.fromARGB(83, 255, 255, 255),
                            border: Border.symmetric(
                              horizontal: BorderSide(
                                color: const Color.fromARGB(255, 184, 178, 178),
                                width: _isToggled ? 2 : 4,
                              ),
                              vertical: BorderSide(
                                color: const Color.fromARGB(255, 184, 178, 178),
                                width: _isToggled ? 2 : 4,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Login form elements
                    Padding(
                      padding: const EdgeInsets.only(left: 655, top: 130),
                      child: Container(
                        child: Image.network(
                          "https://i.postimg.cc/QMMbw6g1/download.png",
                          height: 250,
                          color: const Color.fromARGB(255, 67, 25, 92),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 380, left: 35),
                        child: Container(
                          height: 40,
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "MBCET ID",
                              hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              fillColor:
                                  const Color.fromARGB(101, 113, 43, 153),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 430, left: 35),
                        child: Container(
                          height: 40,
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "PASSWORD",
                              hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              fillColor:
                                  const Color.fromARGB(101, 113, 43, 153),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 550, left: 30),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                          child: Text(
                            "Don't have an Account? Sign up",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 1, 1, 1),
                              fontSize: 15,
                              decorationStyle: TextDecorationStyle.wavy,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 460, left: 30),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 25,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            child: Text("LOGIN"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
