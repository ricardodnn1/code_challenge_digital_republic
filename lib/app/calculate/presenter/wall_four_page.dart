import 'package:code_challenge/app/calculate/presenter/controller/calculate_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WallFourPage extends StatelessWidget {
  final BuildContext context;
  final CalculateController controller;
  const WallFourPage({super.key, required this.context, required this.controller});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    context = this.context;
    var controller = this.controller;

   return Container(
       padding: const EdgeInsets.all(15.0),
       width: double.infinity,
       height: double.infinity,
       child: SingleChildScrollView(
       child: Form(
         key: controller.formFourKey,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
              controller.result.isNotEmpty ? 
              Container(
                width: size.width, 
                height: 80, 
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text('${controller.result}', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
              ) : 
              controller.error.isNotEmpty ? 
              Container(
                width: size.width, 
                height: 80, 
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text('${controller.error}', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
              ) : 
              Container(),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color(0xFFf1471f),
                      style: BorderStyle.solid 
                    )
                  )
                ),
                child: Text('Veja a quantidade de tinta necessária para pintar a sua sala!', softWrap: true, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),),
              ),
              const SizedBox(height: 20),
              Text('Parede numero 4:', softWrap: true, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),),
              const SizedBox(height: 20),
              Text('Altura:', softWrap: true, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),),
              const SizedBox(height: 4),
              SizedBox(
                child: TextFormField( 
                  controller: controller.lenghtWallD,
                  keyboardType: TextInputType.number, 
                    decoration: InputDecoration(
                    hintText: 'Insira altura em metros',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14, color: Colors.black),
                    contentPadding:
                        const EdgeInsets.only(bottom: 5, top: 0, left: 15),
                    border: OutlineInputBorder( 
                        borderSide: const BorderSide(width: 1, color: Color(0xFFf1471f)),
                        borderRadius: BorderRadius.circular(8) 
                    ), 
                    errorBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xFFf1471f), width: 1),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xFFf1471f)),
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xFFf1471f)),
                        borderRadius: BorderRadius.circular(8))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },    
                  ),
              ),
              const SizedBox(height: 20),
              Text('Comprimento:', softWrap: true, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),),
              const SizedBox(height: 4),
              SizedBox(
                child: TextFormField( 
                  controller: controller.heightWallD,
                  keyboardType: TextInputType.number, 
                    decoration: InputDecoration(
                    hintText: 'Insira comprimento em metros',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14, color: Colors.black),
                    contentPadding:
                        const EdgeInsets.only(bottom: 5, top: 0, left: 15),
                    border: OutlineInputBorder( 
                        borderSide: const BorderSide(width: 1, color: Color(0xFFf1471f)),
                        borderRadius: BorderRadius.circular(8) 
                    ), 
                    errorBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xFFf1471f), width: 1),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xFFf1471f)),
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xFFf1471f)),
                        borderRadius: BorderRadius.circular(8))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                ),
            ),
             const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: controller.checkDoorD, 
                    onChanged: (value) {
                       controller.changeDoorD();
                    }
                  ),
                  Text('Possui porta', style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500))
                ],
              ), 
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: controller.checkWindowD, 
                    onChanged: (value) {
                       controller.changeWidowD();
                    }
                  ),
                  Text('Possui janela', style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500))
                ],
              ),
              const SizedBox(height: 20),
            Container(  
              height: 40,
              color: Colors.transparent,
              child:  SizedBox( 
              child: ElevatedButton(
                onPressed: () {   
                  if(controller.formFourKey.currentState!.validate()) {
                    controller.calculate();
                  }
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
                            'Calcular',
                            style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          const SizedBox(width: 10,),
                          const Icon(Icons.calculate)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
           ],
         ),
        ),
      ),
    );
  }
}