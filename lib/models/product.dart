class Product {
  String? name, country, image, imageDetails, description;
  double? price;

  Product(
      {required this.name,
      required this.country,
      required this.image,
      required this.price,
      required this.imageDetails,
      required this.description});
}

List<Product> listProducts = [
  Product(
      country: 'Việt Nam',
      image: 'assets/images/image_1.png',
      name: 'SAMANTHA',
      price: 130,
      imageDetails: 'assets/images/img.png',
      description:
          'The cactus family (scientific name: Cactaceae) are usually dicotyledonous and flowering succulents. The family Cactaceae has between 25 and 220 genera, depending on the source (90 most common), of which there are between 1,500 and 1,800 species. The cactus is known to be native to the Americas, especially in desert regions. There are also some types of epiphytes in tropical forests, those that grow on the branches of trees, because there rain falls quickly to the ground, so it is often dry there. The cactus has spines and stems to store water in reserve. Cactus is almost a plant in the Americas, with the sole exception of Rhipsalis baccifera, which grows mainly in the tropics, mainly in Africa, Madagascar and Sri Lanka, as well as in tropical America. This species is thought to have colonized continents other than the Americas only recently (in the last few thousand years), possibly carried by migratory birds in the form of indigestible seeds. Many other species of succulents have adapted to new habitats in different parts of the world due to the introduction of humans.'),
  Product(
      country: 'Việt Nam',
      image: 'assets/images/image_2.png',
      name: 'ANGELICE',
      price: 150,
      imageDetails: 'assets/images/img.png',
      description:
          'The cactus family (scientific name: Cactaceae) are usually dicotyledonous and flowering succulents. The family Cactaceae has between 25 and 220 genera, depending on the source (90 most common), of which there are between 1,500 and 1,800 species. The cactus is known to be native to the Americas, especially in desert regions. There are also some types of epiphytes in tropical forests, those that grow on the branches of trees, because there rain falls quickly to the ground, so it is often dry there. The cactus has spines and stems to store water in reserve. Cactus is almost a plant in the Americas, with the sole exception of Rhipsalis baccifera, which grows mainly in the tropics, mainly in Africa, Madagascar and Sri Lanka, as well as in tropical America. This species is thought to have colonized continents other than the Americas only recently (in the last few thousand years), possibly carried by migratory birds in the form of indigestible seeds. Many other species of succulents have adapted to new habitats in different parts of the world due to the introduction of humans.'),
  Product(
      country: 'Việt Nam',
      image: 'assets/images/image_3.png',
      name: 'ELISE',
      price: 100,
      imageDetails: 'assets/images/img.png',
      description:
          'The cactus family (scientific name: Cactaceae) are usually dicotyledonous and flowering succulents. The family Cactaceae has between 25 and 220 genera, depending on the source (90 most common), of which there are between 1,500 and 1,800 species. The cactus is known to be native to the Americas, especially in desert regions. There are also some types of epiphytes in tropical forests, those that grow on the branches of trees, because there rain falls quickly to the ground, so it is often dry there. The cactus has spines and stems to store water in reserve. Cactus is almost a plant in the Americas, with the sole exception of Rhipsalis baccifera, which grows mainly in the tropics, mainly in Africa, Madagascar and Sri Lanka, as well as in tropical America. This species is thought to have colonized continents other than the Americas only recently (in the last few thousand years), possibly carried by migratory birds in the form of indigestible seeds. Many other species of succulents have adapted to new habitats in different parts of the world due to the introduction of humans.'),
];
