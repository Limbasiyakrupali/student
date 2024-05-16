class Student {
  String grid;
  String name;
  String standard;
  String photo;

  Student({
    required this.grid,
    required this.name,
    required this.standard,
    required this.photo,
  });

  factory Student.frommap({required Map<String, dynamic> data}) {
    return Student(
      grid: data["grid"],
      name: data["name"],
      standard: data["standard"],
      photo: data["photo"],
    );
  }
}
