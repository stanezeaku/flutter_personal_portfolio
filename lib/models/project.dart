class Project {
  final String title, description, videoID, githubUrl;

  Project(
      {required this.title,
      required this.description,
      required this.videoID,
      required this.githubUrl});
}

List<Project> demoProjects = [
  Project(
      title: "SmartStan",
      description:
          "Simple Face Recognition authentication (Sign up + Sign in). It works with two device vision models working together, the google ML kit vision model and MobileFaceNet model.",
      videoID: "PgA3A8M5R0I",
      githubUrl: "https://github.com/Stanezeaku/smartstan"),
  Project(
      title: "ZLearning",
      description:
          "An Open source E-Learning platform app, with complete screens and widgets which are reusable in your flutter projects.",
      videoID: "nvmAj3OTyyk",
      githubUrl: "https://github.com/stanezeaku/zlearning"),
  // Project(
  //     title: "Ispend",
  //     description:
  //         "A personal expenses tracker app, which will help keep record of your daily purchase. it can certainly come in handy while shopping.",
  //     videoID: "pvPsJFRGleA",
  //     githubUrl: "https://github.com/Stanezeaku/Ispend"),
];
