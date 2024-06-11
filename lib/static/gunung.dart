class gunung {
  String name;
  String location;
  String description;
  String price;
  String imageAsset;

  gunung({
    required this.name,
    required this.location,
    required this.description,
    required this.price,
    required this.imageAsset,
  });

  get length => null;
}

var gunungList = [
  gunung(
    name: 'Merbabu', 
    location: 'SJawa Tengah', 
    description: 'Mount Merbabu is the third highest mountain in Central Java after Mount Slamet and Mount Sumbing. The mountain with an altitude of 3,145 meters above sea level is located in three districts in Central Java, namely Magelang, Boyolali and Semarang.', 
    price: 'IDR 155K', 
    imageAsset: 'images/gunung3.jpg'
  ),
  gunung(
    name: 'Ijen',
    location: 'Banyuwangi, Jawa Timur',
    description:
        'Mount Ijen is a volcano located on the border of Banyuwangi Regency and Bondowoso Regency, East Java, Indonesia. This mountain has an altitude of 2,386 meters above sea level. Mount Ijen last erupted in 1999.',
    price: 'IDR 130K',
    imageAsset: 'images/ijen.png'
  ),
  gunung(
    name: 'Bromo',
    location: 'Jawa Timur',
    description:'Mount Bromo is one of the active volcanoes in Indonesia. The mountain which has an altitude of 2,392 meters above sea level is a mainstay destination for East Java. Mount Bromo stands proudly surrounded by a caldera or sea of ​​sand covering an area of ​​10 square kilometers.',
    price: 'IDR 115K',
    imageAsset: 'images/gunung1.jpg'
  ),
  gunung(
      name: 'Prau',
      location: 'Jawa Tengah',
      description: '',
      price: 'IDR K',
      imageAsset: 'images/gunung4.jpg'
    ),
  gunung(
      name: 'Raung',
      location: 'Banyuwangi, Jawa Timur',
      description: 'Mount Raung (highest peak: 3,344 masl) is a conical volcano located on the eastern tip of Java Island, Indonesia. Administratively, this mountain area is included in the territory of three districts in the Besuki region, East Java, namely Banyuwangi, Bondowoso and Jember.',
      price: 'IDR 165K',
      imageAsset: 'images/raung.png'
    ),
  gunung(
      name: 'Gede Pangrango',
      location: 'Cibodas, Jawa Barat',
      description: 'Mount Gede is within the scope of Gede Pangrango National Park, which is one of the five national parks that was first announced in Indonesia in 1980. This mountain is located in two districts, namely Cianjur and Sukabumi Regencies, with an altitude of 1,000 - 2,958 m.',
      price: 'IDR 80K',
      imageAsset: 'images/gunung6.png'
    ),
  gunung(
      name: 'Ciremai',
      location: 'Jawa Barat',
      description: 'Mount Ciremai has an altitude of 3,078 meters above sea level, which makes it the highest mountain in West Java with the existing topography, which is wavy, hilly, to mountainous. Mount Ciremai is also a solitary volcano with a double crater (west and east) with a radius of 600 meters and a depth of 250 meters.',
      price: 'IDR 165K',
      imageAsset: 'images/ciremai.png'
    ),
  gunung(
      name: 'Semeru',
      location: 'Jawa Timur',
      description: 'Semeru is the highest mountain on the island of Java with an altitude reaching 3,676 meters above sea level. One of the active volcanoes in Indonesia, which is administratively located in the Lumajang Regency and Malang Regency areas.',
      price: 'IDR 160K',
      imageAsset: 'images/gunung5.png'
    ),
];