//Mi Clase ChatModel
class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

//Constructor
  ChatModel({
    required this.avatarUrl,
    required this.name,
    required this.datetime,
    required this.message,
  });

  static final List<ChatModel> messagesList = [
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
      name: "Laurent",
      datetime: "20:18",
      message: "How about meeting tomorrow?",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Tracy",
      datetime: "19:22",
      message: "I love that idea, it's great!",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Claire",
      datetime: "14:34",
      message: "I wasn't aware of that. Let me check",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Joe",
      datetime: "11:05",
      message: "Flutter just released 1.0 officially. Should I go for it?",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "Mark",
      datetime: "09:46",
      message: "It totally makes sense to get some extra day-off.",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "Williams",
      datetime: "08:15",
      message: "It has been re-scheduled to next Saturday 7.30pm",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/22.jpg",
      name: "Emma",
      datetime: "16:42",
      message: "I'm looking forward to it!",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/54.jpg",
      name: "David",
      datetime: "13:20",
      message: "What's the agenda for the meeting?",
    ),
    // 8 elementos más
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/12.jpg",
      name: "Sophie",
      datetime: "18:30",
      message: "Let's plan for the weekend getaway!",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/32.jpg",
      name: "Michael",
      datetime: "12:15",
      message: "Any updates on the project status?",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/55.jpg",
      name: "Grace",
      datetime: "21:05",
      message: "I heard there's a new restaurant opening. Let's check it out!",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/73.jpg",
      name: "Daniel",
      datetime: "17:48",
      message: "I'm stuck on a bug. Can you help me out?",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/62.jpg",
      name: "Olivia",
      datetime: "15:12",
      message: "Don't forget about the upcoming presentation!",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/22.jpg",
      name: "John",
      datetime: "10:30",
      message: "The weather is fantastic today!",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/43.jpg",
      name: "Mia",
      datetime: "08:55",
      message: "Have you seen the latest movie? It's amazing!",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/65.jpg",
      name: "Richard",
      datetime: "22:40",
      message: "Let's catch up over coffee this weekend.",
    ),
    // ... Agrega más elementos según sea necesario
  ];
}
