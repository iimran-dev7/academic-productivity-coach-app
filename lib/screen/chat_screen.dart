// Suggested code may be subject to a license. Learn more: ~LicenseLog:2196991187.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:288010682.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3062630036.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3123437278.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:119096122.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3128291729.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2436860504.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1591511787.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:506782115.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2295085968.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:68795173.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3990281410.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4116837945.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:150274080.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2095177474.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1275519600.
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [
    ChatMessage(text: "Hello!", sender: "user"),
    ChatMessage(text: "Hi there!", sender: "other"),
    ChatMessage(text: "How are you?", sender: "user"),
    ChatMessage(text: "I'm good, thanks!", sender: "other"),
  ];

  final TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    if (_messageController.text.trim().isNotEmpty) {
      setState(() {
        _messages.insert(0, ChatMessage(text: _messageController.text, sender: "user"));
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text("Chat"),),
       drawer: Drawer(
        backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Text('Productivity Menu', style: TextStyle(color: Colors.white, fontSize: 24,),),
            ),
            ListTile(title: const Text('Productivity Technique'), onTap: () {Navigator.pop(context);},),
            ListTile(title: const Text('Productivity Plan'), onTap: () {Navigator.pop(context);},),
            
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ChatBubble(
                  message: message.text,
                  isUserMessage: message.sender == "user",
                );
              },
            ),
          ),
          _buildMessageBar(),
        ],
      ),
    );
  }

  Widget _buildMessageBar() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                hintText: "Enter message...",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: _sendMessage,
          ),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final String sender;

  ChatMessage({required this.text, required this.sender});
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isUserMessage;

  const ChatBubble({Key? key, required this.message, required this.isUserMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isUserMessage ? Colors.blue[100] : Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(message),
      ),
    );
  }
}
