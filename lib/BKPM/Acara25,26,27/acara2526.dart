import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Form Flutter",
    home: BelajarForm(),//memanggil class BelajarForm
  ));
}
//ACARA 25
class BelajarForm extends StatefulWidget{
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Form Flutter"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              //TextField(),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Marcella Fitri Handayani",
                  labelText: "Nama Lengkap",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  //ACARA 26
  /*double nilaiSlider =1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Form Flutter"),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "Marcella Fitri Handayani",
                      labelText: "Nama Lengkap",
                      icon: Icon(Icons.people),
                      border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        labelText: "Password",
                        icon: Icon(Icons.security),
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    ),
                    CheckboxListTile(
                      title: Text('Belajar Dasar Flutter'),
                      subtitle: Text('Dart, widget, http'),
                      value: nilaiCheckBox,
                      activeColor: Colors.deepPurpleAccent,
                      onChanged: (value) {
                        setState(() {
                          nilaiCheckBox = value!;
                        });
                      },
                    ),
                    SwitchListTile(
                      title: Text('Backend Programing'),
                      subtitle: Text ('Dart, Nodejs, PHP, Java, dll'),
                      value: nilaiSwitch,
                      activeTrackColor: Colors.pink[100],
                      activeColor: Colors.red,
                      onChanged: (value) {
                        setState(() {
                          nilaiSwitch = value;
                        });
                      },
                    ),
                    Slider(
                      value: nilaiSlider, 
                      min: 0,
                      max: 100,
                      onChanged: (value){
                        setState(() {
                          nilaiSlider = value;
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                    ),
              ],
            ),
          ),
        ),
        ),
    );
  }*/

}