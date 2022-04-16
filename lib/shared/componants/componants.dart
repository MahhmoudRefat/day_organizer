import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defultbutton({
  double width = double.infinity,
  Color background = Colors.blue,
  required VoidCallback function,
  required String? text,
}) =>
    Container(
      width: double.infinity,
      color: Colors.blue,
      child: MaterialButton(
        onPressed: function,
        textColor: Colors.white,
        child: Text(text!),
      ),
    );

Widget defultformfild({
  required TextEditingController contrller,
  required TextInputType type,
  required String? Function(String?)? validator,
  void Function(String)? onSubmit,
  void Function(String)? onchanged,
  VoidCallback? ontap,
  required String label,
  IconData? prefixicon,
  IconData? suffixIcon,
  bool IsClieckable = true,
}) =>
    TextFormField(
      controller: contrller,
      keyboardType: type,
      obscureText: false,
      enabled: IsClieckable,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(prefixicon),
        suffixIcon: Icon(suffixIcon),
      ),
      onFieldSubmitted: onSubmit,
      onTap: ontap,
      onChanged: onchanged,
      validator: validator,
    );

Widget buildtaskitem(Map model) => Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            child: Text("${model['time']}"),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${model['title']}",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${model['date']}",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );