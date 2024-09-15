import 'package:payuung_pribadi/features/home/domain/entities/category_item_entity.dart';
import 'package:payuung_pribadi/utils/const/assets_path.dart';

import '../entities/financial_item_entity.dart';

class HomeUseCase {
  List<FinancialItemEntity> getListFinancialEntity(){
    return [
      FinancialItemEntity(
        name: "Urun",
        icon: iFinanceCommunity,
      ),
      FinancialItemEntity(
        name: "Pembiayaan Haji",
        icon: iFinanceHajj,
      ),
      FinancialItemEntity(
        name: "Financial Check Up",
        icon: iFinanceCheckUp,
      ),
      FinancialItemEntity(
        name: "Asuransi Mobile",
        icon: iFinanceCi,
      ),
      FinancialItemEntity(
        name: "Asuransi Property",
        icon: iFinancePi,
      ),
    ];
  }

  List<CategoryItemEntity> getListCategoryEntity(){
    return [
      CategoryItemEntity(
        name: "Kuliner",
        icon: iCategoryCulinary,
      ),
      CategoryItemEntity(
        name: "Pulsa dan Listrik",
        icon: iCategoryElectric,
      ),
      CategoryItemEntity(
        name: "Merchandise",
        icon: iCategoryFashion,
      ),
      CategoryItemEntity(
        name: "Gaya Hidup Sehat",
        icon: iCategoryHealthyLife,
      ),
      CategoryItemEntity(
        name: "Kebutuhan Harian",
        icon: iCategoryHouseHold,
      ),
      CategoryItemEntity(
        name: "Konsultasi Medis",
        icon: iCategoryMedical,
      ),
      CategoryItemEntity(
        name: "Self Development",
        icon: iCategoryPersonalFinance,
      ),
      CategoryItemEntity(
        name: "Lihat Semua",
        icon: iMore,
        onTap: (){
          // go to all category
        }
      ),
    ];
  }
}