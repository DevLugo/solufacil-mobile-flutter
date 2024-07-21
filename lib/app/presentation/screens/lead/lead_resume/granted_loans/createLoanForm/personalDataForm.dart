import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
/* import 'package:mobile_scanner/mobile_scanner.dart'; */
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'dart:math';

import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/granted_loans/createLoanForm/extractText.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/granted_loans/createLoanForm/index.dart';
import 'package:solufacil_mobile/app/widgets/common/image_cropper_page.dart';

typedef FormValidationFunction = void Function(
    GlobalKey<FormState> formKey, ValueSetter<bool> updateIsValid);

/* class StepOneContent extends StatelessWidget { */
class PersonalDataForm extends StatefulWidget {
  final Function(String, String, [int?]) onUpdate;
  //final Function(GlobalKey<FormState> formKey, ValueSetter<bool> updateIsValid) validateForm;
  final FormValidationFunction validateForm;
  final PersonalDataState data;
  final bool isFormValid;
  //Personal data form will receive this functionÑ

  PersonalDataForm(
      {required this.onUpdate,
      required this.validateForm,
      required this.data,
      required this.isFormValid});

  @override
  _PersonalDataFormState createState() => _PersonalDataFormState();
}

/* final Function(String, String) onUpdate;
  final PersonalDataState data; // Add this line
 */
class _PersonalDataFormState extends State<PersonalDataForm> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  final _formKey = GlobalKey<FormState>();
  final _emailKey = GlobalKey();
  final _referencesKey = GlobalKey();
  final _firstNameKey = GlobalKey();
  final _scrollController = ScrollController();
  TextEditingController dateController = TextEditingController();
  /* late TextEditingController firstNameController;
  late TextEditingController lastNameController; */
  late TextEditingController curpController;
  late TextEditingController electoralKeyController;
  late TextEditingController exteriorNumberController;
  late TextEditingController streetController;
  late TextEditingController municipalityController;
  late TextEditingController postalCodeController;
  late TextEditingController birthDateController;
  late TextEditingController neighborhoodController;
  late TextEditingController referencesController;
  late ValueNotifier<List<String>> phoneNumbersNotifier =
      ValueNotifier<List<String>>([]);
  bool _hasErrors = false;

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController(text: widget.data.firstName);
    lastNameController = TextEditingController(text: widget.data.lastName);
    curpController = TextEditingController(text: widget.data.curp);
    electoralKeyController =
        TextEditingController(text: widget.data.electoralKey);
    exteriorNumberController =
        TextEditingController(text: widget.data.exteriorNumber);
    streetController = TextEditingController(text: widget.data.street);
    postalCodeController = TextEditingController(text: widget.data.postalCode);
    referencesController = TextEditingController(text: widget.data.references);

    phoneNumbersNotifier.value = widget.data.phoneNumbers;

    // ... initialize other controllers ...
  }

  bool light1 = false;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  void handleChanged(String fieldName, String value, [int? index]) {
    if (!widget.isFormValid) {
      widget.validateForm(
        _formKey,
        (bool isValid) {
          setState(() {
            _hasErrors = !isValid;
          });
        },
      );
    }
    widget.onUpdate(fieldName, value);
  }

  Map<String, dynamic>? _result;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                final ImagePicker _picker = ImagePicker();
                _picker.pickImage(source: ImageSource.camera).then((value) {
                  if (value != null) {
                    imageCropperView(value.path, context).then((value) {
                      if (value != '') {
                        ExtractText(
                          path: value,
                          onDataReady: (ScanResult data) {
                            print("///////////////////////////////////");
                            print("///////////////////////////////////");
                            print("///////////////////////////////////");

                            // Do something with the data
                            print('Data from child widget---: $data');
                            print(data.firstName);
                            print(data.electoralKey);
                            print(data.curp);
                            print(data.lastName);

                            widget.onUpdate('firstName', data.firstName);
                            widget.onUpdate('lastName', data.lastName);
                            widget.onUpdate('curp', data.curp);
                            widget.onUpdate('electoralKey', data.electoralKey);
                            widget.onUpdate(
                                'exteriorNumber', data.exteriorNumber);
                            widget.onUpdate('street', data.street);
                            widget.onUpdate('municipality', data.municipality);
                            widget.onUpdate('postalCode', data.postalCode);
                            //onUpdate('birthDate', data.birthDate);
                          },
                        );
                      }
                    });
                  }
                });
              },
              child: const Text('Extraer datos de la credencial'),
            ),
          ],
        ),
        /* TextField(
          
          onChanged: (value) {
            onUpdate('email', value);
          },
        ), */
        /* TextField(
          controller: firstNameController,
          onChanged: (value) {
            onUpdate('firstName', value);
          },
        ), */
        ElevatedButton(
          onPressed: () {
            Random random = Random();

            // Generate random data
            String firstName = 'John${random.nextInt(100)}';
            String lastName = 'Doe${random.nextInt(100)}';
            String curp = 'DOEJ000101HDFXXX${random.nextInt(100)}';

            // Seed the form with random data
            firstNameController.text = firstName;
            firstNameController.value = firstNameController.value.copyWith(
              text: firstName,
            );
            

            lastNameController.text = lastName;
            lastNameController.value = lastNameController.value.copyWith(
              text: lastName,
            );
            curpController.text = curp;
            curpController.value = curpController.value.copyWith(
              text: curp,
            );
            electoralKeyController.text =
                '12345678901234567890${random.nextInt(100)}';
            electoralKeyController.value = electoralKeyController.value.copyWith(
              text: '12345678901234567890${random.nextInt(100)}',
            );
            exteriorNumberController.text = '123${random.nextInt(100)}';
            exteriorNumberController.value =
                exteriorNumberController.value.copyWith(
              text: '123${random.nextInt(100)}',
            );
            streetController.text = 'Main Street ${random.nextInt(100)}';
            streetController.value = streetController.value.copyWith(
              text: 'Main Street ${random.nextInt(100)}',
            );
            postalCodeController.text = '12345${random.nextInt(100)}';
            postalCodeController.value = postalCodeController.value.copyWith(
              text: '12345${random.nextInt(100)}',
            );
            dateController.text = '2021-01-01';
            dateController.value = dateController.value.copyWith(
              text: '2021-01-01',
            );
            widget.onUpdate('phoneNumbers', "123123");

            phoneNumbersNotifier.value = ['123123'];
            referencesController.text =
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.${random.nextInt(100)}';
            referencesController.value = referencesController.value.copyWith(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.${random.nextInt(100)}',
            );
            handleChanged('firstName', firstName);
            handleChanged('lastName', lastName);
            handleChanged('curp', curp);
            handleChanged('electoralKey', '12345678901234567890');
            handleChanged('exteriorNumber', '123');
            handleChanged('street', 'Main Street');
            handleChanged('postalCode', '12345');
            handleChanged('birthDate', '2021-01-01');
            handleChanged('phoneNumbers', '123123');
            handleChanged(
                'references',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.${random.nextInt(100)}');
            
            
          },
          child: const Text('Llenar formulario'),
        ),
        SwitchListTile(
          title: const Text('¿Ya es cliente?'),
          thumbIcon: thumbIcon,
          value: light1,
          onChanged: (bool value) {
            /* setState(() {
                      light1 = value;
                    }); */
          },
        ),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(child: child, opacity: animation);
          },
          child: light1
              ? Column(
                  key: ValueKey<int>(1),
                  children: <Widget>[],
                )
              : Column(
                  key: ValueKey<int>(2),
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            !RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                                .hasMatch(value)) {
                          return 'Campo requerido';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        handleChanged('email', value);
                      },
                      onSaved: (value) {
                        /* email = value; */
                      },
                    ),
                    TextFormField(
                      key: _firstNameKey,
                      decoration: InputDecoration(labelText: 'Nombres'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo requerido';
                        }
                        return null;
                      },
                      controller: firstNameController,
                      onChanged: (value) {
                        handleChanged('firstName', value);
                      },
                      onSaved: (value) {
                        /* firstName = value; */
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Apellidos'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo requerido';
                        }
                        return null;
                      },
                      controller: lastNameController,
                      onChanged: (value) {
                        handleChanged('lastName', value);
                      },
                      onSaved: (value) {
                        /* lastName = value; */
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'CURP'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo requerido';
                        }
                        return null;
                      },
                      onChanged: (value) => handleChanged('curp', value),
                      controller: curpController,
                      onSaved: (value) {
                        /* curp = value; */
                      },
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Clave de elector'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Clave de Elector';
                        }
                        return null;
                      },
                      controller: electoralKeyController,
                      onChanged: (value) {
                        handleChanged('electoralKey', value);
                      },
                      onSaved: (value) {
                        /* rfc = value; */
                      },
                    ),
                    ValueListenableBuilder<List<String>>(
                        valueListenable: phoneNumbersNotifier,
                        builder: (BuildContext context,
                            List<String> phoneNumbers, Widget? child) {
                          return ListView.builder(
                            controller: _scrollController,
                            shrinkWrap: true,
                            itemCount: phoneNumbers.length,
                            itemBuilder: (BuildContext context, int index) {
                              if (index < widget.data.phoneNumbers.length) {
                                return Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                          labelText: 'Télefono ${index + 1}',
                                          // ... other code ...
                                        ),
                                        initialValue:
                                            widget.data.phoneNumbers[index],
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Campo requerido';
                                          }
                                          // Add more validation logic if needed
                                          return null;
                                        },
                                        onChanged: (value) {
                                          handleChanged(
                                              'phoneNumbers', value, index);
                                        },
                                        onSaved: (value) {
                                          if (value != null) {
                                            handleChanged(
                                                'phoneNumbers', value, index);
                                          }
                                        },
                                      ),
                                    ),
                                    ElevatedButton(
                                      child: Icon(Icons.remove),
                                      onPressed: widget
                                                  .data.phoneNumbers.length >
                                              1
                                          ? () {
                                              setState(() {
                                                widget.data.phoneNumbers
                                                    .removeAt(index);
                                              });
                                            }
                                          : null, // disable the button if there's only one phone number
                                    ),
                                  ],
                                );
                              }
                            },
                          );
                        }),
                    SizedBox(
                        height:
                            20), // adjust the height to add more or less space

                    ElevatedButton.icon(
                      icon: Icon(Icons.add),
                      label: Text('Add Phone'),
                      onPressed: () {
                        String newPhoneNumber =
                            ''; // Replace with the new phone number
                        handleChanged('phoneNumbers', newPhoneNumber);
                        phoneNumbersNotifier.value =
                            List.from(phoneNumbersNotifier.value)
                              ..add(newPhoneNumber);
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Calle'),
                      controller: streetController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo requerido';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        handleChanged('street', value);
                      },
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Número Interior'),
                            onChanged: (value) =>
                                handleChanged('internalNumber', value),
                          ),
                        ),
                        SizedBox(
                            width: 16), // Add some space between the fields
                        Expanded(
                          child: TextFormField(
                            controller: exteriorNumberController,
                            decoration:
                                InputDecoration(labelText: 'Número Exterior'),
                            onSaved: (value) {
                              // Save the exterior number value
                              /* exteriorNumber = value; */
                            },
                            onChanged: (value) {
                              handleChanged('exteriorNumber', value);
                            },
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: referencesController,
                      decoration: InputDecoration(labelText: 'Referencias'),
                      maxLines: null,
                      key: _referencesKey,
                      keyboardType: TextInputType.multiline,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo requerido';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        handleChanged('references', value);
                      },
                      onSaved: (value) {
                        // Save the references value
                        /* references = value; */
                      },
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            controller: dateController,
                            readOnly:
                                true, // make the field read-only so that the keyboard does not appear when the field is tapped
                            decoration: InputDecoration(
                              labelText: 'Fecha de nacimiento',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo requerido';
                              }
                              return null;
                            },
                            onTap: () async {
                              final DateTime? pickedDate = await showDatePicker(
                                context: context,
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2000),
                              );
                              if (pickedDate != null) {
                                String formattedDate =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
                                dateController.text = formattedDate;
                                handleChanged('birthDate', formattedDate);
                              }
                            },
                          ),
                        ),
                        SizedBox(
                            width: 16), // Add some space between the fields
                        Expanded(
                          child: TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Codigo postal'),
                            maxLines: null,
                            controller: postalCodeController,
                            keyboardType: TextInputType.multiline,
                            onChanged: (value) {
                              handleChanged('postalCode', value);
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo requerido';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              // Save the references value
                              /* postalCode = value; */
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
        )
        // Agrega los demás TextField aquí...
      ],
    );
  }
}
