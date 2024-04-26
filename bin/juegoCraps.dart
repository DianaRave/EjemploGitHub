import 'dart:math';

enum Estados { GANADO, PERDIDO, CONTINUAR }

class JuegoCraps {
  int _punto = 0;
  Estados _estado = Estados.CONTINUAR;

  void lanzarDados() {
    var dado1 = Random().nextInt(6) + 1;
    var dado2 = Random().nextInt(6) + 1;
    var suma = dado1 + dado2;

    print('Lanzamiento: $dado1 + $dado2 = $suma');

    if (_estado == Estados.CONTINUAR) {
      switch (suma) {
        case 7:
        case 11:
          _estado = Estados.GANADO;
          break;
        case 2:
        case 3:
        case 12:
          _estado = Estados.PERDIDO;
          break;
        default:
          _punto = suma;
          _estado = Estados.CONTINUAR;
          print('El punto es $_punto');
      }
    } else {
      if (suma == _punto) {
        _estado = Estados.GANADO;
      } else if (suma == 7) {
        _estado = Estados.PERDIDO;
      }
    }
  }

  Estados obtenerEstado() {
    return _estado;
  }
}

void main() {
  var juego = JuegoCraps();

  juego.lanzarDados();

  while (juego.obtenerEstado() == Estados.CONTINUAR) {
    juego.lanzarDados();
  }

  if (juego.obtenerEstado() == Estados.GANADO) {
    print('Ganaste.');
  } else {
    print('Perdiste.');
  }
}