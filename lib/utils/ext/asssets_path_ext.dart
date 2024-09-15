extension ImagePath on String? {
  String svg() {
    return 'assets/images/$this.svg';
  }

  String png() {
    return 'assets/images/$this.png';
  }

  String jpg() {
    return 'assets/images/$this.jpg';
  }
}
