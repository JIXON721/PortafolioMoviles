import 'dart:io';

void mostrarMenu() {
  print('========================================');
  print('  SISTEMA DE GESTION DE TICKETS');
  print('========================================');
  print('1. Agregar ticket');
  print('2. Atender ticket');
  print('3. Registrar acción del tecnico');
  print('4. Deshacer ultima accion');
  print('5. Mostrar estado del sistema');
  print('6. Salir');
  stdout.write('Elige una opcion: ');
}

void agregarTicket(List<int> tickets, int nuevoTicketId) {
  tickets.add(nuevoTicketId);
  print('Ticket $nuevoTicketId agregado a la cola de espera.');
}