int factorialNumero(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorialNumero(n - 1);
  }
}

void main() {
  int numero = 5;
  int resultado = factorialNumero(numero);
  print('El factorial de $numero es: $resultado');
}