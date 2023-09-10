class PeopleModel {
  bool controller = false;
  double peso = 0;
  setPeso(String peso) {
    this.peso = double.parse(peso);
  }

  double altura = 0;
  setAltura(String altura) {
    this.altura = double.parse(altura);
  }

  double imc() {
    controller = true;
    return peso / (altura * altura);
  }

  String mostrarImc() {
    if (imc() < 16) {
      return 'Magreza Grave';
    } else if (imc() >= 16 && imc() < 17) {
      return 'Magreza Moderada';
    } else if (imc() >= 17 && imc() < 18.5) {
      return 'Magreza Leve';
    } else if (imc() >= 18.5 && imc() < 25) {
      return 'saudavel';
    } else if (imc() >= 25 && imc() < 30) {
      return 'Sobrepeso';
    } else if (imc() >= 30 && imc() < 35) {
      return 'Obesidade Grau I';
    } else if (imc() >= 35 && imc() < 40) {
      return 'Obesidade Grau II (Severa)';
    } else if (imc() >= 40) {
      return 'Obesidade Grau III (Móbida)';
    } else {
      return '';
    }
  }
}
