class Recipe {
  String label;
  String imageUrl;

  //add servings and ingridients
  int servings;
  List<Ingredient> ingridients;


  Recipe(this.label, this.imageUrl, this.ingridients, this.servings);

//initialize recipes here
  //check if can come from restapi endpoint
  static List<Recipe> samples = [
    Recipe('Spaghetti and Meatballs', 'assets/2126711929_ef763de2b3_w.jpg',[
      Ingredient(1,'box','Spaggheti'),
      Ingredient(4,'','Spaggheti',),
      Ingredient(0.5,'jar','Spaggheti',),
    ],4),
    Recipe('Tomato Soup', 'assets/3187380632_5056654a19_b.jpg',[Ingredient(1, 'can', 'tomato soup')],2),
    Recipe(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpg',[
        Ingredient(2, 'slices', 'Cheese')
    ],1
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/15992102771_b92f4cc00a_b.jpg',[
        Ingredient(3, 'spoons', 'chocolate')
    ],2
    ),
    Recipe('Taco Salad', 'assets/8533381643_a31a99e8a6_c.jpg',[
      Ingredient(2, 'can', 'Salad'),
      Ingredient(4, 'can', 'Taco'),

    ],4),
    Recipe('Hawaiian Pizza', 'assets/15452035777_294cefced5_c.jpg',[
      Ingredient(5, 'box', 'pizza')
    ],4)
  ];
}

//adding an ingridient class here
class Ingredient{
  double quantity;
  String measure;
  String name;

  Ingredient( this.quantity,this.measure,this.name);



}
