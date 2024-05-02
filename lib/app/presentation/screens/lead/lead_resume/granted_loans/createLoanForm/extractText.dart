import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
class ScanResult {
  final String firstName;
  final String lastName;
  final String street;
  final String exteriorNumber;
  final String postalCode;
  final String municipality;
  final String state;
  final String curp;
  final String electoralKey;
  final String neighborhood;
  final String birthDate;
  final String validity;

  ScanResult({
    required this.firstName,
    required this.lastName,
    required this.street,
    required this.birthDate,
    required this.validity,
    required this.exteriorNumber,
    required this.postalCode,
    required this.municipality,
    required this.state,
    required this.curp,
    required this.electoralKey,
    required this.neighborhood,
  });

  @override
  String toString() {
    return 'ScanResult{firstName: $firstName, lastName: $lastName, street: $street, fechaNacimiento: $birthDate, vigencia: $validity}';
  }
}
class ExtractText extends ChangeNotifier {
  final String? path;
  final Function(ScanResult)? onDataReady; // Update this line
  ExtractText({this.path, this.onDataReady}) {
    processImage();
  }

  Future<void> processImage() async {
    // ... your existing code ...
final textRecognizer = GoogleMlKit.vision.textDetector();
    final InputImage inputImage = InputImage.fromFilePath(path!);

    final RecognisedText recognizedText =
        await textRecognizer.processImage(inputImage);

    ;
    String firstName = ""; 
    String lastName = "";
    String street = "";
    String exteriorNumber = "";
    String postalCode = "";
    String municipality = "";
    String state = "";
    String curp = "";
    String electoralKey = "";
    String neighborhood = "";
    String birthDate = "";
    String validity = "";


  RegExp nameRegex = RegExp(r'NOMBRE\n(.*?)\n(.*?)\n(.*?)\n(.*?)', caseSensitive: false, multiLine: true);
  Match? nameMatch = nameRegex.firstMatch(recognizedText.text);
  /* print(nameMatch); */
  if (nameMatch != null && nameMatch.groupCount > 2) {
    String? lastName1 = nameMatch.group(1);
    String? lastName2 = nameMatch.group(2);
    String? firstName_ = nameMatch.group(3);
    if (lastName1 != null && lastName2 != null && firstName_ != null) {
      lastName1 = lastName1.trim();
      lastName2 = lastName2.trim();
      firstName_ = firstName_.trim();
      firstName = firstName_;
      lastName = lastName1 + " " + lastName2;
      print('First Name: $firstName_, Last Name: $lastName');
    }
  }

RegExp addressRegexAddress = RegExp(r'DOMICILIO\n(.*?)\n(.*?)\n(.*?)\n(.*?)', caseSensitive: false, multiLine: true);
  Match? addressMatch = addressRegexAddress.firstMatch(recognizedText.text);
  if (addressMatch != null && addressMatch.groupCount > 2) {
    String? streetAndNumber = addressMatch.group(1);
    String? coloniaAndPostalCode = addressMatch.group(2);
    String? estadoAndMunicipio = addressMatch.group(3);
    /* print(streetAndNumber);
    print(coloniaAndPostalCode);
    print(estadoAndMunicipio); */
    if (streetAndNumber != null && coloniaAndPostalCode != null && estadoAndMunicipio != null) {
      print("*********************************---1");
      RegExp streetRegex = RegExp(r'(.*)\s(\d+)$');
      Match? streetMatch = streetRegex.firstMatch(streetAndNumber);
      if (streetMatch != null && streetMatch.groupCount > 1) {
        /* print("*********************************---2"); */
        String? streetM = streetMatch.group(1);
        String? number = streetMatch.group(2);
        if (streetM != null && number != null) {
          /* print("*********************************---3"); */
          street = street.trim();
          exteriorNumber = number.trim();

          RegExp coloniaRegex = RegExp(r'(.*)\s(\d+)$');
          Match? coloniaMatch = coloniaRegex.firstMatch(coloniaAndPostalCode);
          if (coloniaMatch != null && coloniaMatch.groupCount > 1) {
            /* print("*********************************---4"); */
            String? colonia = coloniaMatch.group(1);
            String? postalCodeMatch = coloniaMatch.group(2);
            if (colonia != null && postalCodeMatch != null) {
              colonia = colonia.trim();
              postalCode = postalCodeMatch.trim();

              RegExp estadoRegex = RegExp(r'(.*),\s(.*)$');
              Match? estadoMatch = estadoRegex.firstMatch(estadoAndMunicipio);
              if (estadoMatch != null && estadoMatch.groupCount > 1) {
                /* print("*********************************---5"); */
                String? municipio = estadoMatch.group(1);
                String? estado = estadoMatch.group(2);
                if (municipio != null && estado != null) {
                  municipio = municipio.trim();
                  estado = estado.trim();
                  neighborhood = colonia;
                  print('Calle: $street, Número: $number, Colonia: $colonia, Código Postal: $postalCode, Municipio: $municipio, Estado: $estado');
                }
              }
            }
          }
        }
      }
    }
  }

  RegExp curpRegex = RegExp(r'CURP\s*(\w{18})', caseSensitive: true, multiLine: true);
  Match? curpMatch = curpRegex.firstMatch(recognizedText.text);
  if (curpMatch != null && curpMatch.groupCount > 0) {
    String? curpText = curpMatch.group(1);
    if (curpText != null && curpText.length == 18) {
      curp = curpText.trim();
      print('CURP: $curp');
    }
  }

  if(curp == ""){
    RegExp curpRegex = RegExp(r'CURP\s*(\w{18})', caseSensitive: true, multiLine: false);
    Match? curpMatch = curpRegex.firstMatch(recognizedText.text);
    if (curpMatch != null && curpMatch.groupCount > 0) {
      String? curp = curpMatch.group(1);
      if (curp != null) {
        curp = curp.trim();
        print('CURP: $curp');
      }
    }
  }


  RegExp claveElectorRegex = RegExp(r'CLAVE DE ELECTOR\s*(\w{18})', caseSensitive: false, multiLine: true);
  Match? claveElectorMatch = claveElectorRegex.firstMatch(recognizedText.text);
  if (claveElectorMatch != null && claveElectorMatch.groupCount > 0) {
    String? claveElector = claveElectorMatch.group(1);
    if (claveElector != null) {
      electoralKey = claveElector.trim();
      print('CLAVE DE ELECTOR: $claveElector');
    }
  }

  RegExp fechaNacimientoRegex = RegExp(r'FECHA DE NACIMIENTO\s*(\d{2}/\d{2}/\d{4})', caseSensitive: false, multiLine: true);
Match? fechaNacimientoMatch = fechaNacimientoRegex.firstMatch(recognizedText.text);
if (fechaNacimientoMatch != null && fechaNacimientoMatch.groupCount > 0) {
  String? fechaNacimiento = fechaNacimientoMatch.group(1);
  if (fechaNacimiento != null) {
    birthDate = fechaNacimiento.trim();
    print('FECHA DE NACIMIENTO: $fechaNacimiento');
  }
}

RegExp vigenciaRegex = RegExp(r'VIGENCIA\s*(\d{4}-\d{4})', caseSensitive: false, multiLine: true);
Match? vigenciaMatch = vigenciaRegex.firstMatch(recognizedText.text);
if (vigenciaMatch != null && vigenciaMatch.groupCount > 0) {
  String? vigencia = vigenciaMatch.group(1);
  if (vigencia != null) {
    vigencia = vigencia.trim();
    print('VIGENCIA: $vigencia');
  }
}
///End busy state
/* setState(() {
  _isBusy = false;
}); */
print(firstName);
print(lastName);
ScanResult result = ScanResult(
  firstName: firstName,
  lastName: lastName,
  street: street,
  birthDate: birthDate,
  validity: validity,
  exteriorNumber: exteriorNumber,
  postalCode: postalCode,
  municipality: municipality,
  state: state,
  curp: curp,
  electoralKey: electoralKey,
  neighborhood: neighborhood
);
print(lastName);
print("&&&&&&&&");
 // When the data is ready, call the callback function
  
  
    // When the data is ready, call the callback function
    if (onDataReady != null) {
      onDataReady!(result);
    }
  }
  /* const ExtractText({Key? key, this.path, this.onDataReady}) : super(key: key); */


  /* @override
  State<ExtractText> createState() => _ExtractTextState(); */
}

/* class _ExtractTextState extends State<ExtractText> { 
  bool _isBusy = false;

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    final InputImage inputImage = InputImage.fromFilePath(widget.path!);

    processImage(inputImage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("recognized page")),
        body: _isBusy == true
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  maxLines: MediaQuery.of(context).size.height.toInt(),
                  controller: controller,
                  decoration:
                      const InputDecoration(hintText: "Text goes here..."),
                ),
              ));
  }

  void processImage(InputImage image) async {
    /* final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin); */
    final textRecognizer = GoogleMlKit.vision.textDetector();
    setState(() {
      _isBusy = true;
    });

    log(image.filePath!);
    final RecognisedText recognizedText =
        await textRecognizer.processImage(image);

    controller.text = recognizedText.text;
    String firstName = ""; 
    String lastName = "";
    String street = "";
    String externalNumber = "";
    String postalCode = "";
    String municipality = "";
    String state = "";
    String curp = "";
    String electoralKey = "";
    String neighborhood = "";
    String birthDate = "";
    String validity = "";


  RegExp nameRegex = RegExp(r'NOMBRE\n(.*?)\n(.*?)\n(.*?)\n(.*?)', caseSensitive: false, multiLine: true);
  Match? nameMatch = nameRegex.firstMatch(controller.text);
  /* print(nameMatch); */
  if (nameMatch != null && nameMatch.groupCount > 2) {
    String? lastName1 = nameMatch.group(1);
    String? lastName2 = nameMatch.group(2);
    String? firstName_ = nameMatch.group(3);
    if (lastName1 != null && lastName2 != null && firstName_ != null) {
      lastName1 = lastName1.trim();
      lastName2 = lastName2.trim();
      firstName_ = firstName_.trim();
      firstName = firstName_;
      print('First Name: $firstName_, Last Name: $lastName1 $lastName2');
    }
  }

RegExp addressRegexAddress = RegExp(r'DOMICILIO\n(.*?)\n(.*?)\n(.*?)\n(.*?)', caseSensitive: false, multiLine: true);
  Match? addressMatch = addressRegexAddress.firstMatch(recognizedText.text);
  if (addressMatch != null && addressMatch.groupCount > 2) {
    String? streetAndNumber = addressMatch.group(1);
    String? coloniaAndPostalCode = addressMatch.group(2);
    String? estadoAndMunicipio = addressMatch.group(3);
    /* print(streetAndNumber);
    print(coloniaAndPostalCode);
    print(estadoAndMunicipio); */
    if (streetAndNumber != null && coloniaAndPostalCode != null && estadoAndMunicipio != null) {
      print("*********************************---1");
      RegExp streetRegex = RegExp(r'(.*)\s(\d+)$');
      Match? streetMatch = streetRegex.firstMatch(streetAndNumber);
      if (streetMatch != null && streetMatch.groupCount > 1) {
        /* print("*********************************---2"); */
        String? street = streetMatch.group(1);
        String? number = streetMatch.group(2);
        if (street != null && number != null) {
          /* print("*********************************---3"); */
          street = street.trim();
          number = number.trim();

          RegExp coloniaRegex = RegExp(r'(.*)\s(\d+)$');
          Match? coloniaMatch = coloniaRegex.firstMatch(coloniaAndPostalCode);
          if (coloniaMatch != null && coloniaMatch.groupCount > 1) {
            /* print("*********************************---4"); */
            String? colonia = coloniaMatch.group(1);
            String? postalCode = coloniaMatch.group(2);
            if (colonia != null && postalCode != null) {
              colonia = colonia.trim();
              postalCode = postalCode.trim();

              RegExp estadoRegex = RegExp(r'(.*),\s(.*)$');
              Match? estadoMatch = estadoRegex.firstMatch(estadoAndMunicipio);
              if (estadoMatch != null && estadoMatch.groupCount > 1) {
                /* print("*********************************---5"); */
                String? municipio = estadoMatch.group(1);
                String? estado = estadoMatch.group(2);
                if (municipio != null && estado != null) {
                  municipio = municipio.trim();
                  estado = estado.trim();
                  print('Calle: $street, Número: $number, Colonia: $colonia, Código Postal: $postalCode, Municipio: $municipio, Estado: $estado');
                }
              }
            }
          }
        }
      }
    }
  }

  RegExp curpRegex = RegExp(r'CURP\s*(\w{18})', caseSensitive: false, multiLine: true);
  Match? curpMatch = curpRegex.firstMatch(recognizedText.text);
  if (curpMatch != null && curpMatch.groupCount > 0) {
    String? curp = curpMatch.group(1);
    if (curp != null) {
      curp = curp.trim();
      print('CURP: $curp');
    }
  }
  RegExp claveElectorRegex = RegExp(r'CLAVE DE ELECTOR\s*(\w{18})', caseSensitive: false, multiLine: true);
  Match? claveElectorMatch = claveElectorRegex.firstMatch(recognizedText.text);
  if (claveElectorMatch != null && claveElectorMatch.groupCount > 0) {
    String? claveElector = claveElectorMatch.group(1);
    if (claveElector != null) {
      claveElector = claveElector.trim();
      print('CLAVE DE ELECTOR: $claveElector');
    }
  }

  RegExp fechaNacimientoRegex = RegExp(r'FECHA DE NACIMIENTO\s*(\d{2}/\d{2}/\d{4})', caseSensitive: false, multiLine: true);
Match? fechaNacimientoMatch = fechaNacimientoRegex.firstMatch(recognizedText.text);
if (fechaNacimientoMatch != null && fechaNacimientoMatch.groupCount > 0) {
  String? fechaNacimiento = fechaNacimientoMatch.group(1);
  if (fechaNacimiento != null) {
    fechaNacimiento = fechaNacimiento.trim();
    print('FECHA DE NACIMIENTO: $fechaNacimiento');
  }
}

RegExp vigenciaRegex = RegExp(r'VIGENCIA\s*(\d{4}-\d{4})', caseSensitive: false, multiLine: true);
Match? vigenciaMatch = vigenciaRegex.firstMatch(recognizedText.text);
if (vigenciaMatch != null && vigenciaMatch.groupCount > 0) {
  String? vigencia = vigenciaMatch.group(1);
  if (vigencia != null) {
    vigencia = vigencia.trim();
    print('VIGENCIA: $vigencia');
  }
}
///End busy state
setState(() {
  _isBusy = false;
});

ScanResult result = ScanResult(
  firstName: firstName,
  lastName: lastName,
  street: street,
  birthDate: birthDate,
  validity: validity,
  externalNumber: externalNumber,
  postalCode: postalCode,
  municipality: municipality,
  state: state,
  curp: curp,
  electoralKey: electoralKey,
  neighborhood: neighborhood
);
 // When the data is ready, call the callback function
  if (widget.onDataReady != null) {
    widget.onDataReady!(result);
  }
  }
}*/