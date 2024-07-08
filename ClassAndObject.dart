class Student {
  String? studentID;
  String? fullName;
  String? major;
  double gpa = 0;

  void goToSchool(String by) {}

  void doExam(String subject, int time) {}

  void payFee(String term, int amount) {}
}

void main() {
  var NT = Student();
  NT.studentID = 'DH52201516';
  NT.fullName = 'Nguyễn Minh Thông';
  NT.major = 'CNTT';
  NT.gpa = 3.0;
  NT.goToSchool('Motobike');
  NT.doExam('CTDL', 75);
  NT.payFee('2024', 16500000);
}
