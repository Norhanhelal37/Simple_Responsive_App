import 'package:app/screans/home.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color.fromARGB(255, 233, 197, 97),
          child: Column(
            children: [
              Image(
                image:const AssetImage(
                  "assets/images/start.png",
                ),
                width: MediaQuery.sizeOf(context).width * .8,
                height: MediaQuery.sizeOf(context).height * .7,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .8,
                height: MediaQuery.sizeOf(context).height * .07,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const HomePage()));
                  },

                  style: const ButtonStyle(
                     overlayColor: WidgetStatePropertyAll(Colors.amber)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tell Us About Your Day",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
