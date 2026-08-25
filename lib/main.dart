import 'package:flutter/material.dart';

void main() {
  runApp(const NutriFitApp());
}

class NutriFitApp extends StatelessWidget {
  const NutriFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> servicos = const [
    "Consulta Nutricional",
    "Plano Alimentar Personalizado",
    "Acompanhamento Semanal",
    "Bioimpedância",
    "Receitas Fit",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: ListView.builder(
        itemCount: servicos.length + 1,
        itemBuilder: (context, index) {

          if (index == 0) {
            return Column(
              children: [

                Stack(
                  children: [

                    Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.green,
                    ),

                    Positioned(
                      top: 50,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [

                          Container(
                            width: 90,
                            height: 90,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.eco,
                              color: Colors.green,
                              size: 55,
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            "NutriFit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const Text(
                            "Alimentação saudável para uma vida melhor",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                   Image.asset(
          "assets/images/pratofit.jpeg",
          height: 220,
          width: double.infinity,
          fit: BoxFit.cover,
          ),

                Container(
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    "Nutrição inteligente, resultados reais.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nossos Serviços",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.green),
            ),

            child: Row(
              children: [

                const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),

                const SizedBox(width: 12),

                Text(
                  servicos[index - 1],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}