class Projectiteams{
final String image;
final String title;
final String subtitle;
final String links ;
Projectiteams({
 required this.image,
  required this.title,
  required this.subtitle,
required this.links
});
}

List<Projectiteams> myprojects=[
Projectiteams(image: "assets/LACHING oroboro customer app.jpg",
    title: "OROBORO LOAN ",
    subtitle: "Customer Applicaton",
    links: "https://web1.oroboro.in/BLDashboard/Login"
),
 Projectiteams(image: "assets/fursancrt.jpg",
     title: "Fursan Cart",
     subtitle: "Delivery App",
     links: "https://github.com/shaheensha-007/FURSAN_CART"
 ),
];