import 'package:apni_gaadi/backend/chat_display.dart';
import 'package:apni_gaadi/backend/methods.dart';
import 'package:apni_gaadi/chat/chat_screen.dart';
import 'package:apni_gaadi/chat/text.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  final String phone;
  const ChatListScreen({
    required this.phone,
  });

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  final List<Chat> chats = [
    Chat(
      name: 'Akshat Verma (Supplier)',
      message: 'Sir new stock add...',
      time: '10:30 AM',
      unreadCount: 2,
    ),
    Chat(
      name: 'Nikhil Dheeka ',
      message: 'Thanks ji',
      time: 'Yesterday',
      unreadCount: 0,
    ),
    Chat(
      name: 'Ramesh Gupta (Supplier)',
      message: 'Shukriya, Ramesh.',
      time: '9:15 AM',
      unreadCount: 0,
    ),

    Chat(
      name: 'Anita Devi (Shopkeeper)',
      message: 'Aaj deliver ho gaya hai?',
      time: '11:45 AM',
      unreadCount: 1,
    ),

    Chat(
      name: 'Preeti Ahuja (Shopkeeper)',
      message: 'Aur stock chahiye. Aaj pahunchaoge?',
      time: '4:20 PM',
      unreadCount: 0,
    ),

    Chat(
      name: 'Suman Singh (Shopkeeper)',
      message: 'Price list update kar dijiye...',
      time: '7:55 PM',
      unreadCount: 0,
    ),

    Chat(
      name: 'Rajesh Verma (Shopkeeper)',
      message: 'Payment details bhej do...',
      time: '10:25 PM',
      unreadCount: 0,
    )
    // Add more chats as needed
  ];

  Stream<List<DisplayChat>> chatListStream() async* {
    if (mounted) {
      while (true) {
        await Future.delayed(const Duration(seconds: 1));
        yield await ApiMethods.displayChats(context, widget.phone);
      }
    }
  }

  Stream unreadCountStream(String senderPhone) async* {
    if (mounted) {
      while (true) {
        await Future.delayed(const Duration(milliseconds: 1));
        yield await ApiMethods.getUnreadMessage(context,
            recievermail: widget.phone, sendermail: senderPhone);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray900,
      appBar: AppBar(
        automaticallyImplyLeading: kIsWeb ? true : false,
        elevation: 0,
        backgroundColor: appTheme.gray900,
        title: const CustomText(
          text: 'Chats',
          color: kIsWeb ? Colors.white : Colors.white,
          size: 18,
        ),
      ),
      body: StreamBuilder<List<DisplayChat>>(
          stream: chatListStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  final chat = snapshot.data![index];
                  bool isBold = chat.readUnreadStatus == "Read" ? false : true;
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ChatScreen(
                              chatName: chat.otherPartyName,
                              onlineStatus: "",
                              number: widget.phone,
                              chatNumber: chat.otherPartyEmail);
                        }),
                      );
                    },
                    shape: const Border(bottom: BorderSide(width: 0.2)),
                    leading: const CircleAvatar(
                      radius: 24.0,
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/premium-psd/3d-cartoon-character-avatar-isolated-3d-rendering_235528-554.jpg?w=2000'),
                    ),
                    title: CustomText(
                      color: Colors.white,
                      text: chat.otherPartyName,
                    ),
                    subtitle: Text(
                      chat.chatMessage,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight:
                              isBold ? FontWeight.bold : FontWeight.normal),
                    ),
                    trailing: SizedBox(
                      width: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            color: kIsWeb ? Colors.black : Colors.black,
                            text: chat.messageTime,
                            size: 10,
                            weight: FontWeight.w300,
                          ),
                          StreamBuilder(
                              stream: unreadCountStream(
                                  snapshot.data![index].otherPartyEmail),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return snapshot.data == 0
                                      ? Container()
                                      : Container(
                                          decoration: BoxDecoration(
                                            color: appTheme.cyan400,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              snapshot.data.toString(),
                                              style: const TextStyle(
                                                color: kIsWeb
                                                    ? Colors.black
                                                    : Colors.white,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        );
                                }
                                return Container();
                              })
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            return Container();
          }),
    );
  }
}

class Chat {
  final String name;
  final String message;
  final String time;
  final int unreadCount;

  Chat({
    required this.name,
    required this.message,
    required this.time,
    required this.unreadCount,
  });
}
