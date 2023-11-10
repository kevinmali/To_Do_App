class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'lib/Asset/images/to_do_intro.png',
    title: 'A Cool Way to Get Start',
    description:
        'To-Do App is a application that combines a todo list and a calendar that can help you manage your all tasks',
  ),
  Slide(
    imageUrl: 'lib/Asset/images/to_do_intro2.jpeg',
    title: 'Design Interactive App UI',
    description:
        'This is To-Do iOS application which will allow user manage they tasks easily',
  ),
  Slide(
    imageUrl: 'lib/Asset/images/to_do_intro3.png',
    title: 'It\'s Just the Beginning',
    description:
        'To-Do App is a application that combines a todo list and a calendar that can help you manage your school related work and events in one place. It’s fast and beautiful yet simple design that can help you focus on what matters most.',
  ),
];
