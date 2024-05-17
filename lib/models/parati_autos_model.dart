class ParaTi {
  final String imagen;
  final String nombre;
  final String modelo;
  final String valoracion;
  final String precio;

  ParaTi(this.imagen, this.nombre, this.modelo, this.valoracion, this.precio);
}

List<ParaTi> parati = [
  ParaTi("assets/autos/azul.png", "Demian", "Herman Hesse", "4.8", "360"),
  ParaTi("assets/autos/gris.png", "Aquiles", "Herman Hesse", "4.8", "360"),
  ParaTi("assets/autos/img1.png", "Cien años de soledad", "Herman Hesse", "4.8",
      "360"),
  ParaTi("assets/autos/gt3.png", "El jardin de las...", "Herman Hesse", "4.8",
      "360"),
  ParaTi("assets/autos/porsche-model.png", "Almendra", "Herman Hesse", "4.8",
      "360"),
];
