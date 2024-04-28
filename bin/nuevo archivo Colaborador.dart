bool calcularPrimo(int numero) {
  if (numero <= 1) {
    return false;
  }

  for (int i = 2; i <= numero / 2; i++) {
    if (numero % i == 0) {
      return false;
    }
  }

  return true;
}

void mostrarPrimos(int n) {
  int contador = 0;
  int numero = 2;
  
  while (contador < n) {
    if (calcularPrimo(numero)) {
      print(numero);
      contador++;
    }
    numero++;
  }

}

void main() {
  int n = 10;
  print("Los primeros $n números primos son:");
  mostrarPrimos(n);
}