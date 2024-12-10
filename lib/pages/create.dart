import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tambah Film",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: const Color.fromARGB(255, 17, 17, 17),
      ),
      backgroundColor: const Color.fromARGB(255, 14, 14, 14),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  labelText: "Nama Film",
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 204, 204, 204))),
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: "Nama Studio",
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 204, 204, 204))),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                  labelText: "Jumlah Episode",
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 204, 204, 204))),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                  labelText: "Rating",
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 204, 204, 204))),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"^\d*\.?\d*"))
              ],
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: const Text("Konfirmasi Data"),
                              content: const Text("Data sudah benar?"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text("Benar")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text("Salah"))
                              ],
                            ));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      padding: const EdgeInsets.all(16)),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        color: Color.fromARGB(255, 14, 14, 14),
                        fontWeight: FontWeight.w600),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
