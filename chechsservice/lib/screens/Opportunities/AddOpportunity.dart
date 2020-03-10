// Import: Flutter
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// Import Third Party
import 'package:provider/provider.dart';
// Import chechsservice
import 'package:chechsservice/state/AppState.dart';

class AddOpportunity extends StatefulWidget {
  AddOpportunity({Key key}) : super(key: key);

  @override
  _AddOpportunityState createState() => _AddOpportunityState();
}

class _AddOpportunityState extends State<AddOpportunity> {
  // State variables
  String inputOrganization = 'Example Opportunity';
  String inputLocation = 'Example Address';
  DateTime inputStart = DateTime.now();
  DateTime inputEnd = DateTime.now();
  String inputPhone = 'xxx-xxx-xxxx';
  String inputEmail = 'example@gmail.com';

  @override
  Widget build(BuildContext context) {
    AppState state = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Opportunity"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        heroTag: "AddOpportunity",
        label: Text("Add"),
        onPressed: () {
          // Get the current opportunity index
          int index = state.opportunities.keys.last;
          // Update the global state
          state.opportunities[index + 1] = {};
          state.opportunities[index + 1]['start'] = inputStart;
          state.opportunities[index + 1]['end'] = inputEnd;
          state.opportunities[index + 1]['location'] = inputLocation;
          state.opportunities[index + 1]['organization'] = inputOrganization;
          state.opportunities[index + 1]['contactPhone'] = inputPhone;
          state.opportunities[index + 1]['contactEmail'] = inputEmail;
          // Leave screen
          Navigator.pop(context);
        },
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
              minWidth: viewportConstraints.maxWidth,
            ),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Name of Opportunity'),
                      onChanged: (String text) {
                        setState(() {
                          inputOrganization = text;
                        });
                      },
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Address of Opportunity'),
                      onChanged: (String place) {
                        setState(() {
                          inputLocation = place;
                        });
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Phone # of Host'),
                      keyboardType: TextInputType.phone,
                      onChanged: (String phone) {
                        setState(() {
                          inputPhone = phone;
                        });
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email of Host'),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (String email) {
                        setState(() {
                          inputEmail = email;
                        });
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      width: MediaQuery.of(context).size.width * .95,
                      height: 50,
                      child: FlatButton(
                        color: Colors.blueGrey.shade100,
                        child: Text(
                          'Start Date: ${DateFormat.yMMMMd('en_US').add_jm().format(inputStart)}',
                        ),
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 250,
                                child: CupertinoDatePicker(
                                  initialDateTime: inputStart,
                                  onDateTimeChanged: (DateTime date) {
                                    setState(() {
                                      inputStart = date;
                                    });
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: MediaQuery.of(context).size.width * .95,
                      height: 50,
                      child: FlatButton(
                        color: Colors.blueGrey.shade100,
                        child: Text(
                          'End Date: ${DateFormat.yMMMMd('en_US').add_jm().format(inputEnd)}',
                        ),
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 250,
                                child: CupertinoDatePicker(
                                  initialDateTime: inputEnd,
                                  onDateTimeChanged: (DateTime date) {
                                    setState(() {
                                      inputEnd = date;
                                    });
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
