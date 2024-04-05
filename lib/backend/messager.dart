import 'dart:convert';

class DisplayChatMessages {
  int? id;
  String? chatMessage;
  String? messageTime;
  String? messageDate;
  String? sendername;
  String? senderEmail;
  String? recievername;
  String? recieveremail;
  String? onlineofflinestatus;
  String? messageresdedstatus;

  DisplayChatMessages(
      {required this.id,
      required this.chatMessage,
      required this.messageTime,
      required this.messageDate,
      required this.sendername,
      required this.senderEmail,
      required this.recievername,
      required this.recieveremail,
      required this.onlineofflinestatus,
      required this.messageresdedstatus});

  DisplayChatMessages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chatMessage = json['ChatMessage'];
    messageTime = json['MessageTime'];
    messageDate = json['MessageDate'];
    sendername = json['Sendername'];
    senderEmail = json['SenderEmail'];
    recievername = json['Recievername'];
    recieveremail = json['Recieveremail'];
    onlineofflinestatus = json['Onlineofflinestatus'];
    messageresdedstatus = json['Messageresdedstatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['ChatMessage'] = chatMessage;
    data['MessageTime'] = messageTime;
    data['MessageDate'] = messageDate;
    data['Sendername'] = sendername;
    data['SenderEmail'] = senderEmail;
    data['Recievername'] = recievername;
    data['Recieveremail'] = recieveremail;
    data['Onlineofflinestatus'] = onlineofflinestatus;
    data['Messageresdedstatus'] = messageresdedstatus;
    return data;
  }
}

List<DisplayChatMessages> dIsplayChatMessagesFromMap(String str) =>
    List<DisplayChatMessages>.from(
        json.decode(str).map((x) => DisplayChatMessages.fromJson(x)));
