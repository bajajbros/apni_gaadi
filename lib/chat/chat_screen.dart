import 'dart:developer';

import 'package:apni_gaadi/backend/messager.dart';
import 'package:apni_gaadi/backend/methods.dart';
import 'package:apni_gaadi/chat/text.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String chatNumber;
  final String number;
  final String chatName;
  final String onlineStatus;
  const ChatScreen(
      {required this.chatName,
      required this.onlineStatus,
      required this.number,
      required this.chatNumber});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Future<List<Message>> displayChatMessages(
      BuildContext context, String phone, String partyPhone) async {
    print('phone = $phone');
    print('partyPhone = $partyPhone');

    final url =
        '${ApiMethods.baseUrl}/GETChatmessages?token=${ApiMethods.token}&recievermail=$partyPhone&sendermail=$phone';
    http.Response response = await http.get(
      Uri.parse(url),
    );
    log(url);

    log(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      final data = dIsplayChatMessagesFromMap(response.body);
      List<Message> messages = [];
      // print('here');
      for (var element in data) {
        bool isMe = element.recieveremail == partyPhone ? true : false;
        messages.add(
          Message(
              text: element.chatMessage!,
              isMe: isMe,
              time: element.messageTime!),
        );
      }
      return messages;
    } else {
      Fluttertoast.showToast(msg: "Error calling api");
      throw '';
    }
  }

  Stream<List<Message>> chatStream() async* {
    while (true) {
      log("calling stream");
      await Future.delayed(const Duration(seconds: 1));
      yield await displayChatMessages(context, widget.number, widget.chatName);
      // updateUnreadMessage(context,
      //     recievermail: widget.number, sendermail: widget.chatNumber);
    }
  }

  final TextEditingController _textController = TextEditingController();
  final ScrollController _controller = ScrollController();
  @override
  void initState() {
    // updateUnreadMessage(context,
    //     recievermail: widget.number, sendermail: widget.chatNumber);
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _scrollDown() {}

  Widget _buildMessage(Message message) {
    final isMe = message.isMe;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isMe) ...[
            const CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKfZS7sKX1MJ7WClhNt2EwP12GbFzpc-09wYP1_VPknMkG1v3JWS9o_WEBAlj0CrrqIy0&usqp=CAU'),
            ),
            const SizedBox(width: 10.0),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment:
                  isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: isMe ? appTheme.cyan400 : appTheme.gray400,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: CustomText(
                    size: 16,
                    weight: FontWeight.w300,
                    text: message.text,
                    color: isMe
                        ? kIsWeb
                            ? Colors.black
                            : Colors.white
                        : kIsWeb
                            ? Colors.black
                            : Colors.white,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  message.time.toString().substring(0, 11),
                  style: const TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
              ],
            ),
          ),
          if (isMe) ...[
            const SizedBox(width: 10.0),
            const CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/premium-psd/3d-cartoon-character-avatar-isolated-3d-rendering_235528-554.jpg?w=2000'),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              controller: _textController,
              style:
                  const TextStyle(color: kIsWeb ? Colors.white : Colors.white),
              decoration: const InputDecoration(
                hintText: 'Type a message',
                hintStyle:
                    TextStyle(color: kIsWeb ? Colors.white38 : Colors.white38),
              ),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.send,
                color: appTheme.cyan400,
              ),
              onPressed: () async {
                final profileData = await ApiMethods.displayDriverInformation(
                    ph: widget.number, status: "User");

                await ApiMethods.sendMessage(
                    token: ApiMethods.token,
                    message: _textController.text,
                    senderName: profileData[0].name,
                    senderMail: widget.number,
                    receiverName: widget.chatName,
                    receiverEmail: widget.chatNumber,
                    onlineStatus: widget.onlineStatus,
                    readUnreadStatus: 'Unread');
                _textController.clear();
              }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray900,
      appBar: AppBar(
        automaticallyImplyLeading: kIsWeb ? true : false,
        elevation: 0,
        backgroundColor: appTheme.cyan400,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/premium-psd/3d-cartoon-character-avatar-isolated-3d-rendering_235528-554.jpg?w=2000'),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: widget.chatName,
                  color: kIsWeb ? Colors.black : Colors.black,
                  size: 16,
                ),
                widget.onlineStatus.isEmpty
                    ? Container()
                    : CustomText(
                        color: kIsWeb ? Colors.black : Colors.black54,
                        size: 10,
                        text: widget.onlineStatus,
                      ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          StreamBuilder<List<Message>>(
              stream: chatStream(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                      controller: _controller,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        _controller.hasClients
                            ? _controller.animateTo(
                                _controller.position.maxScrollExtent,
                                duration: const Duration(seconds: 2),
                                curve: Curves.fastOutSlowIn,
                              )
                            : null;

                        return _buildMessage(snapshot.data![index]);
                      },
                    ),
                  );
                }
                return Container();
              }),
          const Divider(height: 1.0),
          Align(alignment: Alignment.bottomCenter, child: _buildTextComposer()),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isMe;
  final String time;

  Message({
    required this.text,
    required this.isMe,
    required this.time,
  });
}
