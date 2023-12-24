import 'package:flutter/material.dart';
import 'dart:convert';



class newdetail extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<newdetail> {
  List<dynamic> data = [];
  List<dynamic> filteredData = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    String jsonString = await DefaultAssetBundle.of(context).loadString('assets/data/data.json');
    setState(() {
      data = json.decode(jsonString);
      filteredData = List.from(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data List'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch(data: data));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: filteredData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(filteredData[index]['Title']),
              subtitle: Text(
                  'Duration: ${filteredData[index]['Duration']}, Year: ${filteredData[index]['Year']}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage(item: filteredData[index])),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> item;

  DetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item['Title']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text('ID: ${item['_id']}'),
              Text('Title: ${item['Title']}'),
              Text('Duration: ${item['Duration']}'),
              Text('Year: ${item['Year']}'),
              SizedBox(height: 16),
              Text('Description: ${item['Disaster_Info']}'),
            ],
          ),
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final List<dynamic> data;

  DataSearch({required this.data});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<dynamic> suggestions = query.isEmpty
        ? List.from(data)
        : data.where((item) => item['Title'].toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]['Title']),
          subtitle: Text(
              'Duration: ${suggestions[index]['Duration']}, Year: ${suggestions[index]['Year']}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(item: suggestions[index]),
              ),
            );
          },
        );
      },
    );
  }
}
