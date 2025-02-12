import 'package:flutter/material.dart';
import 'package:flutter_app/wigdets/bottom_menu.dart';



class TicketDetailsScreen extends StatefulWidget {
  const TicketDetailsScreen({super.key});

  @override
  State<TicketDetailsScreen> createState() => _TicketDetailsScreenState();
}

class _TicketDetailsScreenState extends State<TicketDetailsScreen> {
  final Map<String, String> biletDetaylari = {
    "tip": "Uçak Bileti",
    "kalkıs": "İstanbul Havalimanı",
    "inis": "Ankara Havalimanı",
    "tarih": "15 Mart 2025",
    "zaman": "10:30",
    "koltukNo": "12A",
    "kapıNo": "B5",
    "biletNo": "TK1923"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Bilet Detayları",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Theme.of(context).colorScheme.onSecondary,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${biletDetaylari["tip"]}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                    const SizedBox(height: 10),
                    Text("Kalkış: ${biletDetaylari["kalkıs"]}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("Varış: ${biletDetaylari["inis"]}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("Tarih: ${biletDetaylari["tarih"]}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("Saat: ${biletDetaylari["zaman"]}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("Koltuk: ${biletDetaylari["koltukNo"]}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("Kapı: ${biletDetaylari["kapıNo"]}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                    Text("Bilet No: ${biletDetaylari["biletNo"]}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
