import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback showPromptScreen;
  const HomeScreen({super.key, required this.showPromptScreen});

  @override
  State<HomeScreen> createState() =>  HomeScreenState();
}

class  HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Container for all contents
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 0, 0, 0), //black gradient
              Color.fromARGB(255, 0, 0, 0), //black gradient
            ],
          ),
        ),
        
        // Column starts here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // First Expanded
              Expanded(
                flex: 3,
                
                //Padding around image in a stack
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),

                  // Stack starts here
                  child: Stack(
                    children: [
                      // Container for image
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/harmonai.png'
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),

                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.4,
                                color: const Color(0xFFFFFFFF),
                              ),
                              shape: BoxShape.circle,
                            ),
                              child: Container(
                                height: 110.0,
                                width: 110.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/harmonailogo.png'
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ), 
                            ),
                          ),
                        ),
                      ],
                  ),

                  // Stack ends here
                ),
              ),
            // Second Expanded
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                
                // Column starts here
                child: Column(
                  children: [
                    // RichText
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.inter(
                          height: 1.3,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 
                              'AI curated music playlists just for you \n',
                              style: GoogleFonts.inter(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                color: const Color(0xFFFFFFFF),
                              ),
                          ),
                          TextSpan(
                            text: 
                              'Start Listening Now!',
                              style: GoogleFonts.inter(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFFFFFFF),
                              ),
                          ),
                        ],
                      ),
                    ),

                    // Container Padding for arrow forward in a Padding
                    Padding(padding: const EdgeInsets.only(top: 20.0),

                    // Container for arrow forward in GestureDetector
                    child: GestureDetector(
                      onTap: widget.showPromptScreen,
                      // Container for arrow forward
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 213, 204, 255).withValues(alpha: 0.3), //withOpacity is deprecate so use withValues(alpah: double) instead
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          padding: const EdgeInsets.all(2.0),
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            shape: BoxShape.circle,
                          ),
                      
                          // Arrow forward centered
                          child: const Center(
                            
                            child: Icon(
                              Icons.arrow_forward,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                // Column ends here
              ),
              ),
          ],
        ),
        // Column ends here
      ), 
    );
  }
}