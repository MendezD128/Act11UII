import 'package:mendez/models/recomendacion_model.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class RecomendacionAutos extends StatelessWidget {
  const RecomendacionAutos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 220,
              child: Card(
                elevation: 0.4,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            //recomendacionesAutos[index].imagen,
                            recomendacionesAutos[index].imagen,
                            //width: double.maxFinite,
                            //fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              recomendacionesAutos[index].nombreAutos,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade700,
                              size: 14,
                            ),
                            Text(
                              "4.6",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Ionicons.person,
                              color: Theme.of(context).primaryColor,
                              size: 16,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              recomendacionesAutos[index].modelo,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 10),
              ),
          itemCount: recomendacionesAutos.length),
    );
  }
}
