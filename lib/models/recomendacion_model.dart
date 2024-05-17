class RecomendacionAutos {
  final String imagen;
  final double valoracion;
  final String modelo;
  final String nombreAutos;

  RecomendacionAutos(
      this.imagen, this.valoracion, this.modelo, this.nombreAutos);
}

List<RecomendacionAutos> recomendacionesAutos = [
  RecomendacionAutos(
      "assets/autos/img1.png", 4.8, "Danna Mendez", "Porsche 911"),
  RecomendacionAutos("assets/autos/gt3.png", 4.6, "Diego Correa", "GT3 RS"),
  RecomendacionAutos("assets/autos/gris.png", 4.6, "Uriel Rivas", "Porschw"),
  RecomendacionAutos(
      "assets/autos/porsche-model.png", 4.8, "Nava bebe", "Porschw"),
  RecomendacionAutos("assets/autos/azul.png", 4.7, "Omar Guerrero", "Porschw"),
];
