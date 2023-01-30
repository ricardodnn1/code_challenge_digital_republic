import 'package:code_challenge/app/home/presenter/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = context.watch<HomeController>();
    final size = MediaQuery.of(context).size;

    return Scaffold( 
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(  
                height: 60,
                color: Colors.transparent,
                child:  SizedBox( 
                child: ElevatedButton(
                  onPressed: () {  
                    Navigator.of(context).pushNamed('/calculate');
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shadowColor: const Color(0xFF8A9595),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Color(0xFFf1471f), Color(0xFFf6921e)]),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFFFFFFF),
                        ),
                        BoxShadow(
                          color:Color(0xFFFFFFFF),
                          spreadRadius: -12.0,
                          blurRadius: 8.0,
                        ),
                      ],
                    ),
                    child: Container( 
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ 
                          Text(
                            'Iniciar',
                            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 10,),
                            const Icon(Icons.arrow_circle_right_rounded)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}