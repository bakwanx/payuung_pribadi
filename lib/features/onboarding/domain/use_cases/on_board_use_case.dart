import '../../../../utils/const/assets_path.dart';
import '../entities/on_board_entity.dart';

class OnBoardingUseCase {
  List<OnBoardEntity> call() {
    final List<OnBoardEntity> data = [
      OnBoardEntity(
        image: ilIntro1,
        title: "Produk Wellness Terpilih",
        description: "Produk yang tersedia telah dikurasi sebagai produk untuk menunjang worklife balance kamu sebagai pekerja",
      ),
      OnBoardEntity(
        image: ilIntro2,
        title: "Bagikan dan Rayakan",
        description:
        "Kamu bisa membagikan voucher dan produk sebagai hadiah ke teman-teman secara langsung. Rayakan momen spesial bersama jadi makin seru!",
      ),
      OnBoardEntity(
        image: ilIntro3,
        title: "Inspirasi Hidup Seimbang",
        description:
        "Kamu bisa tetap mewujudkan sehat raga, sehat jiwa, dan sehat finansial di tengah-tengah kesibukanmu dengan pilihan ragam manfaat produk yang ditawarkan.",
      )
    ];

    return data;
  }
}