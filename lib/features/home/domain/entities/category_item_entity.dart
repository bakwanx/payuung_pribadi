class CategoryItemEntity{
  String name;
  String icon;
  Function()? onTap;

  CategoryItemEntity({
    required this.name,
    required this.icon,
    this.onTap,
  });
}