import 'package:flutter/material.dart';
import 'package:hospitalghq/models/buttons.dart';
import 'package:hospitalghq/models/inputbox.dart';
import 'package:hospitalghq/pages/homepagenormalPHCDamboZaria.dart';
import 'package:hospitalghq/pages/homepagenormalPHCKDoki.dart';
import 'package:hospitalghq/pages/homepagenormalPHCKafAKafanchan.dart';
import 'package:hospitalghq/pages/homepagenormalPHCKudenden.dart';
import 'package:hospitalghq/pages/homepagenormalPHCMJos.dart';
import 'package:hospitalghq/pages/homepagenormalPHCMiyettiAllahRigasa.dart';
import 'package:hospitalghq/pages/homepagenormalPHCNarayi.dart';
import 'package:hospitalghq/pages/homepagenormalPHCSabo.dart';
import 'package:hospitalghq/pages/homepagenormalPHCTelevision.dart';
import 'package:hospitalghq/pages/homepagenormalPHCTudunWadaZaria.dart';
import 'package:hospitalghq/pages/homepagenormalPHCUngwanSarki.dart';
import 'package:hospitalghq/pages/homepagenormalPHCUngwanShanu.dart';

class RoleDecision extends StatefulWidget {
   RoleDecision({super.key});

  @override
  State<RoleDecision> createState() => _RoleDecisionState();
}

class _RoleDecisionState extends State<RoleDecision> {
   final TextEditingController _departmentKey = TextEditingController();

   @override
   void dispose() {
     _departmentKey.dispose();
     super.dispose();
   }

  Widget build(BuildContext context) {   
        var mediaQuery = MediaQuery.of(context).size; 

    void departmentChecker(){
      AlertDialog alert = AlertDialog(
    title: Text("Incorrect key. Check with your administrator for the correct key", style: TextStyle(fontSize: mediaQuery.width * 0.030,)),
  );
    if (_departmentKey.text == '947594') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCDoki(),//pass any arguments
           ));
    } else if(_departmentKey.text == '432847'){
        Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCSabo(),//pass any arguments
           ));
    } 
    else if(_departmentKey.text == '354574'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCTelevision(),//pass any arguments
           ));
    }
    else if(_departmentKey.text == '088652'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCNarayi(),//pass any arguments
           ));
    }
    else if(_departmentKey.text == '583263'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCUngwanShanu(),//pass any arguments
           ));
    }
    else if(_departmentKey.text == '546824'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCMiyettiAllahRigasa(),//pass any arguments
           ));
    }
    else if(_departmentKey.text == '045842'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCKudenden(),//pass any arguments
           ));
    }
    else if(_departmentKey.text == '184393'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCTudenWadaZaria(),//pass any arguments
           ));
    }
    else if(_departmentKey.text == '521045'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCDamboZaria(),//pass any arguments
           ));
    }
    else if(_departmentKey.text == '502842'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCKafAKafanchan(),//pass any arguments
           ));
    }
    else if(_departmentKey.text == '374679'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCUngwanSarki(),//pass any arguments
           ));
    }
    else if(_departmentKey.text == '028333'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePageNormalPHCMJos(),//pass any arguments
           ));
    }
    else{
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
    }
    }    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text('DEPARTMENT', style: TextStyle(fontSize: mediaQuery.width * 0.040,color: Colors.white),)),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Center(child: Text('Enter your department key', style: TextStyle(fontSize: mediaQuery.width * 0.040,),),),
           InputNumberBox(title: 'Ask your admin for your department key', controller: _departmentKey,),
          Actionbutton(elevatedButtonTitle: 'Submit', onPress: (){departmentChecker();})
          ],
        ),
      ),
    );
  }
}