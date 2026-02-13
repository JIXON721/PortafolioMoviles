main() {
  // =============== Numeros ==================
  int a = 10;
  double b = 3.14;
  int? c;
  late int d;
  d = 20;

  print(a);
  print(b);
  print(c);
  print(d);
  print(a + b);

  //================= Cadenas ================
  String nombre = 'Tony';
  String apellido = "Stark";
  String apellidoRandom = "O'Connor";
  String? cadenaVacia;
  String nombreCompleto = ' $nombre $apellido';
  String multilinea =
      ''' 
Hola Mundo
    Como Estas $nombre $apellido?
    No me quiero ir senor $apellido
  ''';
  print(nombre);
  print(apellido);
  print(apellidoRandom);
  print(cadenaVacia);
  print(nombreCompleto);
  print(multilinea);

  // ================= Booleanos ===============
  bool isActive = true;
  bool isNotActive = !isActive;
  print(isActive);
  print(isNotActive);

  // ================= Arrays ==================
  var general = ['Lex Luthor', 'Red Skull', 'Doom', 1, true, 3.14];
  List<String> villanos = ['Lex Luthor', 'Red Skull', 'Doom'];
  villanos[0] = 'Bizarro';
  print(general);
  print(villanos);
  villanos.add('Siniestro');
  villanos.add('Siniestro');
  villanos.add('Siniestro');
  villanos.add('Siniestro');
  print(villanos);

  // ================== Sets ==================
  var villanosSet = {'Lex Luthor', 'Red Skull', 'Doom', 1, true, 3.14};
  Set<String> villanosSetString = {'Lex Luthor', 'Red Skull', 'Doom'};
  print(villanosSet);
  print(villanosSetString);
  villanosSetString.add('Siniestro');
  villanosSetString.add('Siniestro');
  villanosSetString.add('Siniestro');
  villanosSetString.add('Siniestro');
  print(villanosSetString);

  var villanosSet2 = villanos.toSet();
  print(villanosSet2.toList());

  //=================== Maps ==================

  var ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y el dinero',
    'edad': 40,
  };

  Map<String, dynamic> warMachine = {
    'nombre': 'Rhodey Rhodes',
    'poder': 'Tactico y tecnologia',
    'edad': '40',
  };

  Map<String, dynamic> capitanAmerica = Map();
  capitanAmerica['nombre'] = 'Steve Rogers';
  capitanAmerica.addAll({
    'poder': 'Fuerza, agilidad y resistencia',
    'edad': 102,
  });

  capitanAmerica.addAll(ironman);
  print(ironman);
  print(warMachine);
  print(ironman['nombre']);
  print(warMachine['nombre']);
}
