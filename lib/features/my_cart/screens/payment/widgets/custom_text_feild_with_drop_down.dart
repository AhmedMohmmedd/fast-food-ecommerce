
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFiledWithDropdownButton extends StatefulWidget {
  const CustomTextFiledWithDropdownButton({super.key});

  @override
  State<CustomTextFiledWithDropdownButton> createState() => _CustomTextFiledWithDropdownButtonState();
}

class _CustomTextFiledWithDropdownButtonState extends State<CustomTextFiledWithDropdownButton> {
  String? _selectedImage;

  final List<String> _svgImages = [
    'assets/payment/g13.svg',
    'assets/payment/visa.svg',
    'assets/payment/visa.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Card Number',
          suffixIcon: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_selectedImage != null)
                    SvgPicture.asset(
                      _selectedImage!,
                      height: 20,
                      width: 20,
                    ),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedImage = newValue;
                });
              },
              items: _svgImages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: SvgPicture.asset(
                    value,
                    height: 20,
                    width: 20,
                  ),
                );
              }).toList(),
              selectedItemBuilder: (BuildContext context) {
                return _svgImages.map<Widget>((String value) {
                  return Row(
                    children: [
                      SvgPicture.asset(
                        value,
                        height: 20,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                      ),
                    ],
                  );
                }).toList();
              },
            ),
          ),
        ),
      ),
    );
  }
}
