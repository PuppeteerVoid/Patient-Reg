import 'package:flutter/material.dart';
import 'package:hospitalghq/models/container.dart';
import 'package:hospitalghq/models/inputbox.dart';
import 'package:hospitalghq/pages/subsequentvisitpage.dart';
import 'package:hospitalghq/pages/roledecisionpage.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:uuid/uuid.dart';

class HomePageNormalPHCNarayi extends StatefulWidget {
  HomePageNormalPHCNarayi({super.key});

  @override
  State<HomePageNormalPHCNarayi> createState() => _HomePageNormalPHCNarayiState();
}

class _HomePageNormalPHCNarayiState extends State<HomePageNormalPHCNarayi> {
  // ignore: non_constant_identifier_names
  HomePageNormal(){
    _selectedSexVal = _sexList[0];
    _selectedMaritalStatusVal = _maritalStatusList[0];
    _selectedcurrentEmploymentStatusVal = _currentEmploymentStatusList[0];
    _selectededucationVal = _educationList[0];
    _selectedreligionVal = _religionList[0];
  }

  final _formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();
  final TextEditingController _surName = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _contactAddress = TextEditingController();
  final TextEditingController _contactPhoneNumber = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final TextEditingController _religion = TextEditingController();
  final TextEditingController _nextofKin = TextEditingController();
  final TextEditingController _relationshiptoNextofKin = TextEditingController();
  final TextEditingController _addressofNextofKin = TextEditingController();
  final TextEditingController _contactPhoneNumberofNextofKin = TextEditingController();
  final TextEditingController _treatmentAssessmentRegistrationDate = TextEditingController();
    final TextEditingController _hepatitisBStatusReason = TextEditingController();
  final TextEditingController _assessmentRegistrationDate = TextEditingController();
      final TextEditingController _hepatitisCStatusReason = TextEditingController();
  final TextEditingController _assessmentRegistration1Date = TextEditingController();
   final TextEditingController _resultDate = TextEditingController();
    final TextEditingController _tuberculosisScreenReason = TextEditingController();
  final TextEditingController _generalMedicalScreeningFindings = TextEditingController(); 
  final TextEditingController _commoditiesMedications = TextEditingController();
  final TextEditingController _commoditiesOthers = TextEditingController();

  final _sexList = ['Male', 'Female', 'Other'];
  String? _selectedSexVal = 'Male';
  final _maritalStatusList = ['Single (Never Married)', 'Married (Together)', 'Married (separated)', 'Divorced'];
  String? _selectedMaritalStatusVal = 'Single (Never Married)';
  final _currentEmploymentStatusList = ['Unemployed', 'Full time Employed (at least 35 hours a week)', 'Part time Employed (less than 35 hours a week)', 'Unstable/Part time (infrequent, unstructured, takes on jobs when they are available)'];
  String? _selectedcurrentEmploymentStatusVal = 'Unemployed';
  final _educationList = ['Primary', 'Junior Secondary', 'Senior Secondary', 'First Stage Tertiary', 'Post Graduate'];
  String? _selectededucationVal = 'Primary'; 
  final _religionList = ['Christian', 'Muslim', 'Other (Please specify)',];
  String? _selectedreligionVal = 'Christian'; 
  final _hivStatusList = ['Negative', 'Positive',];
  String? _selectedhivStatusVal = 'Negative'; 
  final _hivStatusPositiveList = ['Treatment Assessment Registration Date', 'Declined Treatment',];
  String? _selectedhivStatusPositiveVal = 'Treatment Assessment Registration Date'; 
  final _hepatitisBStatusList = ['Negative', 'Positive',];
  String? _selectedhepatitisBStatusVal = 'Negative'; 
  final _hepatitisBStatusPositiveList = ['Assessment Date', 'Declined Treatment',];
  String? _selectedhepatitisBStatusPositiveVal = 'Assessment Date'; 
  final _hepatitisBStatusNegativeList = ['Vaccination (Yes)', 'Vaccination (No)',];
  String? _selectedhepatitisBStatusNegativeVal = 'Vaccination (Yes)'; 
  final _hepatitisCStatusList = ['Negative', 'Positive',];    
  String? _selectedhepatitisCStatusVal = 'Negative'; 
  final _hepatitisCStatusPositiveList = ['Assessment Date', 'Declined Treatment',];
  String? _selectedhepatitisCStatusPositiveVal = 'Assessment Date'; 
  final _hepatitisCStatusNegativeList = ['Vaccination (Yes)', 'Vaccination (No)',];
  String? _selectedhepatitisCStatusNegativeVal = 'Vaccination (Yes)'; 
  final _tuberculosisScreenList = ['Tuberculosis Screen (Yes)', 'Tuberculosis Screen (No)',];
  String? _selectedtuberculosisScreenVal = 'Tuberculosis Screen (Yes)'; 
  final _commoditiesDisbursedList = ['Condoms', 'Lubricants','IEC Materials', 'Medications','Others'];
  String? _selectedcommoditiesDisbursedVal = 'Condoms'; 
  String retestDate = Jiffy.now().add(months: 2).format(pattern: 'do MMMM yyyy');
  String id ='';
  String region = 'PHC Narayi';

    @override
   void dispose() {
     _surName.dispose();
     _firstName.dispose();
     _contactAddress.dispose();
     _contactPhoneNumber.dispose();
     _email.dispose();
     _date.dispose();
     _religion.dispose();
     _nextofKin.dispose();
     _hepatitisBStatusReason.dispose();
     _treatmentAssessmentRegistrationDate.dispose();
     _hepatitisCStatusReason.dispose();
     _assessmentRegistrationDate.dispose();
     _assessmentRegistration1Date.dispose();
     _resultDate.dispose();
     _tuberculosisScreenReason.dispose();
     _generalMedicalScreeningFindings.dispose();
     _commoditiesMedications.dispose();
     _commoditiesOthers.dispose();
     super.dispose();
   }
@override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
      return Scaffold(
      appBar: AppBar(title: Center(child: Text('PATIENT REGISTRATION',style: TextStyle(color: Colors.white, fontSize: mediaQuery.width * 0.024,fontWeight: FontWeight.w700),)),backgroundColor: Colors.purple,iconTheme: const IconThemeData(
    color: Colors.white, //change your color here
  ),),
  drawer: Drawer(
    width: mediaQuery.width * 0.26,
    child: Container(
      color: Colors.purple,
      child: ListView(
        children: [
          DrawerHeader(child: Center(child: Text('PAGES', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w500, color: Colors.white),))),
          ListTile(
            leading: Icon(Icons.home, color: Colors.white,),
            title: Text('Inputer Page', style: TextStyle(fontSize: mediaQuery.width * 0.019, fontWeight: FontWeight.w500, color: Colors.white),),
            onTap: (){Navigator.pop(context);}
          ),
          SizedBox(height: mediaQuery.height * 0.045,),
          ListTile(
            leading: Icon(Icons.edit_document, color: Colors.white,),
            title: Text('Subsequent Visit Page', style: TextStyle(fontSize: mediaQuery.width * 0.019, fontWeight: FontWeight.w500, color: Colors.white),),
            onTap: (){  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubsequentVisit()));}
          ),
          SizedBox(height: mediaQuery.height * 0.045,),
          ListTile(
            leading: Icon(Icons.key, color: Colors.white,),
            title: Text('Role Decision Page', style: TextStyle(fontSize: mediaQuery.width * 0.019, fontWeight: FontWeight.w500, color: Colors.white),),
            onTap: (){  Navigator.of(context).push(MaterialPageRoute(builder: (context) => RoleDecision()));}
          ),
        ],
      ),
    ),
  ),

      body: SingleChildScrollView(child: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: mediaQuery.height * 0.04, horizontal: mediaQuery.width * 0.04),
          child: Column(children: [
             ContainerBox(title: '${region}'),
            SizedBox(height: mediaQuery.height * 0.03,),
            Align(alignment: Alignment.centerLeft,child: Text('A. Socio/Demographic Information', style: TextStyle(fontSize: mediaQuery.width * 0.035, fontWeight: FontWeight.w500),)),
            SizedBox(height: mediaQuery.height * 0.03,),
            //
            //Client Name
            //
            Center(child: Text('1. Client Name', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),                 
            InputTextBox(title: 'Surname', controller: _surName), 
            InputTextBox(title: 'Firstname', controller: _firstName), 
            SizedBox(height: mediaQuery.height * 0.06,),
            //
            //Client Code
            //
            Center(child: Text('2. Client Code', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),      
            SizedBox(height: mediaQuery.height * 0.015,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.02,),
          width: mediaQuery.width * 0.6,
          height: mediaQuery.height * 0.1,
          decoration: BoxDecoration(            
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$id', style: TextStyle(fontSize: mediaQuery.width * 0.025, fontWeight: FontWeight.w400),),
              IconButton(icon: Icon(Icons.rotate_left_rounded), iconSize: mediaQuery.width * 0.035, onPressed: (){
                setState(() {
                  const uuid = Uuid();
                  id = uuid.v4();
                });
              },),
            ],
          ),
        ),
           
           SizedBox(height: mediaQuery.height * 0.06,),
           //
           //Contact Address
           //
            Center(child: Text('3. Contact Address', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),                 
            InputTextBox(title: '', controller: _contactAddress),    
            SizedBox(height: mediaQuery.height * 0.06,),
            //
            //Contact Phone Number
            //
            Center(child: Text('4. Contact Phone Number', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),                 
            InputNumberBox(title: '', controller: _contactPhoneNumber),  
            SizedBox(height: mediaQuery.height * 0.06,),
            //
            //Email
            //
            Center(child: Text('5. Email', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),                 
            InputNumberBox(title: '', controller: _email),
            SizedBox(height: mediaQuery.height * 0.06,),    
            //
            ////Date of Birth
            //      
            Center(child: Text('6. Date of Birth', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),                 
            TextFormField(
                    controller: _date,
                    onTap: ()async {
                      DateTime? pickeddate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(3000));
      
                      if (pickeddate !=null) {
                        setState(() {
                          _date.text = DateFormat('yyy-MM-dd').format(pickeddate);
                        });
                      }
                    },
            decoration: InputDecoration(
              labelStyle: TextStyle(color:  Colors.purple,),
              labelText:"Select Date",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                 borderSide: BorderSide( width: 2)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.purple, width: 3)
              )
            ),
          ),
            SizedBox(height: mediaQuery.height * 0.06,),  
            //
            //Sex
            //        
            Center(child: Text('7. Sex', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),            
            SizedBox(height: mediaQuery.height * 0.02,),      
            DropdownButtonFormField(value: _selectedSexVal,items: _sexList.map((e)=> DropdownMenuItem(child: Text(e,style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectedSexVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.person_rounded, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                 borderSide: BorderSide( width: 2,),
              )
            ),),
            SizedBox(height: mediaQuery.height * 0.06,), 
            //
            //Marital Status
            //         
            Center(child: Text('8. Marital Status', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),            
            SizedBox(height: mediaQuery.height * 0.02,),      
            DropdownButtonFormField(value: _selectedMaritalStatusVal,items: _maritalStatusList.map((e)=> DropdownMenuItem(child: Text(e,style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectedMaritalStatusVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.person_sharp, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                 borderSide: BorderSide( width: 2,)
              )
            ),),
            SizedBox(height: mediaQuery.height * 0.06,), 
            //
            //Current Employment Status
            //         
            Center(child: Text('9. Current Employment Status', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),            
            SizedBox(height: mediaQuery.height * 0.02,),      
            DropdownButtonFormField(value: _selectedcurrentEmploymentStatusVal,items: _currentEmploymentStatusList.map((e)=> DropdownMenuItem(child: Text(e, style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectedcurrentEmploymentStatusVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.work_history, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),),        
          SizedBox(height: mediaQuery.height * 0.06,), 
            //
            //Highest Level of Education Completed
            //         
            Center(child: Text('10. Highest Level of Education Completed', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),            
            SizedBox(height: mediaQuery.height * 0.02,),      
            DropdownButtonFormField(value: _selectededucationVal,items: _educationList.map((e)=> DropdownMenuItem(child: Text(e, style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectededucationVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.school, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),),        
          SizedBox(height: mediaQuery.height * 0.06,), 
            //
            //Religion
            //         
            Center(child: Text('11. Religion', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),            
            SizedBox(height: mediaQuery.height * 0.02,),      
            DropdownButtonFormField(value: _selectedreligionVal,items: _religionList.map((e)=> DropdownMenuItem(child: Text(e, style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectedreligionVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.church, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            ),),        
            _selectedreligionVal == _religionList[2]? InputTextBox(title: 'Enter your Religion', controller: _religion) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),
            SizedBox(height: mediaQuery.height * 0.06,),
           //
           //Name of Next of Kin
           //
            Center(child: Text('13. Name of Next of Kin', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),                 
            InputTextBox(title: '', controller: _nextofKin),    
            SizedBox(height: mediaQuery.height * 0.06,),
           //
           //Relationship to Next of Kin
           //
            Center(child: Text('14. Relationship to Next of Kin', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),                 
            InputTextBox(title: '', controller: _relationshiptoNextofKin),    
            SizedBox(height: mediaQuery.height * 0.06,),
            //
           //Address of Next of Kin
           //
            Center(child: Text('15. Address of Next of Kin', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),                 
            InputTextBox(title: '', controller: _addressofNextofKin),    
            SizedBox(height: mediaQuery.height * 0.06,),
            //
           //Contact Phone Number of Next of Kin
           //
            Center(child: Text('16. Contact Phone Number of Next of Kin', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),                 
            InputNumberBox(title: '', controller: _contactPhoneNumberofNextofKin),    
            SizedBox(height: mediaQuery.height * 0.2  ,),
            //
            //
            //Intake Screening
            //
            //
            Align(alignment: Alignment.centerLeft,child: Text('B. Intake Screening', style: TextStyle(fontSize: mediaQuery.width * 0.035, fontWeight: FontWeight.w500),)),
            SizedBox(height: mediaQuery.height * 0.03,),
            //
            //HIV STATUS
            //        
            Center(child: Text('HIV STATUS', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),            
            SizedBox(height: mediaQuery.height * 0.02,),      
            DropdownButtonFormField(value: _selectedhivStatusVal,items: _hivStatusList.map((e)=> DropdownMenuItem(child: Text(e,style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectedhivStatusVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.medical_information, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),),
            _selectedhivStatusVal == _hivStatusList[0]? ContainerBox(title: 'Retest Date: ${retestDate.toString()}')  : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),
             SizedBox(height: mediaQuery.height * 0.02 ,), 
            _selectedhivStatusVal == _hivStatusList[1]? DropdownButtonFormField(value: _selectedhivStatusPositiveVal,items: _hivStatusPositiveList.map((e)=> DropdownMenuItem(child: Text(e,style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectedhivStatusPositiveVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.medical_information, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),
            SizedBox(height: mediaQuery.height * 0.02 ,), 
            _selectedhivStatusVal == _hivStatusList[1]? _selectedhivStatusPositiveVal == _hivStatusPositiveList[0]? TextFormField(
                    controller: _treatmentAssessmentRegistrationDate,
                    onTap: ()async {
                      DateTime? pickeddate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(3000));
      
                      if (pickeddate !=null) {
                        setState(() {
                          _treatmentAssessmentRegistrationDate.text = DateFormat('yyy-MM-dd').format(pickeddate);
                        });
                      }
                    },
            decoration: InputDecoration(
              labelStyle: TextStyle(color:  Colors.purple,),
              labelText:"Select Treatment Assessment Registration Date",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                 borderSide: BorderSide( width: 2)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.purple, width: 3)
              )
            ),
          ): Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),): Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),
            SizedBox(height: mediaQuery.height * 0.06,), 
            //
            //Hepatitis B Status
            //         
            Center(child: Text('Hepatitis B Status', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),            
            SizedBox(height: mediaQuery.height * 0.02,),      
            DropdownButtonFormField(value: _selectedhepatitisBStatusVal,items: _hepatitisBStatusList.map((e)=> DropdownMenuItem(child: Text(e,style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectedhepatitisBStatusVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.medical_information, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),),
      
            _selectedhepatitisBStatusVal == _hepatitisBStatusList[0]? Column(
              children: [
                          SizedBox(height: mediaQuery.height * 0.02 ,), 
                DropdownButtonFormField(value: _selectedhepatitisBStatusNegativeVal,items: _hepatitisBStatusNegativeList.map((e)=> DropdownMenuItem(child: Text(e,style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
                  setState(() {
                    _selectedhepatitisBStatusNegativeVal = val as String;
                  });
                },
                icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
                dropdownColor: Colors.purple,
                decoration: InputDecoration(
                  labelText: '',
                  labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
                  prefixIcon: const Icon(Icons.medical_information, color: Colors.purple,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),),
              ],
            ) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),), 
            _selectedhepatitisBStatusVal == _hepatitisBStatusList[0]? _selectedhepatitisBStatusNegativeVal == _hepatitisBStatusNegativeList[1]? Column(
              children: [
                InputTextBox(title: 'Enter your Reason', controller: _hepatitisBStatusReason),
              ],
            )  : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),): Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),
            
            _selectedhepatitisBStatusVal == _hepatitisBStatusList[1]? Column(
              children: [
                SizedBox(height: mediaQuery.height * 0.02 ,), 
                DropdownButtonFormField(value: _selectedhepatitisBStatusPositiveVal,items: _hepatitisBStatusPositiveList.map((e)=> DropdownMenuItem(child: Text(e,style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
                  setState(() {
                    _selectedhepatitisBStatusPositiveVal = val as String;
                  });
                },
                icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
                dropdownColor: Colors.purple,
                decoration: InputDecoration(
                  labelText: '',
                  labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
                  prefixIcon: const Icon(Icons.medical_information, color: Colors.purple,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),),
              ],
            ) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),
        
             _selectedhepatitisBStatusVal == _hepatitisBStatusList[1]? _selectedhepatitisBStatusPositiveVal == _hepatitisBStatusPositiveList[0]? Column(
               children: [
                        SizedBox(height: mediaQuery.height * 0.02 ,), 
                 TextFormField(
                        controller: _assessmentRegistrationDate,
                        onTap: ()async {
                          DateTime? pickeddate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(3000));
      
                          if (pickeddate !=null) {
                            setState(() {
                              _assessmentRegistrationDate.text = DateFormat('yyy-MM-dd').format(pickeddate);
                            });
                          }
                        },
            decoration: InputDecoration(
                  labelStyle: TextStyle(color:  Colors.purple,),
                  labelText:"Select Assessment Registration Date",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide( width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.purple, width: 3)
                  )
            ),
          ),
               ],
             ): Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),
            SizedBox(height: mediaQuery.height * 0.06,),  
            //
            //Hepatitis C Status
            //         
            Center(child: Text('Hepatitis C Status', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),            
            SizedBox(height: mediaQuery.height * 0.02,),      
            DropdownButtonFormField(value: _selectedhepatitisCStatusVal,items: _hepatitisCStatusList.map((e)=> DropdownMenuItem(child: Text(e, style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectedhepatitisCStatusVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.medical_information, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),),        
            _selectedhepatitisCStatusVal == _hepatitisCStatusList[0]? Column(
              children: [
                          SizedBox(height: mediaQuery.height * 0.02 ,), 
                DropdownButtonFormField(value: _selectedhepatitisCStatusNegativeVal,items: _hepatitisCStatusNegativeList.map((e)=> DropdownMenuItem(child: Text(e,style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
                  setState(() {
                    _selectedhepatitisCStatusNegativeVal = val as String;
                  });
                },
                icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
                dropdownColor: Colors.purple,
                decoration: InputDecoration(
                  labelText: '',
                  labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
                  prefixIcon: const Icon(Icons.medical_information, color: Colors.purple,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),),
              ],
            ) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),), 
            _selectedhepatitisCStatusVal == _hepatitisCStatusList[0]? _selectedhepatitisCStatusNegativeVal == _hepatitisCStatusNegativeList[1]? Column(
              children: [
                InputTextBox(title: 'Enter your Reason', controller: _hepatitisCStatusReason),
              ],
            )  : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),): Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),
            
            _selectedhepatitisCStatusVal == _hepatitisCStatusList[1]? Column(
              children: [
                SizedBox(height: mediaQuery.height * 0.02 ,), 
                DropdownButtonFormField(value: _selectedhepatitisCStatusPositiveVal,items: _hepatitisCStatusPositiveList.map((e)=> DropdownMenuItem(child: Text(e,style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
                  setState(() {
                    _selectedhepatitisCStatusPositiveVal = val as String;
                  });
                },
                icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
                dropdownColor: Colors.purple,
                decoration: InputDecoration(
                  labelText: '',
                  labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
                  prefixIcon: const Icon(Icons.medical_information, color: Colors.purple,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),),
              ],
            ) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),
        
             _selectedhepatitisCStatusVal == _hepatitisCStatusList[1]? _selectedhepatitisCStatusPositiveVal == _hepatitisBStatusPositiveList[0]? Column(
               children: [
                        SizedBox(height: mediaQuery.height * 0.02 ,), 
                 TextFormField(
                        controller: _assessmentRegistration1Date,
                        onTap: ()async {
                          DateTime? pickeddate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(3000));
      
                          if (pickeddate !=null) {
                            setState(() {
                              _assessmentRegistration1Date.text = DateFormat('yyy-MM-dd').format(pickeddate);
                            });
                          }
                        },
            decoration: InputDecoration(
                  labelStyle: TextStyle(color:  Colors.purple,),
                  labelText:"Select Assessment Registration Date",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide( width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.purple, width: 3)
                  )
            ),
          ),
               ],
             ): Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),
             
          SizedBox(height: mediaQuery.height * 0.06,), 
          //
          //
            //Tuberculosis Screen
            //         
            Center(child: Text('Tuberculosis Screen', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),            
            SizedBox(height: mediaQuery.height * 0.02,),      
            DropdownButtonFormField(value: _selectedtuberculosisScreenVal,items: _tuberculosisScreenList.map((e)=> DropdownMenuItem(child: Text(e, style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectedtuberculosisScreenVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.medical_information, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),),        
            _selectedtuberculosisScreenVal == _tuberculosisScreenList[0]? Column(
              children: [
                          SizedBox(height: mediaQuery.height * 0.02 ,), 
                 TextFormField(
                        controller: _resultDate,
                        onTap: ()async {
                          DateTime? pickeddate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(3000));
      
                          if (pickeddate !=null) {
                            setState(() {
                              _resultDate.text = DateFormat('yyy-MM-dd').format(pickeddate);
                            });
                          }
                        },
            decoration: InputDecoration(
                  labelStyle: TextStyle(color:  Colors.purple,),
                  labelText:"Select Result Date",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide( width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.purple, width: 3)
                  )
            ),
          ),
              ],
            ) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),), 
            _selectedtuberculosisScreenVal == _tuberculosisScreenList[1]? Column(
              children: [
                InputTextBox(title: 'Enter your Reason', controller: _tuberculosisScreenReason),
              ],
            ) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),           
             
          SizedBox(height: mediaQuery.height * 0.06,), 
          
           //General Medical Screening Findings/Presenting Complaints
           //
            Center(child: Text('General Medical Screening Findings/Presenting Complaints', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),                 
            InputTextBox(title: '', controller: _generalMedicalScreeningFindings),    
            SizedBox(height: mediaQuery.height * 0.06,),
          //
            //Commodities Disbursed
            //         
            Center(child: Text('Commodities Disbursed', style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w300),),),            
            SizedBox(height: mediaQuery.height * 0.02,),      
            DropdownButtonFormField(value: _selectedcommoditiesDisbursedVal,items: _commoditiesDisbursedList.map((e)=> DropdownMenuItem(child: Text(e, style: TextStyle(fontSize: mediaQuery.width * 0.012),), value: e,)).toList(), onChanged: (val){
              setState(() {
                _selectedcommoditiesDisbursedVal = val as String;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
            dropdownColor: Colors.purple,
            decoration: InputDecoration(
              labelText: '',
              labelStyle: TextStyle(fontSize: mediaQuery.width * 0.020),
              prefixIcon: const Icon(Icons.add_box, color: Colors.purple,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),), 
             _selectedcommoditiesDisbursedVal == _commoditiesDisbursedList[3]? InputTextBox(title: 'Enter your Medications', controller: _commoditiesMedications) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),       
             _selectedcommoditiesDisbursedVal == _commoditiesDisbursedList[4]? InputTextBox(title: 'Enter the other commodities', controller: _commoditiesOthers) : Text('',style: TextStyle(fontSize: mediaQuery.width * 0.001),),       
          SizedBox(height: mediaQuery.height * 0.06,), 
          ]),
        ),
      ),),
    );
  }}