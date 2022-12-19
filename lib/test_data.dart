final List<DataModel> dummyData = <DataModel>[
  const DataModel(
      id: 1,
      name: "Food",
      image: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg"
  ),

  const DataModel(
      id: 2,
      name: "Sandwich",
      image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/processed-food700-350-e6d0f0f.jpg"
  ),

  const DataModel(
      id: 3,
      name: "Chickens",
      image: "https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000"
  ),

  const DataModel(
      id: 4,
      name: "Vegetables",
      image: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg"
  ),

  const DataModel(
      id: 5,
      name: "Vegetables",
      image: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg"
  ),

  const DataModel(
      id: 6,
      name: "Vegetables",
      image: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg"
  ),

  const DataModel(
      id: 7,
      name: "Vegetables",
      image: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg"
  ),

];


class DataModel {
  final int id ;
  final String name , image;

  const DataModel({required this.id,required this.name,required this.image});
}