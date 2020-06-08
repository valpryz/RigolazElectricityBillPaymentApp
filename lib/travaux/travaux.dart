import 'package:flutter/material.dart';

class Travaux extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TRAVAUX PROGRAMMES'),
      ),
      body: DropDown(),
    );
  }
}

class DropDown extends StatefulWidget {
  DropDown() : super();

  final String title = "DropDown Demo";

  @override
  DropDownState createState() => DropDownState();
}

class Company {
  int id;
  String name;

  Company(this.id, this.name);

  static List<Company> getCompanies() {
    return <Company>[
      Company(1, 'Littoral'),
      Company(2, 'Centre'),
      Company(3, 'Adamaoua'),
      Company(4, 'Sud-Ouest'),
      Company(5, 'Est'),
      Company(6, 'Extreme-Nord'),
      Company(7, 'Nord'),
      Company(8, 'Nord-Ouest'),
      Company(9, 'Ouest'),
      Company(10, 'Sud'),
    ];
  }
}

class DropDownState extends State<DropDown> {
  //
  List<Company> _companies = Company.getCompanies();
  List<DropdownMenuItem<Company>> _dropdownMenuItems;
  Company _selectedCompany;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCompany = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Company>> items = List();
    for (Company company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(
            company.name,
            style: TextStyle(fontFamily: 'Actor', fontSize: 17),
          ),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Company selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                DropdownButton(
                  hint: Text('Choisir la region'),
                  value: _selectedCompany,
                  items: _dropdownMenuItems,
                  onChanged: onChangeDropdownItem,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  '#${_selectedCompany.name}',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'YesevaOne',
                      fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Aucun travail programmé dans cette zone',
              style: TextStyle(fontSize: 20, fontFamily: 'YesevaOne'),
            )
          ],
        ),
      ),
    );
  }
}
