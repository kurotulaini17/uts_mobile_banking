import 'package:flutter/material.dart';

void main() {
  runApp(const MyBrimoApp());
}

class MyBrimoApp extends StatelessWidget {
  const MyBrimoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS Mobile Banking BRI',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BerandaBrimo(),
    );
  }
}

class BerandaBrimo extends StatelessWidget {
  const BerandaBrimo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "BRImo",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF00529C),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Biru Atas
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xFF00529C),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Selamat Siang,",
                    style: TextStyle(color: Colors.white70),
                  ),
                  const Text(
                    "SITI KUROTUL AINI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Saldo Rekening",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Rp 5.750.000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.visibility_off, color: Color(0xFF00529C)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            // Menu Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _menuItem(Icons.compare_arrows, "Transfer"),

                      _menuItem(Icons.qr_code_scanner, "QRIS"),

                      _menuItem(Icons.account_balance_wallet, "Dompet"),

                      _menuItem(Icons.phone_android, "Pulsa"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _menuItem(Icons.receipt, "Briva"),

                      _menuItem(Icons.credit_card, "Kartu"),

                      _menuItem(Icons.more_horiz, "Lainnya"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Banner Promo
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(child: Text("Promo Khusus Mahasiswa")),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF00529C),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "Riwayat"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Akun",
          ),
        ],
      ),
    );
  }

  Widget _menuItem(IconData iconData, String title) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: const Color(0xFF00529C), size: 28),
        ),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(fontSize: 11)),
      ],
    );
  }
}
