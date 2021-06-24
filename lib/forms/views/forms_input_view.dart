import 'package:compod_app/commons/app_colors.dart';
import 'package:compod_app/commons/app_fonts.dart';
import 'package:flutter/material.dart';

class FormsInputView extends StatefulWidget {
  @override
  _FormsInputViewState createState() => _FormsInputViewState();
}

class _FormsInputViewState extends State<FormsInputView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var sexValue = "";

  final headerStyle = TextStyle(
    color: Colors.black,
    fontFamily: AppFonts.Palanquin,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
  );

  final formsStyle = TextStyle(
    color: Colors.black,
    fontFamily: AppFonts.Palanquin,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
  );

  var buttonText = Text(
    "Continuar",
    style: TextStyle(
      fontFamily: AppFonts.Palanquin,
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
  );

  var buttonWidget = Padding(
    padding: const EdgeInsets.all(16),
    child: MaterialButton(
      color: AppColors.buttonBlue1,
      child: Center(
        child: Text(
          "Continuar",
          style: TextStyle(
            fontFamily: AppFonts.Palanquin,
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      onPressed: () {},
    ),
  );

  final header = Padding(
    padding: EdgeInsets.all(16),
    child: Text(
      'Preencha o formulário com \nas informações do paciente',
      textAlign: TextAlign.center,
      style: TextStyle(
          height: 1,
          decoration: TextDecoration.none,
          fontSize: 24,
          color: Colors.white,
          fontFamily: AppFonts.PalanquinDark,
          fontWeight: FontWeight.w400),
    ),
  );

  TextFormField buildFormField() {
    return TextFormField(
      style: formsStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        fillColor: Colors.white.withOpacity(0.05),
        filled: true,
      ),
    );
  }

  Widget buildText(String text) {
    return Container(
        width: double.infinity, child: Text(text, style: headerStyle));
  }

  ListTile buildRadioButton(String text) {
    return ListTile(
      title: Text(text, style: headerStyle),
      leading: Radio<String>(
        activeColor: AppColors.green,
        value: text,
        onChanged: (v) {
          setState(() {
            sexValue = v;
          });
        },
        groupValue: sexValue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final formsWidget = Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.contornoBlue,
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          boxShadow: [BoxShadow(blurRadius: 5.0, offset: Offset(2, 2))]),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            buildText("Nome"),
            buildFormField(),
            buildText("Idade"),
            buildFormField(),
            buildText("Sexo"),
            buildRadioButton("Masculino"),
            buildRadioButton("Feminino"),
            buildRadioButton("Outro"),
            buildText("Profissão"),
            buildFormField(),
            buildText("Endereço"),
            buildFormField(),
            buildText("Telefone com DDD"),
            buildFormField(),
            buildText("E-mail"),
            buildFormField(),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
        backgroundColor: AppColors.buttonBlue1,
        centerTitle: true,
        title: const Text(
          'Internação',
          style: TextStyle(fontFamily: AppFonts.Palanquin),
        ),
      ),
      body: ListView(
        children: [
          header,
          formsWidget,
          buttonWidget,
        ],
      ),
    );
  }
}
