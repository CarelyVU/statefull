import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String respuesta='Respuesta';
  int n1=0,n2=0;
  dynamic r=0;
  final conN1=TextEditingController();
  final conN2=TextEditingController();

  void opsumar(){
    setState(() {
      n1=int.parse(conN1.text);
      n2=int.parse(conN2.text);
      r=n1+n2;
      respuesta= r.toString();
    });
  }
  void oprestar(){
    setState(() {
      n1=int.parse(conN1.text);
      n2=int.parse(conN2.text);
      r=n1-n2;
      respuesta= r.toString();
    });
  }
  void opmultiplicar(){
    setState(() {
      n1=int.parse(conN1.text);
      n2=int.parse(conN2.text);
      r=n1*n2;
      respuesta= r.toString();
    });
  }
  void opdividir(){
    setState(() {
      n1=int.parse(conN1.text);
      n2=int.parse(conN2.text);
      r=n1/n2;
      respuesta= r.toString();
    });
  }
  void dispose() {
    conN1.dispose();
    conN2.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull by Carely'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300.0,
                child: Column(
                  children: [
                  TextField(
                  controller: conN1,
                  keyboardType:TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Number 1',
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  ),
                ),
                  SizedBox(height:15.0),
                  TextField(
                    controller: conN2,
                    keyboardType:TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Number 2',
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                    ),
                  ),
                      ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                      child: Text(
                        "Sumar",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                      onPressed: opsumar
                  ),
                  RaisedButton(
                      child: Text(
                        "Restar",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: oprestar
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                      child: Text(
                        "Multiplicar",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.deepOrange,
                      onPressed: opmultiplicar
                  ),
                  RaisedButton(
                      child: Text(
                        "Dividir",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green,
                      onPressed: opdividir
                  ),
                ],
              ),
              SizedBox(height:15.0),
              Text(
                respuesta,
                style: TextStyle(fontSize: 40, color: Colors.black54),
              ),
              ],
      ),
    ),
    ),
    );
  }
}