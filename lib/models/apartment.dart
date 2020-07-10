class ApartmentModel {
  final String name;
  final double price;
  final String sizeDesc;
  final double review;
  final double reviewCount;
  final String desc;
  final int sizeLivingRoom;
  final int sizeBedRoom;
  final int sizeBathRoom;
  final int phone;
  final String mapurl;
  final List<String> features;
  final List<String> personImages;
  final List<String> images;

  ApartmentModel({
    this.name,
    this.price,
    this.sizeDesc,
    this.review,
    this.reviewCount,
    this.desc,
    this.sizeLivingRoom,
    this.sizeBedRoom,
    this.sizeBathRoom,
    this.features,
    this.personImages,
    this.images,
    this.phone,
    this.mapurl,
  });

  static List<ApartmentModel> list = [
    ApartmentModel(
      name: "Suite Hotel Casa Diamond",
      price: 114,
      sizeDesc: "Fbulous",
      review: 5,
      reviewCount: 547,
      desc:
          "Situé à Casablanca, à 5 km de la mosquée Hassan-II, le Suite Hotel Casa Diamond propose des hébergements avec un restaurant, un parking privé gratuit et une salle de sport.",
      sizeLivingRoom: 80,
      sizeBedRoom: 20,
      sizeBathRoom: 12,
      features: ["restaurant", "Wi-Fi", "TV-LED"],
      phone: 652154321,
      personImages: ["1", "2"],
      images: ["1.1", "1.2", "1.3"],
      mapurl:'https://www.google.co.ma/maps/place/Suite+Hotel+Casa+Diamond/@33.5857629,-7.6225798,15z/data=!4m8!3m7!1s0x0:0xc634053a644f9306!5m2!4m1!1i2!8m2!3d33.5857629!4d-7.6225798',
    ),
    ApartmentModel(
      name: "Down town hotel",
      price: 93,
      sizeDesc: "fabulous",
      review: 4,
      reviewCount: 223,
      desc:
      "Situé dans le quartier Maarif de Casablanca, à 2,5 km de la mosquée Hassan II et à moins de 3 km du complexe Anfa Place Living Resort, le Down Town Hotel By Business & Leisure Hotels met à votre...",
      sizeLivingRoom: 80,
      sizeBedRoom: 20,
      sizeBathRoom: 12,
      features: ["restaurant", "Wi-Fi", "TV-LED"],
      phone: 625416532,
      personImages: ["1", "2"],
      images: ["2.1", "2.2", "2.3"],
       mapurl:'https://www.google.co.ma/maps/place/Down+Town+H%C3%B4tel+By+BLH/@33.586005,-7.63641,15z/data=!4m8!3m7!1s0x0:0x4a8f8616a4eed457!5m2!4m1!1i2!8m2!3d33.586005!4d-7.63641',
      ),
    ApartmentModel(
      name: "ONOMO Airport casablanca",
      price: 53,
      sizeDesc: "trés bien",
      review: 4.5,
      reviewCount: 1378,
      desc:
      "Situé à Casablanca, à 36 km de l'Anfa Place Living Resort, l’ONOMO Airport Casablanca propose un restaurant, un parking privé gratuit, une salle de sport et un bar.",
      sizeLivingRoom: 80,
      sizeBedRoom: 20,
      sizeBathRoom: 12,
      features: ["Air Conditioner", "Wi-Fi",  "TV-LED"],
      phone: 654442213,
      personImages: ["1", "2"],
      images: ["3.1", "3.2", "3.3"],
       mapurl:'https://www.google.co.ma/maps/place/ONOMO+Hotel+Casablanca+Airport/@33.3728299,-7.5666652,15z/data=!4m8!3m7!1s0x0:0x566c562159e632ea!5m2!4m1!1i2!8m2!3d33.3728299!4d-7.5666652',
    )
  ];
}
