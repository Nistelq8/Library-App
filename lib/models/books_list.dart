class books {
  String author;
  String title;
  List<String> genre;
  bool available;
  List<int> borrowedBy = [];
  String image;
  books(
      {required this.author,
      required this.title,
      required this.genre,
      this.available = true,
      this.borrowedBy = const [],
      this.image = ""});

  // static List<books> LibBooks = [
  //   books(
  //       author: "Jorder Peterson",
  //       title: "12 Rules for Life: An Antidote to Chaos",
  //       genre: ["Self-Help"],
  //       available: false,
  //       borrowedBy: [3],
  //       image: 'assets/images/rulesforlife.jpg'),
  //   books(
  //       author: "Blake Croush",
  //       title: "Dark Matter",
  //       genre: ["Sci-Fi", "Thriller"],
  //       available: false,
  //       borrowedBy: [3],
  //       image: 'assets/images/darkmatter.jpg'),
  //   books(
  //       author: "Robin Sloan",
  //       title: "Mr. Penumbra's 24-Hour Bookstore",
  //       genre: ["Suspense", "Fantasy"],
  //       available: false,
  //       borrowedBy: [1, 3, 5, 1],
  //       image: 'assets/images/bookstore.jpg'),
  //   books(
  //       author: "Paul Kalanithi",
  //       title: "When Breath Becomes Air",
  //       genre: ["Biography"],
  //       available: true,
  //       borrowedBy: [2, 5],
  //       image: 'assets/images/whenbreath.jpg'),
  //   books(
  //       author: "Eric Ries",
  //       title: "The Lean Startup",
  //       genre: ["Business", "Entrepreneurship"],
  //       available: false,
  //       borrowedBy: [4, 1, 2],
  //       image: 'assets/images/theleanstartup.jpg'),
  //   books(
  //       author: "George R.R. Martin",
  //       title: "A Strom of Swords",
  //       genre: ["Fantasy"],
  //       available: true,
  //       borrowedBy: [],
  //       image: 'assets/images/astormofswords.jpg'),
  //   books(
  //       author: "Leigh Bardugo",
  //       title: "Six of Crows",
  //       genre: ["Fantasy"],
  //       available: false,
  //       borrowedBy: [4, 3, 2, 1, 5],
  //       image: 'assets/images/sixofcrows.jpg'),
  //   books(
  //       author: "Agatha Christie",
  //       title: "Curtain: Poirot's Last Case",
  //       genre: ["Crime", "Mystery"],
  //       available: false,
  //       borrowedBy: [3, 5],
  //       image: 'assets/images/Curtain.jpg'),
  //   books(
  //       author: "Elif Shafak",
  //       title: "The Forty Rules of Love",
  //       genre: ["Fiction"],
  //       available: false,
  //       borrowedBy: [5, 1],
  //       image: 'assets/images/rulesoflove.jpg'),
  //   books(
  //       author: "Leigh Bardugo",
  //       title: "The Language of Thorns: Midnight Tales and Dangerous Magic",
  //       genre: ["Fantasy"],
  //       available: false,
  //       borrowedBy: [5],
  //       image: 'assets/images/thorns.jpg')
  // ];
}




//  books = [
//   {
//     id: 1,
//     author: "Jordan Peterson",
//     title: "12 Rules for Life: An Antidote to Chaos",
//     genre: ["Self-Help"],
//     available: false,
//     borrowedBy: [3],
//   },
//   {
//     id: 2,
//     author: "Blake Crouch",
//     title: "Dark Matter",
//     genre: ["Sci-Fi", "Thriller"],
//     available: false,
//     borrowedBy: [3],
//   },
//   {
//     id: 3,
//     author: "Robin Sloan",
//     title: "Mr. Penumbra's 24-Hour Bookstore", 
//     genre: ["Suspense", "Fantasy"],
//     available: false,
//     borrowedBy: [1, 3, 5, 1],
//   },
//   {
//     id: 4,
//     author: "Paul Kalanithi",
//     title: "When Breath Becomes Air",
//     genre: ["Biography"],
//     available: true,
//     borrowedBy: [2, 5],
//   },
//   {
//     id: 5,
//     author: "Eric Ries",
//     title: "The Lean Startup",
//     genre: ["Business", "Entrepreneurship"],
//     available: false,
//     borrowedBy: [4, 1, 2],
//   },
//   {
//     id: 6,
//     author: "George R.R. Martin",
//     title: "A Storm of Swords",
//     genre: ["Fantasy"],
//     available: true,
//     borrowedBy: [],
//   },
//   {
//     id: 7,
//     author: "Leigh Bardugo",
//     title: "Six of Crows",
//     genre: ["Fantasy"],
//     available: false,
//     borrowedBy: [4, 3, 2, 1, 5],
//   },
//   {
//     id: 8,
//     author: "Agatha Christie",
//     title: "Curtain: Poirot's Last Case",
//     genre: ["Crime", "Mystery"],
//     available: false,
//     borrowedBy: [3, 5],
//   },
//   {
//     id: 9,
//     author: "Elif Shafak",
//     title: "The Forty Rules of Love",
//     genre: ["Fiction"],
//     available: false,
//     borrowedBy: [5, 1],
//   },
//   {
//     id: 10,
//     author: "Leigh Bardugo",
//     title: "The Language of Thorns: Midnight Tales and Dangerous Magic",
//     genre: ["Fantasy"],
//     available: false,
//     borrowedBy: [5],
//   },
// ];
