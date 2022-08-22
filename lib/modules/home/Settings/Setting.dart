import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provid/my_provider.dart';
import '../../../shared/styles/my_theme.dart';
import 'List_app.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
class Settings extends StatefulWidget {
static const String routName ='Settings';

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final List<String> items = [
    'English',
    'عربي',

  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProviderApp>(context);
    return Scaffold(
      drawer: Listapp(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          backgroundColor: MyThemeData.primaryColor,
          centerTitle: true,
          title: Text('News app',style: Theme.of(context).textTheme.headline1),
          // leading: InkWell(child: Icon(Icons.list,size:45.0),onTap: (){
          //
          // }),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text('Langauge',style: Theme.of(context).textTheme.subtitle1,)
            ],

          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [
                        Icon(
                          Icons.list,
                          size: 25,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            'English',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                            ),
                            //overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                        ),
                        //overflow: TextOverflow.ellipsis,
                      ),
                    ))
                        .toList(),
                    value: selectedValue,

                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                      print(selectedValue);
                      selectedValue=='English'?pro.changeLanguage('en'):pro.changeLanguage('ar');
                    },

                    icon: const Icon(
                      Icons.arrow_downward,
                    ),
                    iconSize: 25,
                    iconEnabledColor: Colors.green,
                    iconDisabledColor: Colors.green,
                    buttonHeight: 50,
                    buttonWidth: 250,
                    buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                    buttonDecoration: BoxDecoration(
                     // borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.green,
                      ),
                      color: Colors.white,
                    ),
                    buttonElevation: 2,
                    itemHeight: 40,
                    itemPadding: const EdgeInsets.only(left: 14, right: 14),
                    dropdownMaxHeight: 250,
                    dropdownWidth: 380,
                    dropdownPadding:null,
                    dropdownDecoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    dropdownElevation: 8,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                    offset: const Offset(-20, 0),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
