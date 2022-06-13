import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:a12/main.dart';
import 'package:a12/navbar/profile.dart';

class SetAddres extends StatefulWidget {
  const SetAddres({Key? key}) : super(key: key);

  @override
  State<SetAddres> createState() => _SetAddresState();
}

class _SetAddresState extends State<SetAddres> {
  String _selected = 'Rumah';
  late GoogleMapController mapController;

  // Menentukan koordinat dalam peta
  final LatLng _center = const LatLng(-8.171734768465152, 113.69862726749267);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // baris 1 alamat
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
                    child: Text(
                      "Alamat",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                // baris 2 detail alamat
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "kab.Jember",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Rembangan",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "68191",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Kabupaten",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Kecamatan",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Kode pos",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              // baris 3
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
                    child: Text(
                      "Jl.letjen Sutoyo",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              // baris 4
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
                    child: Text(
                      "Detail Lainnya (Cth:Block / Unit No.patokan)",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              // baris 5 gmaps, menampilkan peta di layar
              Row(
                // kumpulan suatu widget
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _center,
                        zoom: 11.0,
                      ),
                    ),
                  ),
                ],
              ),
              // baris 6
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30.0),
                    child: Text(
                      "Pilih dalam Peta dan tandai sebagi",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: Radio<String>(
                      value: 'Rumah',
                      groupValue: _selected,
                      onChanged: (value) {
                        setState(() {
                          _selected = value!;
                        });
                      },
                    ),
                    title: const Text('Rumah'),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: 'Kantor',
                      groupValue: _selected,
                      onChanged: (value) {
                        setState(() {
                          _selected = value!;
                        });
                      },
                    ),
                    title: const Text('Kantor'),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(225, 208, 91, 1),
                        minimumSize: const Size.fromHeight(
                            50), // fromHeight use double.infinity as width and 40 is the height
                      ),
                      child: Text('Simpan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          )),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProfilePage();
                        }));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
