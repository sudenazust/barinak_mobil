import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdoptionFormPage extends StatefulWidget {
  final String animalName;

  const AdoptionFormPage({Key? key, required this.animalName}) : super(key: key);

  @override
  State<AdoptionFormPage> createState() => _AdoptionFormPageState();
}

class _AdoptionFormPageState extends State<AdoptionFormPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA8E6CF), Color(0xFFFFD3B6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey, // Form key burada!
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${widget.animalName} için Sahiplendirme Formu',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: 350,
                        child: Column(
                          children: [
                            _buildTextField(
                              controller: nameController,
                              label: 'Ad Soyad',
                              validatorMsg: 'Lütfen adınızı girin',
                              onlyLetters: true,
                            ),
                            _buildTextField(
                              controller: phoneController,
                              label: 'Telefon',
                              validatorMsg: 'Lütfen telefon girin',
                              digitsOnly: true,
                              customValidator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Lütfen telefon girin';
                                }
                                if (!value.startsWith('05')) {
                                  return 'Telefon 05 ile başlamalı';
                                }
                                if (value.length != 11) {
                                  return 'Telefon numarası 11 haneli olmalı';
                                }
                                return null;
                              },
                            ),
                            _buildTextField(
                              controller: addressController,
                              label: 'Adres',
                              validatorMsg: 'Lütfen adres girin',
                            ),
                            _buildTextField(
                              controller: reasonController,
                              label: 'Neden sahiplenmek istiyorsunuz?',
                              validatorMsg: 'Lütfen neden belirtin',
                              maxLines: 3,
                            ),
                            const SizedBox(height: 24),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orangeAccent,
                                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16), // Butonu büyütür
                                minimumSize: const Size(200, 50), // Genişlik ve yükseklik
                                textStyle: const TextStyle(fontSize: 18), // Yazı büyüklüğü
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Form başarıyla gönderildi!'),
                                    ),
                                  );
                                  Navigator.pop(context);
                                }
                              },
                              child: const Text('Gönder'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String validatorMsg,
    int maxLines = 1,
    bool onlyLetters = false,
    bool digitsOnly = false,
    String? Function(String?)? customValidator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        keyboardType: digitsOnly ? TextInputType.number : TextInputType.text,
        validator: customValidator ?? (value) => value!.isEmpty ? validatorMsg : null,
        inputFormatters: digitsOnly
            ? [
          LengthLimitingTextInputFormatter(11),
          FilteringTextInputFormatter.digitsOnly,
        ]
            : onlyLetters
            ? [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-ZğüşöçıİĞÜŞÖÇ\s]'))]
            : null,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
