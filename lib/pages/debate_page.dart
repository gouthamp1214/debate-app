import 'package:flutter/material.dart';

class DebateScreen extends StatefulWidget {
  @override
  _DebateScreenState createState() => _DebateScreenState();
}

class _DebateScreenState extends State<DebateScreen> {
  final List<String> debateTopics = [];
  final TextEditingController textController = TextEditingController();

  void addDebateTopic(String topic) {
    setState(() {
      debateTopics.add(topic);
      textController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: debateTopics.length,
            itemBuilder: (context, index) {
              return DebateTopicCard(topic: debateTopics[index]);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textController,
                  decoration: const InputDecoration(
                      hintText: 'Enter a debate topic...'),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  addDebateTopic(textController.text);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DebateTopicCard extends StatelessWidget {
  final String topic;

  const DebateTopicCard({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          topic,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
