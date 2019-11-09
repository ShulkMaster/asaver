class Pokemon{

  int weight;
  int order;
  int id;
  int height;
  final String name;
  final String url;
  bool isDefault;
  bool loaded = false;
  Map<String, dynamic> sprites;

  Pokemon({this.name, this.url});

  void setInfo(Map<String, dynamic> info){
    weight = info['weight'];
    height = info['height'];
    id = info['id'];
    order = info['order'];
    isDefault = info['is_default'];
    sprites = info['sprites'];
    ///se marca la vandera loaded para evitar volver a cargar
    ///este pokemon desdeinternet por dos razones, tenemos
    ///conexiones limitadas por minuto y para no gastar los datos
    ///del usuario
    loaded = true;
  }

}