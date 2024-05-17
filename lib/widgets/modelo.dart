import 'package:flutter/material.dart';
import 'package:mendez/models/genero_model.dart';

class SeccionesAutos extends StatelessWidget {
  const SeccionesAutos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Chip(
            label: Text(seccionesAutos[index].nombre),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(seccionesAutos[index].imagen),
            ),
            backgroundColor: Colors.white,
            elevation: 0.4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          );
        },
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.only(right: 10)),
        itemCount: seccionesAutos.length,
      ),
    );
  }
}
