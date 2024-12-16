import 'package:flutter/material.dart';

class FullscreenLoader extends StatelessWidget {
  const FullscreenLoader({super.key});

  

  Stream<String> getLoadingMessage() {
    final message = [
      'Cargando peliculas...',
      'Comprando palomiras ...',
      'Cargando populares...',
      'Esto esta tardando mas que los trailes :(',
    ];

    return Stream.periodic(const Duration(milliseconds: 1200), (index) {
      return message[index];
    }).take(message.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Espere por favor...'),
          const SizedBox(height: 20),
          const CircularProgressIndicator(
            strokeWidth: 2,
          ),
          const SizedBox(height: 20),
          StreamBuilder(stream: getLoadingMessage(), builder: (context, snapshot) {
            if (!snapshot.hasData) return const SizedBox();
            return Text(snapshot.data!);
          }),
        ],
      ),
    );
  }
}
