import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Find services, food, or places',
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            fillColor: Colors.grey[200],
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.green),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // GoPay Section
            Container(
              color: Colors.blue[900],
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GoPay',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Rp7.434',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.add, color: Colors.white),
                            onPressed: () {},
                          ),
                          Text('Top Up', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(width: 16),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.qr_code, color: Colors.white),
                            onPressed: () {},
                          ),
                          Text('Pay', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(width: 16),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.explore, color: Colors.white),
                            onPressed: () {},
                          ),
                          Text('Explore', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            // Menu Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  _buildMenuItem(Icons.motorcycle, 'GoRide', Colors.green),
                  _buildMenuItem(Icons.local_taxi, 'GoCar', Colors.blue),
                  _buildMenuItem(Icons.fastfood, 'GoFood', Colors.red),
                  _buildMenuItem(Icons.delivery_dining, 'GoSend', Colors.purple),
                  _buildMenuItem(Icons.store, 'GoMart', Colors.orange),
                  _buildMenuItem(Icons.phone_android, 'GoPulsa', Colors.blue),
                  _buildMenuItem(Icons.card_giftcard, 'GoClub', Colors.pink),
                  _buildMenuItem(Icons.more_horiz, 'More', Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 16),
            // XP Section
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Image.asset('assets/xp_icon.png', height: 24),
                  SizedBox(width: 8),
                  Text(
                    '121 XP to your next treasure',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward, color: Colors.green),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Ads Section
            Column(
              children: [
                _buildAdCard(
                  'BARU!',
                  'Ada GoPay di Tokopedia',
                  'Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia',
                  Colors.blue[900]!,
                ),
                SizedBox(height: 8),
                _buildAdCard(
                  '',
                  'Sambungin akun ke Tokopedia',
                  'Sambungin akun ke Tokopedia, Banyakin Untung',
                  Colors.green[700]!,
                ),
                SizedBox(height: 8),
                _buildAdCard(
                  '',
                  'Bayar Apa Aja Lebih Hemat',
                  'Promo Belanja Online Cashback Rp100.000',
                  Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Promos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label, Color color) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color),
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildAdCard(String title, String subtitle, String description, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title.isNotEmpty)
            Text(
              title,
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
          SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
