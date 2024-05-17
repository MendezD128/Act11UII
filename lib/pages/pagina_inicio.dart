import 'package:mendez/widgets/custom_icon_button.dart';
import 'package:mendez/widgets/modelo.dart';
import 'package:mendez/widgets/oferta_card.dart';
import 'package:mendez/widgets/parati_autos.dart';
import 'package:mendez/widgets/recomendacion_autos.dart';
import 'package:flutter/material.dart';
import "package:ionicons/ionicons.dart";

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Buenos días"),
            Text(
              "PORSCHE",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: [
          const CustomIconButton(
            icon: Icon(Ionicons.search_outline),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 12),
            child: const CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
          //Tarjeta de oferta
          const OfertaCard(),
          const SizedBox(
            height: 15,
          ),
          //Genero de Libros
          const SeccionesAutos(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tus Favoritos",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: const Text("Ver más"))
            ],
          ),
          //Recomendacion
          const SizedBox(height: 10),
          const RecomendacionAutos(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coches para ti",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: const Text("Ver más"))
            ],
          ),
          const SizedBox(height: 10),
          const ParaTi(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: "Inicio"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.apps_outline), label: "Categorías"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.cart_outline), label: "Carrito"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.person_outline), label: "Cuenta"),
        ],
      ),
    );
  }
}
