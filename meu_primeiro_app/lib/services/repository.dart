class Repository {
  String? name, user, avatar, description;

  Repository({
    this.name,
    this.user,
    this.avatar,
    this.description,
  });

  Repository.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    user = json['sprites']['front_default'];
  }
}