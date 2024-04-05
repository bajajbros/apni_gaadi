import 'dart:convert';

List<DisplayChat> displayChatFromMap(String str) =>
    List<DisplayChat>.from(json.decode(str).map((x) => DisplayChat.fromMap(x)));

String displayChatToMap(List<DisplayChat> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class DisplayChat {
  final String readUnreadStatus;
  final String chatMessage;
  final String messageTime;
  final String messageDate;
  final String otherPartyName;
  final String otherPartyEmail;

  DisplayChat({
    required this.readUnreadStatus,
    required this.chatMessage,
    required this.messageTime,
    required this.messageDate,
    required this.otherPartyName,
    required this.otherPartyEmail,
  });

  factory DisplayChat.fromMap(Map<String, dynamic> json) => DisplayChat(
        readUnreadStatus: json["Messageresdedstatus"],
        chatMessage: json["ChatMessage"],
        messageTime: json["MessageTime"],
        messageDate: json["MessageDate"],
        otherPartyName: json["OtherPartyName"],
        otherPartyEmail: json["OtherPartyEmail"],
      );

  Map<String, dynamic> toMap() => {
        "Messageresdedstatus": readUnreadStatus,
        "ChatMessage": chatMessage,
        "MessageTime": messageTime,
        "MessageDate": messageDate,
        "OtherPartyName": otherPartyName,
        "OtherPartyEmail": otherPartyEmail,
      };
}
