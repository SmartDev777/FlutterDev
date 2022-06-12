import 'package:flutter/material.dart';

class NotApp extends StatefulWidget {
  const NotApp({Key? key}) : super(key: key);

  @override
  State<NotApp> createState() => _NotAppState();
}

class _NotAppState extends State<NotApp> {
  List<String> data = ["Ali", "Ahmed"];
  TextEditingController textName = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  addName(name) {
    data.add(name);
    textName.clear();
    setState(() {});
  }

  update(index) {
    data[index] = textName.text;
    textName.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: ElevatedButton(
          onPressed: () {
            addName(textName.text);
          },
          child: Text("Add"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) => ListTile(
                      tileColor: Colors.blueGrey[900],
                      textColor: Colors.white,
                      title: GestureDetector(
                        onDoubleTap: () {
                          showAlertDialog(context, index);
                        },
                        child: Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text(data[index])),
                      ),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                showAlertDialog(context, index);
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                data.removeAt(index);
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context, index) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Update"),
      onPressed: () {
        update(index);
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Add"),
      onPressed: () {
        addName(textName.text);
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Please enter note"),
          TextField(
            controller: textName,
            decoration: InputDecoration(
              label: Text("Enter name"),
            ),
          ),
        ],
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
