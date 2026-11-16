import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evaluasi Widget Dasar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC8A2C8),
        foregroundColor: Colors.black87,
        title: const Text('Evaluasi: Profil dan Biodata'),
      ),
      backgroundColor: const Color(0xFFF7F4FA),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xFFC8A2C8), Color(0xFF8F6A99)],
                ),
                borderRadius: BorderRadius.circular(28),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color(0x263D2645),
                    blurRadius: 18,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset(
                        'images/fotoadelia.png',
                        key: const Key('profile-picture'),
                        width: 172,
                        height: 280,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Adelia Fitriyani',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Profil dan Biodata',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.9),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
            const Text(
              'Informasi Pribadi',
              style: TextStyle(
                color: Color(0xFF493A50),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  _biodataTile(
                    Icons.location_on_outlined,
                    'Tempat/Tanggal Lahir',
                    'Bengkalis, 07 Mei 1990',
                  ),
                  const Divider(height: 1, indent: 72, endIndent: 16),
                  _biodataTile(
                    Icons.email_outlined,
                    'Email',
                    'adelia@polbeng.ac.id',
                  ),
                  const Divider(height: 1, indent: 72, endIndent: 16),
                  _biodataTile(
                    Icons.phone_outlined,
                    'Nomor HP',
                    '085272070033',
                  ),
                  const Divider(height: 1, indent: 72, endIndent: 16),
                  _biodataTile(Icons.favorite_border, 'Hobi', 'Traveling'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _biodataTile(IconData icon, String label, String value) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: CircleAvatar(
        backgroundColor: const Color(0xFFF0E7F2),
        foregroundColor: const Color(0xFF76547F),
        child: Icon(icon),
      ),
      title: Text(
        label,
        style: const TextStyle(fontSize: 13, color: Color(0xFF77717A)),
      ),
      subtitle: Text(
        value,
        style: const TextStyle(
          color: Color(0xFF302A33),
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
