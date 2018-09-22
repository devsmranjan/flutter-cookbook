import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

const _appTitle = 'Computer Science : First Sem';

Future<List<Subjects>> fetchSubjectsData(http.Client client) async {
  final bputDataUrl = await client.get(
      'https://raw.githubusercontent.com/smrutiranjanrana/BPUT/master/bput-btech.json');

  // Use the compute function to run parseSubjects in a separate isolate
  return compute(parseSubjects, bputDataUrl.body);
}

// A function that will convert a response body into a List<Subjects>
List<Subjects> parseSubjects(String resposeBody) {
  final subjectData = json
      .decode(resposeBody)[1]['semesters'][0]['subjects']
      .cast<Map<String, dynamic>>();

  return subjectData.map<Subjects>((json) => Subjects.fromJson(json)).toList();
}

//For Each subjects
class Subjects {
  final String subjectName;
  final int credits;

  Subjects({this.subjectName, this.credits});

  factory Subjects.fromJson(Map<String, dynamic> json) {
    return Subjects(
        subjectName: json['subjectName'] as String,
        credits: json['credits'] as int);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appTitle,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appTitle),
      ),
      body: FutureBuilder<List<Subjects>>(
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
          }

          return snapshot.hasData
              ? SubjectsList(subjects: snapshot.data)
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
        future: fetchSubjectsData(http.Client()),
      ),
    );
  }
}

class SubjectsList extends StatelessWidget {
  final List<Subjects> subjects;

  const SubjectsList({Key key, this.subjects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(subjects[index].subjectName),
          trailing: Text(
            subjects[index].credits.toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      },
      itemCount: subjects.length,
    );
  }

}
