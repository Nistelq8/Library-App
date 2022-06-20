class members {
  String firstname;
  String Lastname;
  List<int> BorrowedBooks;
  String membershipType;
  members(
      {required this.firstname,
      required this.Lastname,
      required this.BorrowedBooks,
      required this.membershipType});

  static List<members> LibMembers = [
    members(
        firstname: "Aziz",
        Lastname: "Alsaffar",
        BorrowedBooks: [3, 9],
        membershipType: "Gold"),
    members(
        firstname: "Hashim",
        Lastname: "Behbehani",
        BorrowedBooks: [5],
        membershipType: "Gold"),
    members(
        firstname: "Alhamza",
        Lastname: "Abdulmonem",
        BorrowedBooks: [1, 2],
        membershipType: "Silver"),
    members(
        firstname: "Reem",
        Lastname: "AlHasawi",
        BorrowedBooks: [],
        membershipType: "Platinum"),
    members(
        firstname: "Laila",
        Lastname: "AlKandery",
        BorrowedBooks: [10, 7, 8],
        membershipType: "Platinum"),
  ];
}


//  members = [
//   {
//     id: 1,
//     firstName: "Aziz",
//     lastName: "AlSaffar",
//     currentlyBorrowedBooks: [3, 9],
//     membership: "gold", // can borrow 3 books
//   },
//   {
//     id: 2,
//     firstName: "Hashim",
//     lastName: "Behbehani",
//     currentlyBorrowedBooks: [5],
//     membership: "gold", // can borrow 3 books
//   },
//   {
//     id: 3,
//     firstName: "Alhamza",
//     lastName: "Abdulmonem",
//     currentlyBorrowedBooks: [1, 2],
//     membership: "silver", // can borrow 2 books
//   },
//   {
//     id: 4,
//     firstName: "Reem",
//     lastName: "AlHasawi",
//     currentlyBorrowedBooks: [],
//     membership: "platinum", // can borrow 5 books
//   },
//   {
//     id: 5,
//     firstName: "Laila",
//     lastName: "AlKandery",
//     currentlyBorrowedBooks: [10, 7, 8],
//     membership: "platinum", // can borrow 5 books
//   },
// ];
