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
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const SizedBox(height: 30),
                 Text('Parede A:',
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF353838),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        decoration: TextDecoration.none)
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    child: TextFormField(
                      controller: controller.wallA, 
                      keyboardType: TextInputType.number, 
                       decoration: InputDecoration(
                        hintText: 'Insira o comprimento em m²',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.black),
                        contentPadding:
                            const EdgeInsets.only(bottom: 5, top: 0, left: 15),
                        border: OutlineInputBorder( 
                            borderSide: const BorderSide(width: 1, color: Color(0xFFFAC5CD)),
                            borderRadius: BorderRadius.circular(8) 
                        ), 
                         errorBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFFAC5CD), width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFFAC5CD)),
                            borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFFAC5CD)),
                            borderRadius: BorderRadius.circular(8))),
                      ),
                  ),
                  const SizedBox(height: 10),
                 Text('Parede B:',
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF353838),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        decoration: TextDecoration.none)),
                  const SizedBox(height: 4),
                  SizedBox(
                    child: TextFormField(
                      controller: controller.wallB, 
                      keyboardType: TextInputType.number, 
                       decoration: InputDecoration(
                        hintText: 'Insira o comprimento em m²',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.black),
                        contentPadding:
                          const EdgeInsets.only(bottom: 5, top: 0, left: 15),
                        border: OutlineInputBorder( 
                          borderSide: const BorderSide(width: 1, color: Color(0xFFFAC5CD)),
                          borderRadius: BorderRadius.circular(8) 
                        ), 
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFFAC5CD), width: 1),
                          borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFFAC5CD)),
                          borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFFAC5CD)),
                          borderRadius: BorderRadius.circular(8))),
                      ),
                  ),
                  const SizedBox(height: 10),
                 Text('Parede C:',
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF353838),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        decoration: TextDecoration.none)),
                  const SizedBox(height: 4),
                  SizedBox(
                    child: TextFormField(
                      controller: controller.wallC, 
                      keyboardType: TextInputType.number, 
                       decoration: InputDecoration(
                        hintText: 'Insira o comprimento em m²',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.black),
                        contentPadding:
                            const EdgeInsets.only(bottom: 5, top: 0, left: 15),
                        border: OutlineInputBorder( 
                            borderSide: const BorderSide(width: 1, color: Color(0xFFFAC5CD)),
                            borderRadius: BorderRadius.circular(8) 
                        ), 
                         errorBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFFAC5CD), width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFFAC5CD)),
                            borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFFAC5CD)),
                            borderRadius: BorderRadius.circular(8))),
                      ),
                  ),
                  const SizedBox(height: 10),
                 Text('Parede D:',
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF353838),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        decoration: TextDecoration.none)),
                  const SizedBox(height: 4),
                  SizedBox(
                    child: TextFormField(
                      controller: controller.wallD, 
                      keyboardType: TextInputType.number, 
                       decoration: InputDecoration(
                        hintText: 'Insira o comprimento em m²',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.black),
                        contentPadding:
                            const EdgeInsets.only(bottom: 5, top: 0, left: 15),
                        border: OutlineInputBorder( 
                            borderSide: const BorderSide(width: 1, color: Color(0xFFFAC5CD)),
                            borderRadius: BorderRadius.circular(8) 
                        ), 
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFFAC5CD), width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFFAC5CD)),
                            borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFFAC5CD)),
                            borderRadius: BorderRadius.circular(8))),
                      ),
                  ),
                const SizedBox(height: 30),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container( 
                  width: size.width / 2.2,
                  height: 50,
                  color: Colors.transparent,
                  child:  SizedBox( 
                  child: ElevatedButton(
                      onPressed: () async {  
                      
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shadowColor: const Color(0xFF8A9595),
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Color(0xFF0D5257), Color(0xFF0D5257)]),
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
                                  'Calcular',
                                  style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              ),
                            ),
                          ),
                        ),
                    ),
                  const SizedBox(width: 15),
                  Container( 
                  width: size.width / 2.2,
                  height: 50,
                  color: Colors.transparent,
                  child:  SizedBox( 
                  child: ElevatedButton(
                      onPressed: () async {  
                      
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shadowColor: const Color(0xFF8A9595),
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Color(0xFF0D5257), Color(0xFF0D5257)]),
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
                                  'Calcular',
                                  style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              ),
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
                const SizedBox(height: 10), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}