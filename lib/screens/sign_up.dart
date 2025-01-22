import 'package:dbproject/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  void _initializeVideo() {
    _videoController = VideoPlayerController.network(
      "https://cdn.pixabay.com/video/2019/09/19/27018-361798566_large.mp4", // Video URL
    )..initialize().then((_) {
        setState(() {}); // Refresh UI once video is initialized
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

          // Sign-up form
          Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    // Semi-transparent box
                    Padding(
                      padding: const EdgeInsets.only(left: 580, top: 130),
                      child: Container(
                        width: 400,
                        height: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: const Color.fromARGB(85, 255, 255, 255),
                          border: Border.symmetric(
                            horizontal: BorderSide(
                              color: const Color.fromARGB(255, 184, 178, 178),
                              width: 4,
                            ),
                            vertical: BorderSide(
                              color: const Color.fromARGB(255, 184, 178, 178),
                              width: 4,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Logo
                    Padding(
                      padding: const EdgeInsets.only(left: 655, top: 130),
                      child: Image.network(
                        "https://i.postimg.cc/QMMbw6g1/download.png",
                        height: 250,
                        color: const Color.fromARGB(255, 67, 25, 92),
                      ),
                    ),
                    // ID TextField
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
                              fillColor: const Color.fromARGB(101, 113, 43, 153),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Password TextField
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 430, left: 35),
                        child: Container(
                          height: 40,
                          width: 250,
                          child: TextField(
                            obscureText: true, // Password masking
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
                              fillColor: const Color.fromARGB(101, 113, 43, 153),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Register Button
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
                                MaterialPageRoute(builder: (context) => const Login()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text("REGISTER"),
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
