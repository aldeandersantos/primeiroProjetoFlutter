import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  final String task;

  const Tasks(this.task, {super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(color: Colors.blue, height: 140),
        Column(
          children: [
            Container(
                color: Colors.white,
                height: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          color: Colors.black26,
                          width: 72,
                          height: 100,
                          child: Image.network(
                              'https://www.ifp.net.br/assets/images/uploads/imgs/bra_noticias/336x336/whatsapp-image-2021-10-01-at-09.jpeg',
                              fit: BoxFit.fill)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 200,
                              child: Text(widget.task,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    overflow: TextOverflow.ellipsis,
                                  ))),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.lightBlueAccent,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.lightBlueAccent,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 52,
                        width: 62,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Text(
                                  'UP',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            )),
                      )
                    ])),
            Text(
              "Nivel: $nivel",
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        )
      ]),
    );
  }
}