import 'package:dbproject/screens/home.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  void _submitForm() {
    nameController.clear();
    descriptionController.clear();
    timeController.clear();
    locationController.clear();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.white),
            SizedBox(width: 8),
            Text("Thanks for reporting! Successfully updated"),
          ],
        ),
        backgroundColor: Colors.blueAccent,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Home()),
              (route) => false,
            );
          },
        ),
        title: Text('Report Found Item'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                ),
                child:
                    Icon(Icons.add_a_photo, size: 80, color: Colors.grey[600]),
              ),
              SizedBox(height: 20),
              buildInputField("Add the name of the object", nameController),
              buildInputField(
                  "Add a one-line description", descriptionController),
              buildInputField("Add the time found", timeController),
              buildInputField("Add the location found", locationController),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                child: Text("SUBMIT",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
              SizedBox(height: 40),
              Divider(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Logo', style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text('© 2024 Your Website'),
                      SizedBox(width: 16),
                      Text('Privacy Policy'),
                      SizedBox(width: 16),
                      Text('Terms of Service'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(width: 8),
                      Icon(Icons.message),
                      SizedBox(width: 8),
                      Icon(Icons.call),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputField(String hintText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    timeController.dispose();
    locationController.dispose();
    super.dispose();
  }
}
