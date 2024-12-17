class Lesson{
  final String nameOfLesson;
  final  double valueOfAlhapet;
  final double valueOfCredits;

  Lesson(this.nameOfLesson, this.valueOfAlhapet, this.valueOfCredits);
  @override
  String toString() {
    return '$nameOfLesson,$valueOfAlhapet,$valueOfCredits';
  }
}