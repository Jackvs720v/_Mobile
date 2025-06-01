import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  // Valores dos sensores
  double tempAr = 0.0;
  double umidAr = 0.0;
  double tempSolo = 0.0;
  double umidSolo = 0.0;

  void atualizarDados() {
    setState(() {
      tempAr = 23.5;
      umidAr = 52.1;
      tempSolo = 20.2;
      umidSolo = 38.7;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 5,
        centerTitle: true,
        title: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Monitor de Sensores',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            ),
            Spacer(),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            _DashboardButton(
              icon: Icons.thermostat_rounded,
              label: 'Temperatura do Ar',
              valor: '${tempAr.toStringAsFixed(1)} °C',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            _DashboardButton(
              icon: Icons.water_drop_outlined,
              label: 'Umidade do Ar',
              valor: '${umidAr.toStringAsFixed(1)} %',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            _DashboardButton(
              icon: Icons.thermostat,
              label: 'Temperatura do Solo',
              valor: '${tempSolo.toStringAsFixed(1)} °C',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            _DashboardButton(
              icon: Icons.water_drop,
              label: 'Umidade do Solo',
              valor: '${umidSolo.toStringAsFixed(1)} %',
              onTap: () {},
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: atualizarDados,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text("Atualizar Dados"),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final String valor;
  final VoidCallback onTap;

  const _DashboardButton({
    required this.icon,
    required this.label,
    required this.valor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, color: Colors.green, size: 24),
                  const SizedBox(width: 12),
                  Text(
                    label,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Text(
                valor,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
