import 'package:castle/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
            
              children: [
            
               //logo
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset('lib/images/castle.png',
                  height: 480,
                  
                  ),
                  ),
                  const SizedBox(height: 5),
            
                  //title
            
                  const Text('Just Do It',
                  style: TextStyle(
                  color: Color.fromARGB(255, 54, 38, 32),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                const SizedBox(height: 24),
            
                //sub title
            
                  const Text('Find your perfect fit and shop high-quality sneakers with our innovative shoe app',
                  style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  ),
            
                const SizedBox(height: 34,),
                //start now button
            
                GestureDetector(
                  onTap: () => Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) =>  HomePage(),
                      ),),
                  child:
                   Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.brown[900],
                    ),
                    padding: const EdgeInsets.all(25.0),
                    child: const Center(
                      child: Text('Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
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