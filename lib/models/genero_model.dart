class SeccionAutos {
  final String nombre;
  final String imagen;

  SeccionAutos(this.nombre, this.imagen);
}

List<SeccionAutos> seccionesAutos = [
  SeccionAutos("Deportivos", "assets/icons/deportivos.jpg"),
  SeccionAutos("Clásicos", "assets/icons/clasicos.png"),
  SeccionAutos("Populares", "assets/icons/populares.png"),
  SeccionAutos("Favoritos", "assets/icons/favoritos.png"),
  SeccionAutos("Subastas", "assets/icons/subastas.png")
];
