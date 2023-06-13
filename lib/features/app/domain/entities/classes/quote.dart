class Quote{
  final String text;
  final String author;

  Quote({
    required this.text,
    required this.author
  });

  Quote.empty():text="", author="";
}