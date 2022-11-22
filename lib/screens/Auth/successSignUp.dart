import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_os/core/constant/color.dart';
import 'package:work_os/screens/Auth/customButtonAuth.dart';

import '../../controller/Auth/successSignUpController.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller=Get.put(SuccessSignUpControllerImp())  ;

    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        backgroundColor: ColorApp.primaryColor,
        elevation: 0.0,
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: ColorApp.grey)),
   
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
child:
// Column(
//   mainAxisAlignment: MainAxisAlignment.center,
  
//   children: [
//         Container(
//           width: double.infinity,
//           height: 600,
//           child: Image.asset('assets/images/success.PNG',
          
    
//     fit: BoxFit.cover,
    
//     ),
//         ),
//   ],
// )
 //
Column(

 children: [
Center(child: Icon(Icons.check_circle_outline,size: 200,color: Colors.green,)),
Text('Success !',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
SizedBox(height: 10,),
Text('your Account has been Created !',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
  SizedBox(height: 50,),

Container(
  width: double.infinity,
  child:   CustomButtonAuth(text:'Go To Login' , onPressed: (){
    

  
 }
 ),
),

],
),
      
    ));
  }
}