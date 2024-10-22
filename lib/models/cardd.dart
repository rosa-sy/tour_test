class Cardd{
  final String image;
  final String? title;
  final String location;
  final String date;
  final int? person;
  final int? bed;
  final int? bath;
  final int? price;

 Cardd({
    required this.image,
    required this.title,
    required this.location, 
    required this.date, 
    this.person, 
    this.bed, 
    this.bath,
    this.price,
    });

}
//.........hoppy projects
List<Cardd>cardDepartment=[
Cardd(
    image:'assets/roomo.png',
    title: "شقة مضيف من قبل SULTAN ",
    location:'السعودية , الرياض ',
    date:'25-24 أكتوبر ',
    person:2,
    bed:1,
    bath:1,
    price: 450,
    

  ),
Cardd(
    image:'assets/room01.png',
    title: "شقة مضيف من قبل SULTAN ",
    location:'السعودية , الرياض ',
    date:'25-24 أكتوبر ',
    person:2,
    bed:1,
    bath:1,
    price: 450,
    

  ),
Cardd(
    image:'assets/room3.png',
    title: "شقة مضيف من قبل Ali ",
    location:'السعودية , الرياض ',
    date:'22-25 أكتوبر ',
    person:2,
    bed:1,
    bath:1,
    price: 350,
    

  ),
Cardd(
    image:'assets/room4.png',
    title: "شقة مضيف من قبل Ali ",
    location:'السعودية , الرياض ',
    date:'22-25 أكتوبر ',
    person:2,
    bed:1,
    bath:1,
    price: 350,
    

  ),

 

];

