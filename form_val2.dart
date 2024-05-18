    import 'package:flutter/material.dart';  
      
    void main() => runApp(const MyApp());  
      
    class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
      @override  
      Widget build(BuildContext context) {  
        const appTitle = 'Flutter Form Demo';  
        return MaterialApp(  
          title: appTitle,  
          home: Scaffold(  
            appBar: AppBar(  
              title: const Text(appTitle),  
            ),  
            body: MyCustomForm(),  
          ),  
        );  
      }  
    }  
    // Create a Form widget.  
    class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
  
      @override  
      MyCustomFormState createState() {  
        return MyCustomFormState();  
      }  
    }  
    // Create a corresponding State class, which holds data related to the form.  
    class MyCustomFormState extends State<MyCustomForm> {  
      // Create a global key that uniquely identifies the Form widget  
      // and allows validation of the form.  
      final _formKey = GlobalKey<FormState>();  
      
      @override  
      Widget build(BuildContext context) {  
        // Build a Form widget using the _formKey created above.  
        return Form(  
          key: _formKey,  
          child: Column(  
            crossAxisAlignment: CrossAxisAlignment.start,  
            children: <Widget>[  
              TextFormField(  
                decoration: const InputDecoration(  
                  icon: Icon(Icons.person),  
                  hintText: 'Enter your full name',  
                  labelText: 'Name',  
                ),  
                validator: (value) {  
                  if (value!.isEmpty) {  
                    return 'Please enter some text';  
                  }  
                  return null;  
                },  
              ),  
              TextFormField(  
                decoration: const InputDecoration(  
                  icon: Icon(Icons.phone),  
                  hintText: 'Enter a phone number',  
                  labelText: 'Phone',  
                ),  
                validator: (value) {  
                  if (value!.isEmpty) {  
                    return 'Please enter valid phone number';  
                  }  
                  return null;  
                },  
              ),  
              TextFormField(  
                decoration: const InputDecoration(  
                icon: Icon(Icons.calendar_today),  
                hintText: 'Enter your date of birth',  
                labelText: 'Dob',  
                ),  
                validator: (value) {  
                  if (value!.isEmpty) {  
                    return 'Please enter valid date';  
                  }  
                  return null;  
                },  
               ),  
              Container(  
                  padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
                  child: ElevatedButton(  
                    child: const Text('Submit'),  
                    onPressed: () {  
                      // It returns true if the form is valid, otherwise returns false  
                      if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }  
                    },  
                  )),  
            ],  
          ),  
        );  
      }  
    }  