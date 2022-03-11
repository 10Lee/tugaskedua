import 'package:crud_car/datas/datacewe.dart';
import 'package:crud_car/models/cewe_model.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class AddOrDeletePage extends StatefulWidget {
  const AddOrDeletePage({Key? key}) : super(key: key);

  @override
  State<AddOrDeletePage> createState() => _AddOrDeletePageState();
}

class _AddOrDeletePageState extends State<AddOrDeletePage> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController imageUrlController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    imageUrlController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tambah Koleksi Cewe'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: ListView(
              children: [
                TextFormField(
                  controller: nameController,
                  validator: (value) =>
                      (value!.isEmpty) ? "Harus diisi dulu mas 😭" : null,
                  decoration: InputDecoration(
                    hintText: 'Nama Cewe Cantik',
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: ageController,
                  validator: (value) =>
                      (value!.isEmpty) ? "Harus diisi dulu mas 😭" : null,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    hintText: 'Usia',
                    suffixText: 'Tahun',
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: imageUrlController,
                  validator: (value) =>
                      (value!.isEmpty) ? "Harus diisi dulu mas 😭" : null,
                  decoration: InputDecoration(
                    hintText: 'Foto - CoPas LINK Image dari Internet',
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: descriptionController,
                  validator: (value) =>
                      (value!.isEmpty) ? "Harus diisi dulu mas 😭" : null,
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText: 'Komentar si Cewe',
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    final name = nameController.text;
                    final age = ageController.text;
                    final imageUrl = imageUrlController.text;
                    final description = descriptionController.text;

                    setState(() {
                      if (_key.currentState!.validate()) {
                        listDataCewe.add(CeweModel(
                          name: name,
                          imageUrl: imageUrl,
                          age: age,
                          description: description,
                        ));
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => MyApp()));
                      }
                    });

                    nameController.text = '';
                    ageController.text = '';
                    imageUrlController.text = '';
                    descriptionController.text = '';
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text(
                        'Simpan',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
