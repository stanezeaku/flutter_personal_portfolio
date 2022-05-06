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
      videoID: "k0r1AJMK79g",
      githubUrl: "https://github.com/Stanley-Ezeaku/smartstan"),
  Project(
      title: "Z-Learning",
      description:
          "An online learning platform that offer free cutting edge Tech related courses.",
      videoID: "qUD2GxTeVcI",
      githubUrl: "https://github.com/Stanley-Ezeaku/z-learning"),
  Project(
      title: "Ispend",
      description:
          "A personal expenses tracker app with flutter, which will help keep record of your daily purchases, it can certainly come in handy while shopping.",
      videoID: "pvPsJFRGleA",
      githubUrl: "https://github.com/Stanley-Ezeaku/Ispend"),
];
