
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String nama;
  final String nim;
  final String hobi;
  final int skorAktivitas;

  const ProfileCard({
    super.key,
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skorAktivitas,
  });

  @override
  Widget build(BuildContext context) {
    final int digitKeduaDariBelakang =
    int.parse(nim[nim.length - 2]);
    final int digitTerakhir =
    int.parse(nim[nim.length - 1]);

    final double lebarKartu =
        320.0 + (digitKeduaDariBelakang * 5);

    final double radiusKartu =
        12.0 + (digitTerakhir * 1.5);

    final double ukuranLogo =
        60.0 + (digitTerakhir * 2);

    final double jarakLogo =
        15.0 + digitTerakhir;

    return Container(
      width: lebarKartu,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radiusKartu),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: FlutterLogo(
                  size: ukuranLogo,
                ),
              ),
              SizedBox(width: jarakLogo),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kartu Praktikan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      nama,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
            height: 30,
          ),
          _detail('NIM', nim),
          _detail('Hobi', hobi),
          _detail(
            'Skor Aktivitas',
            skorAktivitas.toString(),
          ),
        ],
      ),
    );
  }

  Widget _detail(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 115,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Text(': '),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
