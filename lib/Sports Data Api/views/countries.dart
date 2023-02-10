import 'package:flutter/material.dart';

class SportsCountries extends StatefulWidget {
  const SportsCountries({super.key});

  @override
  State<SportsCountries> createState() => _SportsCountriesState();
}

class _SportsCountriesState extends State<SportsCountries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Countries")),
      body: Column(children: const [Text("ssfdsfs")]),
    );
  }
}
