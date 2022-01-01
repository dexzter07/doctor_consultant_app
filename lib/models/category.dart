class Category{
  final String icon, title;

  const Category({required this.icon, required this.title});
}

const List<Category> categoryList = [
  Category(icon: "assets/icons/Pediatrician.svg", title: "Pediatrician"),
  Category(icon: "assets/icons/Neurosurgeon.svg", title: "Neurosurgeon"),
  Category(icon: "assets/icons/Cardiologist.svg", title: "Cardiologist"),
  Category(icon: "assets/icons/Psychiatrist.svg", title: "Psychiatrist"),

];