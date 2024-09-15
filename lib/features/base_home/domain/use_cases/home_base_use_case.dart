import 'package:flutter/material.dart';
import 'package:payuung_pribadi/features/base_home/domain/entities/bottom_nav_menu_entity.dart';
import 'package:payuung_pribadi/features/base_home/presentation/widgets/bottom_nav_menu_item.dart';
import 'package:payuung_pribadi/features/home/presentation/home_screen.dart';

class HomeBaseUseCase {
  List<Widget> getPage(){
    return [
      HomeScreen(),
      Scaffold(
        body: Center(
          child: Text("Halaman Pencarian"),
        ),
      ),
      Scaffold(
        body: Center(
          child: Text("Halaman Keranjang"),
        ),
      ),
      Scaffold(
        body: Center(
          child: Text("Alamat"),
        ),
      ),
      Scaffold(
        body: Center(
          child: Text("Daftar Teman"),
        ),
      )
    ];
  }

  List<BottomNavMenuEntity> bottomMenu(){
    return [
      BottomNavMenuEntity(
        name: "Beranda",
        icon: Icons.home,
      ),
      BottomNavMenuEntity(
          name: "Cari",
          icon: Icons.search,
      ),
      BottomNavMenuEntity(
          name: "Keranjang",
          icon: Icons.add_shopping_cart_sharp,
      ),
      BottomNavMenuEntity(
        name: "Alamat",
        icon: Icons.location_pin,
      ),
      BottomNavMenuEntity(
        name: "Daftar Teman",
        icon: Icons.supervised_user_circle_outlined,
      ),
    ];
  }
}