------ Insertar registros:

-- Ciudad -> ciudad(ciudad_id, nombre_ciudad, codigo_postal)
INSERT INTO ciudad VALUES (1, 'Bogota', '110111');
INSERT INTO ciudad VALUES (2, 'Medellín', '050021');
INSERT INTO ciudad VALUES (3, 'Cali', '760001');
INSERT INTO ciudad VALUES (4, 'Barranquilla', '080020');
INSERT INTO ciudad VALUES (5, 'Cartagena', '130001');
INSERT INTO ciudad VALUES (6, 'Bucaramanga', '680001');
INSERT INTO ciudad VALUES (7, 'Pereira', '660003');
INSERT INTO ciudad VALUES (8, 'Manizales', '170001');
INSERT INTO ciudad VALUES (9, 'Cúcuta', '540005');
INSERT INTO ciudad VALUES (10, 'Santa Marta', '470001');

-- Condicion -> condicion(condicion_id, nombre_condicion)
INSERT INTO condicion VALUES (1, 'Embarazo');
INSERT INTO condicion VALUES (2, 'Requiere silla de ruedas');
INSERT INTO condicion VALUES (3, 'Adulto mayor');
INSERT INTO condicion VALUES (4, 'Discapacidad visual');
INSERT INTO condicion VALUES (5, 'Discapacidad auditiva');
INSERT INTO condicion VALUES (6, 'Enfermedad temporal');
INSERT INTO condicion VALUES (7, 'Persona con movilidad reducida');
INSERT INTO condicion VALUES (8, 'Paciente en tratamiento médico');
INSERT INTO condicion VALUES (9, 'Mujer en posparto');
INSERT INTO condicion VALUES (10, 'Ninguna');

-- Servicio -> servicio(servicio_id, nombre, descripcion, estado)
INSERT INTO servicio VALUES (1, 'Atención al cliente', 'Gestión de reclamos y consultas', 'activo');
INSERT INTO servicio VALUES (2, 'Recepción de artículos', 'Recepción y control de envíos', 'activo');
INSERT INTO servicio VALUES (3, 'Despacho de productos', 'Salida y entrega de pedidos', 'activo');
INSERT INTO servicio VALUES (4, 'Consultoría técnica', 'Asesoramiento en soluciones técnicas', 'activo');
INSERT INTO servicio VALUES (5, 'Mantenimiento de equipos', 'Revisión y reparación de dispositivos', 'activo');
INSERT INTO servicio VALUES (6, 'Instalación de software', 'Implementación y configuración de programas', 'activo');
INSERT INTO servicio VALUES (7, 'Capacitación empresarial', 'Entrenamiento interno a empleados', 'activo');
INSERT INTO servicio VALUES (8, 'Gestión de reclamos', 'Resolución de quejas y solicitudes', 'activo');
INSERT INTO servicio VALUES (9, 'Soporte remoto', 'Asistencia técnica a distancia', 'activo');
INSERT INTO servicio VALUES (10, 'Entrega a domicilio', 'Despacho directo al cliente', 'activo');

-- Tipo de Usuario -> tipoUsuario(tipoUsuario_id, nombre_tipo)
INSERT INTO tipoUsuario VALUES (1, 'Empleado');
INSERT INTO tipoUsuario VALUES (2, 'Cliente');
INSERT INTO tipoUsuario VALUES (3, 'Proveedor');
INSERT INTO tipoUsuario VALUES (4, 'Administrador');
INSERT INTO tipoUsuario VALUES (5, 'Supervisor');
INSERT INTO tipoUsuario VALUES (6, 'Técnico de soporte');
INSERT INTO tipoUsuario VALUES (7, 'Recepcionista');
INSERT INTO tipoUsuario VALUES (8, 'Consultor externo');
INSERT INTO tipoUsuario VALUES (9, 'Gerente');
INSERT INTO tipoUsuario VALUES (10, 'Visitante');

-- Medio de Notificacion -> medioNotificacion(medio_id, nombre_medio)
INSERT INTO medioNotificacion VALUES (1, 'Correo');
INSERT INTO medioNotificacion VALUES (2, 'Telefono');
INSERT INTO medioNotificacion VALUES (3, 'SMS');
INSERT INTO medioNotificacion VALUES (4, 'WhatsApp');
INSERT INTO medioNotificacion VALUES (5, 'Telegram');
INSERT INTO medioNotificacion VALUES (6, 'Llamada telefónica');
INSERT INTO medioNotificacion VALUES (7, 'Notificación push');
INSERT INTO medioNotificacion VALUES (8, 'Mensaje interno del sistema');
INSERT INTO medioNotificacion VALUES (9, 'Facebook Messenger');
INSERT INTO medioNotificacion VALUES (10, 'Instagram Direct');

-- Usuario -> usuario(usuario_id, ciudad_id, condicion_id, tipoUsuario_id, nombre, apellido)
INSERT INTO usuario VALUES (1, 10, 10, 1, 'Carlos', 'Pérez');
INSERT INTO usuario VALUES (2, 1, 1, 2, 'Laura', 'Gómez');
INSERT INTO usuario VALUES (3, 2, 2, 6, 'Andrés', 'López');
INSERT INTO usuario VALUES (4, 3, 4, 3, 'Marta', 'Rodríguez');
INSERT INTO usuario VALUES (5, 4, 5, 5, 'Jorge', 'Ramírez');
INSERT INTO usuario VALUES (6, 5, 6, 4, 'Sofía', 'Martínez');
INSERT INTO usuario VALUES (7, 6, 7, 7, 'Felipe', 'Torres');
INSERT INTO usuario VALUES (8, 7, 8, 8, 'Diana', 'Castro');
INSERT INTO usuario VALUES (9, 8, 3, 9, 'Camilo', 'Gutiérrez');
INSERT INTO usuario VALUES (10, 9, 10, 10, 'Natalia', 'Suárez');
INSERT INTO usuario VALUES (11, 2, 10, 2, 'Juan', 'Morales');
INSERT INTO usuario VALUES (12, 3, 8, 2, 'Mariana', 'Rincón');
INSERT INTO usuario VALUES (13, 4, 10, 2, 'Esteban', 'Vega');
INSERT INTO usuario VALUES (14, 5, 10, 8, 'Daniela', 'Ortiz');
INSERT INTO usuario VALUES (15, 6, 3, 9, 'Ricardo', 'Salazar');

-- Usuario y medio de notificacion -> usuarioMedio(usuarioMedio_id, usuario_id, medio_id, contacto)
INSERT INTO usuarioMedio VALUES (1, 1, 1, 'carlos.perez@limar.com');
INSERT INTO usuarioMedio VALUES (2, 2, 4, '+573101112223');
INSERT INTO usuarioMedio VALUES (3, 3, 2, '3145678890');
INSERT INTO usuarioMedio VALUES (4, 4, 1, 'marta.rodriguez@proveedor.com');
INSERT INTO usuarioMedio VALUES (5, 5, 3, '+573105554433');
INSERT INTO usuarioMedio VALUES (6, 6, 1, 'sofia.martinez@limar.com');
INSERT INTO usuarioMedio VALUES (7, 7, 5, '@felipe_torres_tech');
INSERT INTO usuarioMedio VALUES (8, 8, 4, '+573008889900');
INSERT INTO usuarioMedio VALUES (9, 9, 9, 'fb.com/camilo.gutierrez');
INSERT INTO usuarioMedio VALUES (10, 10, 10, '@natalia_suarez');
INSERT INTO usuarioMedio VALUES (11, 11, 1, 'juan.morales@gmail.com');
INSERT INTO usuarioMedio VALUES (12, 12, 4, '+573009998877');
INSERT INTO usuarioMedio VALUES (13, 13, 2, '3125566778');
INSERT INTO usuarioMedio VALUES (14, 14, 5, '@daniela_ortiz_consultora');
INSERT INTO usuarioMedio VALUES (15, 15, 1, 'ricardo.salazar@empresa.com');

-- Empleado -> empleado (empleado_id, usuario_id, cargo, departamento)
INSERT INTO empleado VALUES (1, 1, 'Asesor de servicio', 'Atención al cliente');
INSERT INTO empleado VALUES (2, 3, 'Técnico de soporte', 'Soporte remoto');
INSERT INTO empleado VALUES (3, 5, 'Supervisor de área', 'Despacho de productos');
INSERT INTO empleado VALUES (4, 6, 'Coordinadora', 'Capacitación empresarial');
INSERT INTO empleado VALUES (5, 7, 'Gestor de reclamos', 'Gestión de reclamos');
INSERT INTO empleado VALUES (6, 8, 'Consultora externa', 'Consultoría técnica');
INSERT INTO empleado VALUES (7, 9, 'Gerente de servicio', 'Atención al cliente');
INSERT INTO empleado VALUES (8, 14, 'Consultora externa', 'Mantenimiento de equipos');
INSERT INTO empleado VALUES (9, 15, 'Director regional', 'Gerencia general');
INSERT INTO empleado VALUES (10, 4, 'Proveedora técnica', 'Suministros');

-- Turno -> turno(tuno_id, usuario_id, empleado_id, fecha, hora_inicio, hora_fin, estado)
INSERT INTO turno VALUES (1, 2, 1, 1, '2025-10-17', '09:00', '09:20', 'Finalizado');
INSERT INTO turno VALUES (2, 11, 2, 2, '2025-10-18', '10:00', '10:20', 'Finalizado');
INSERT INTO turno VALUES (3, 12, 4, 6, '2025-10-19', '08:00', '09:00', 'Finalizado');
INSERT INTO turno VALUES (4, 13, 3, 3, '2025-10-20', '09:30', '10:0', 'En atencion');
INSERT INTO turno VALUES (5, 10, 1, 5, '2025-10-20', '11:00', '12:50', 'En atencion');
INSERT INTO turno VALUES (6, 2, 8, 4, '2025-10-20', '14:00', '14:20', 'Programado');
INSERT INTO turno VALUES (7, 11, 5, 8, '2025-10-21', '10:30', '11:30', 'Programado');
INSERT INTO turno VALUES (8, 12, 9, 2, '2025-10-21', '13:00', '14:20', 'Programado');
INSERT INTO turno VALUES (9, 13, 10, 9, '2025-10-29', '09:00', '10:30', 'Programado');
INSERT INTO turno VALUES (10, 10, 7, 7, '2025-10-29', '15:00', '15:20', 'Cancelado');

-- Notificaciones -> notificacion(notificacion_id, usuario_id, medio_id, mensaje, fecha_envio, estado)
INSERT INTO notificacion VALUES (1, 2, 4, 'Su turno #1 ha sido atendido con éxito.', '09:35', 'enviado');
INSERT INTO notificacion VALUES (2, 11, 1, 'Su turno #2 ha sido completado.', '10:35', 'enviado');
INSERT INTO notificacion VALUES (3, 12, 4, 'Su turno #3 ha sido programado para el 19 de octubre a las 8:30 AM.', '08:00', 'enviado');
INSERT INTO notificacion VALUES (4, 13, 2, 'Su turno #4 está en atención actualmente.', '09:35', 'enviado');
INSERT INTO notificacion VALUES (5, 10, 10, 'Su turno #5 está programado para el 20 de octubre a las 11:00 AM.', '10:30', 'enviado');
INSERT INTO notificacion VALUES (6, 2, 4, 'Su reclamo fue gestionado exitosamente.', '14:40', 'enviado');
INSERT INTO notificacion VALUES (7, 11, 1, 'Su turno #7 fue confirmado para el 21 de octubre a las 10:30 AM.', '10:00', 'enviado');
INSERT INTO notificacion VALUES (8, 12, 4, 'Su soporte remoto (#8) ha sido agendado.', '12:45', 'enviado');
INSERT INTO notificacion VALUES (9, 13, 2, 'Su entrega (#9) está programada para el 22 de octubre a las 9:00 AM.', '08:30', 'enviado');
INSERT INTO notificacion VALUES (10, 10, 10, 'Su turno #10 ha sido cancelado.', '14:45', 'enviado');
