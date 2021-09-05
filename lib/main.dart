import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
   );
     }
class MyApp extends StatelessWidget{
  const MyApp ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      home: Calculator(),

    );
  }
}
class Calculator extends StatefulWidget {
   @override
  _CalculatorState createState() => _CalculatorState();
   }

class _CalculatorState extends State<Calculator> {
   Widget _myButton (String btnText , double btnHeight, Color btnColor){
        return Container(
            height: MediaQuery.of(context).size.height * .1 * btnHeight,
                  child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text(btnText,style: TextStyle(color: Colors.black, fontSize: 30),),
                      style: ElevatedButton.styleFrom(primary:btnColor,),
                        ), 
                   );
                }
           @override
  Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.grey.shade300,
               appBar: AppBar(
                  backgroundColor: Colors.orange.shade800,
                  title: Text('Calcolator',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold, ),),
          
                  ),
               body: Column(
                   children: [
                      SizedBox(height: 140,),
                      Container(
                                             
                          child: Text('0',style: TextStyle(fontSize: 38,color: Colors.black,fontWeight: FontWeight.bold,),),
                               alignment: Alignment.centerRight,padding: EdgeInsets.symmetric(horizontal: 8,),
                              ),    
           
                      Container( 
                          child: Text('0',style: TextStyle(fontSize: 36,color: Colors.grey.shade700),),
                               alignment: Alignment.centerRight,padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                               ),    
                      Expanded(child: Divider(),),
                         Row(children: [
                           Container(
                              width: MediaQuery.of(context).size.width*.75,
                              child: Table(
                                  children: [
                                      TableRow(
                                         children: [
                                            _myButton('AC', 1, Colors.grey.shade300,),
                                            _myButton('DEL', 1, Colors.grey.shade300,),
                                            _myButton('*', 1, Colors.grey.shade300,),
                                               ]),
                                      TableRow(
                                         children: [
                                            _myButton('7', 1, Colors.grey.shade300,),
                                            _myButton('8', 1, Colors.grey.shade300,),
                                            _myButton('9', 1, Colors.grey.shade300,),
                                               ]),
                                      TableRow(
                                         children: [
                                            _myButton('4', 1, Colors.grey.shade300,),
                                            _myButton('5', 1, Colors.grey.shade300,),
                                            _myButton('6', 1, Colors.grey.shade300,),
                                               ]),
                                      TableRow(
                                         children: [
                                            _myButton('1', 1, Colors.grey.shade300,),
                                            _myButton('2', 1, Colors.grey.shade300,),
                                            _myButton('3', 1, Colors.grey.shade300,),
                                               ]),
                                      TableRow(
                                         children: [
                                            _myButton('.', 1, Colors.grey.shade300,),
                                            _myButton('0', 1, Colors.grey.shade300,),
                                            _myButton('00', 1, Colors.grey.shade300,),
                                               ]),
                                           ],),
                                         ),
                                   Container(
                                      width: MediaQuery.of(context).size.width*.25,
                                          child: Table(
                                             children: [
                                                 TableRow(
                                                    children: [
                                                      _myButton('÷', 1, Colors.grey.shade300,),
                                                          ],
                                                      ),
                                   
                                                 TableRow(
                                                    children: [
                                                      _myButton('+', 1, Colors.grey.shade300,),
                                                          ],
                                                     ),

                                                 TableRow(
                                                    children: [
                                                      _myButton('-', 1, Colors.grey.shade300,),
                                                         ],
                                                    ),
                                          
                                                 TableRow(
                                                    children: [
                                                      _myButton('=', 2, Colors.orange.shade800,),
                                                          ],
                                                     ),
                                      
                                                ],),
                                           )
                                       ],)
                                      ],
                                   ),
                                 );
                               }
                             }


