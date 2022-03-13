import 'package:crud_car/screens/screens.dart';
import 'package:flutter/material.dart';

import 'package:crud_car/datas/datacewe.dart';
import 'package:crud_car/models/cewe_model.dart';

import '../main.dart';

class AddOrUpdatePage extends StatefulWidget {
  final int? currentIndex;
  final CeweModel? ceweModel;

  const AddOrUpdatePage({
    Key? key,
    this.currentIndex,
    this.ceweModel,
  }) : super(key: key);

  @override
  State<AddOrUpdatePage> createState() => _AddOrUpdatePageState();
}

class _AddOrUpdatePageState extends State<AddOrUpdatePage> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _imageUrlController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  CeweModel? _ceweModel;

  bool get isEditMode => widget.ceweModel != null;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (isEditMode) {
      _ceweModel = widget.ceweModel;
    } else {
      _ceweModel = CeweModel(
        name: '',
        imageUrl: '',
        age: '',
      );
    }

    _nameController = TextEditingController(text: _ceweModel!.name);
    _ageController = TextEditingController(text: _ceweModel!.age);
    _imageUrlController = TextEditingController(text: _ceweModel!.imageUrl);
    _descriptionController =
        TextEditingController(text: _ceweModel!.description);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _imageUrlController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Container(
              child:
                  Text(!isEditMode ? 'Tambah Koleksi Cewe' : 'Ubah Data Cewe')),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: ListView(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: [
                TextFormField(
                  maxLength: 7,
                  controller: _nameController,
                  validator: (value) =>
                      (value!.isEmpty) ? "Harus diisi dulu mas 😭" : null,
                  decoration: InputDecoration(
                    hintText: 'Nama Cewe Cakep',
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
                  maxLength: 2,
                  controller: _ageController,
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
                  controller: _imageUrlController,
                  validator: (value) =>
                      (value!.isEmpty) ? "Harus diisi dulu mas 😭" : null,
                  decoration: InputDecoration(
                    hintText: 'Paste link image address dari Internet kesini',
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
                  maxLength: 40,
                  controller: _descriptionController,
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
                ElevatedButton(
                  onPressed: () {
                    final name = _nameController.text;
                    final age = _ageController.text;
                    final imageUrl = _imageUrlController.text;
                    final description = _descriptionController.text;

                    setState(() {
                      if (_key.currentState!.validate()) {
                        if (isEditMode) {
                          // listDataCewe.removeAt(widget.currentIndex!);
                          // listDataCewe.insert(
                          //     widget.currentIndex!,
                          //     CeweModel(
                          //       name: name,
                          //       imageUrl: imageUrl,
                          //       age: age,
                          //       description: description,
                          //     ));
                          listDataCewe[widget.currentIndex!].name =
                              _nameController.text;
                          listDataCewe[widget.currentIndex!].age =
                              _ageController.text;
                          listDataCewe[widget.currentIndex!].imageUrl =
                              _imageUrlController.text;
                          listDataCewe[widget.currentIndex!].description =
                              _descriptionController.text;
                        } else {
                          listDataCewe.add(CeweModel(
                            name: name,
                            imageUrl: imageUrl,
                            age: age,
                            description: description,
                          ));
                        }

                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => MasterPage()));
                      }
                    });

                    _nameController.text = '';
                    _ageController.text = '';
                    _imageUrlController.text = '';
                    _descriptionController.text = '';
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(45.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    primary: isEditMode
                        ? Colors.orange
                        : Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      !isEditMode ? 'Simpan' : 'Ubah Data',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                isEditMode
                    ? ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => MasterPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(45.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Kembali',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
