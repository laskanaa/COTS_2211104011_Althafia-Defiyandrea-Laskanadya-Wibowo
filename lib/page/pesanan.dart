import 'package:flutter/material.dart';

class PesananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Pesanan',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Tab Bar
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: TabBar(
                    indicatorColor: const Color(0xFF00AA13),
                    labelColor: const Color(0xFF00AA13),
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(text: 'Riwayat'),
                      Tab(text: 'Dalam proses'),
                      Tab(text: 'Terjadwal'),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[100],
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  child: Row(
                    children: [
                      FilterChipWidget(label: 'GoFood'),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                        ),
                        child: Row(
                          children: const [
                            Text(
                              'Status',
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(Icons.expand_more,
                                color: Colors.black, size: 18),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // List of Orders
          Expanded(
            child: ListView.builder(
              itemCount: 3, // Update sesuai jumlah data
              itemBuilder: (context, index) {
                return OrderCard();
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}

class FilterChipWidget extends StatelessWidget {
  final String label;
  const FilterChipWidget({required this.label});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: true,
      onSelected: (_) {},
      selectedColor: const Color(0xFF00AA13).withOpacity(0.1),
      backgroundColor: Colors.white,
      labelStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Icon Container
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.restaurant, color: Colors.red, size: 24),
          ),
          const SizedBox(width: 16),
          // Order Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ayam Benjoss, kedungkandang',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  '3 item\nMakanan sudah diantar\n28 Des 11.36',
                  style: TextStyle(
                      color: Colors.grey[600], fontSize: 14, height: 1.4),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          // Price & Button
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Rp 58.800',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00AA13),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                child: const Text('Pesan lagi', style: TextStyle(fontSize: 14)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PesananPage(),
    ));
