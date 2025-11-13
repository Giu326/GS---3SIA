import 'package:flutter/material.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({super.key});

  @override
  State<TipsScreen> createState() => _DicasScreenState();
}

class _DicasScreenState extends State<TipsScreen> {
  final List<Map<String, dynamic>> dicas = [
    {"texto": "Fazer uma caminhada curta", "feito": false},
    {"texto": "Beber 2 litros de água", "feito": false},
    {"texto": "Meditar por 10 minutos", "feito": false},
    {"texto": "Anotar algo positivo do dia", "feito": false},
    {"texto": "Ouvir uma música relaxante", "feito": false},
    {"texto": "Conversar com um amigo", "feito": false},
    {"texto": "Alongar o corpo por 5 minutos", "feito": false},
    {"texto": "Ficar 10 minutos longe do celular", "feito": false},
    {"texto": "Tomar sol por alguns minutos", "feito": false},
    {"texto": "Ler um trecho de um livro", "feito": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 120, 89, 139),
        centerTitle: true,
        title: const Text(
          'Dicas do Dia',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Selecione o que você já fez hoje!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 120, 89, 139),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: dicas.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CheckboxListTile(
                      title: Text(
                        dicas[index]["texto"],
                        style: TextStyle(
                          fontSize: 16,
                          color: dicas[index]["feito"]
                              ? Colors.grey
                              : const Color.fromARGB(255, 120, 89, 139),
                          decoration: dicas[index]["feito"]
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                      value: dicas[index]["feito"],
                      onChanged: (bool? valor) {
                        setState(() {
                          dicas[index]["feito"] = valor!;
                        });
                      },
                      activeColor: const Color.fromARGB(255, 120, 89, 139),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  for (var dica in dicas) {
                    dica["feito"] = false;
                  }
                });
              },
              icon: const Icon(Icons.refresh),
              label: const Text("Limpar tudo"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 242, 225, 245),
                foregroundColor: const Color.fromARGB(255, 120, 89, 139),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
