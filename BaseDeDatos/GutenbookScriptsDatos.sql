INSERT INTO `gutenbook`.`usuario` (`IDusuario`, `usuario`, `nombre`, `correo_electronico`, `telefono`, `contrasenia`, `administrador`) VALUES (null, 'ximenita231', 'Ximena Fernanda Cortes Perales', 'Perales58@gmail.com', 5566558931, 'pordas89@', true);
INSERT INTO `gutenbook`.`usuario` (`IDusuario`, `usuario`, `nombre`, `correo_electronico`, `telefono`, `contrasenia`, `administrador`) VALUES (null, 'eminajas', 'Emmanuel Minajas', 'eminajas@gmail.com', 5584621400, 'FerrarI21@', false);
INSERT INTO `gutenbook`.`usuario` (`IDusuario`, `usuario`, `nombre`, `correo_electronico`, `telefono`, `contrasenia`, `administrador`) VALUES (null, 'virivañia', 'Vivian Mendez', 'vivilk@gmail.com', 5584621401, 'Jung-hoseok13@', false);
INSERT INTO `gutenbook`.`usuario` (`IDusuario`, `usuario`, `nombre`, `correo_electronico`, `telefono`, `contrasenia`, `administrador`) VALUES (null, 'jalbert', 'Jose Alberto Torres ', 'joseTor@hotmail.com', 5523638541, '@Mario23.', false);
INSERT INTO `gutenbook`.`usuario` (`IDusuario`, `usuario`, `nombre`, `correo_electronico`, `telefono`, `contrasenia`, `administrador`) VALUES (null, 'oliver5', 'Oliver Bustamante Peralta', 'oliver456@gmail.com', 5523876222, 'HOLA1234@', false);


INSERT INTO `gutenbook`.`libro` (`libroID`, `titulo`, `autor`, `url`, `genero`, `anio_publicacion`, `precio`, `pais`, `editorial`) 
VALUES (NULL, 'Solo necesito un gato', 'Alberto Montt', 'https://m.media-amazon.com/images/P/B08233QBGX.01._SCLZZZZZZZ_SX500_.jpg', 'Novelas Gráficas', 2022, 319.32, 'México', 'Editorial Planeta Mexicana, S.A. de C.V.');
INSERT INTO `gutenbook`.`libro` (`libroID`, `titulo`, `autor`, `url`, `genero`, `anio_publicacion`, `precio`, `pais`, `editorial`) 
VALUES (NULL, 'Ajolotes para principiantes: Cuidado adecuado del ajolote', ' Alina Daria', 'https://m.media-amazon.com/images/P/B09XBPKTMJ.01._SCLZZZZZZZ_SX500_.jpg', 'Cuidado de Animales y Mascotas', 2022, 332.46, 'México', ' Independently published');
INSERT INTO `gutenbook`.`libro` (`libroID`, `titulo`, `autor`, `url`, `genero`, `anio_publicacion`, `precio`, `pais`, `editorial`) 
VALUES (NULL, 'Coraline', ' Neil Gaiman ', 'https://m.media-amazon.com/images/P/B08CYCPBZN.01._SCLZZZZZZZ_SX500_.jpg', 'Ciencia Ficción, Fantasía y Horror', 2009, 265.59, 'España', ' Salamandra Publicacions Y Edicions');
INSERT INTO `gutenbook`.`libro` (`libroID`, `titulo`, `autor`, `url`, `genero`, `anio_publicacion`, `precio`, `pais`, `editorial`) 
VALUES (NULL, 'Harry Potterand the Chamber of Secrets ', 'J. K. Rowling', 'https://m.media-amazon.com/images/I/51-gJbWc3qL.jpg', 'Ciencia Ficción, Fantasía y Horror', 1998, 495.10, 'Gran bretaña', ' Scholastic Inc.s');
INSERT INTO `gutenbook`.`libro` (`libroID`, `titulo`, `autor`, `url`, `genero`, `anio_publicacion`, `precio`, `pais`, `editorial`) 
VALUES (NULL, 'El Secreto (Roswell High)', 'Melinda Metz', 'https://m.media-amazon.com/images/P/B07K8YD8R4.01._SCLZZZZZZZ_SX500_.jpg', 'Ciencia Ficción, Fantasía y Horror', 2019, 57.52, 'España', ' Alfaguara');

INSERT INTO `gutenbook`.`direccion` (`NumeroOrden`, `calle`, `colonia`, `delegacion/municipio`, `estado`, `codigoPostal`, `usuario_IDusuario`) VALUES (NULL, 'Av. Tamaulipas, Av.Santa fe 128', 'Contadero', 'Cuajimalpa de Morelos','Ciudad de México', 05348, 4);
INSERT INTO `gutenbook`.`direccion` (`NumeroOrden`, `calle`, `colonia`, `delegacion/municipio`, `estado`, `codigoPostal`, `usuario_IDusuario`) VALUES (NULL, 'Av Fernando Amilpa 80', 'Atzacoalco CTM', 'Gustavo A. Madero','Ciudad de México', 07090, 1);
INSERT INTO `gutenbook`.`direccion` (`NumeroOrden`, `calle`, `colonia`, `delegacion/municipio`, `estado`, `codigoPostal`, `usuario_IDusuario`) VALUES (NULL, 'Industria Elektrica Mz 1-Lt 15', 'Lomas del recuerdo', 'Naucalpan de Juárez','Estado de México', 53529, 2);
INSERT INTO `gutenbook`.`direccion` (`NumeroOrden`, `calle`, `colonia`, `delegacion/municipio`, `estado`, `codigoPostal`, `usuario_IDusuario`) VALUES (NULL, 'Blvd. Adolfo López Mateos 1181', 'San Pedro de los Pinos', 'Álvaro Obregón','Ciudad de México', 01180, 3);
INSERT INTO `gutenbook`.`direccion` (`NumeroOrden`, `calle`, `colonia`, `delegacion/municipio`, `estado`, `codigoPostal`, `usuario_IDusuario`) VALUES (NULL, 'Av. Tamaulipas, Av.Santa fe 128', 'Contadero', 'Cuajimalpa de Morelos','Ciudad de México', 05348, 4);


INSERT INTO `gutenbook`.`pedido` (`idpedido`, `cantidad`, `total`, `usuario_IDusuario`) VALUES (NULL, 2, 2032.3, 1);
INSERT INTO `gutenbook`.`pedido` (`idpedido`, `cantidad`, `total`, `usuario_IDusuario`) VALUES (NULL, 12, 99322.3, 2);
INSERT INTO `gutenbook`.`pedido` (`idpedido`, `cantidad`, `total`, `usuario_IDusuario`) VALUES (NULL, 3, 452.3, 1);
INSERT INTO `gutenbook`.`pedido` (`idpedido`, `cantidad`, `total`, `usuario_IDusuario`) VALUES (NULL, 1, 99.45, 3);
INSERT INTO `gutenbook`.`pedido` (`idpedido`, `cantidad`, `total`, `usuario_IDusuario`) VALUES (NULL, 9, 1023.89, 5);

INSERT INTO `gutenbook`.`pedido_has_libro` (`pedido_idpedido`, `libro_libroID`) VALUES (1, 1);
INSERT INTO `gutenbook`.`pedido_has_libro` (`pedido_idpedido`, `libro_libroID`) VALUES (2, 1);
INSERT INTO `gutenbook`.`pedido_has_libro` (`pedido_idpedido`, `libro_libroID`) VALUES (3, 2);
INSERT INTO `gutenbook`.`pedido_has_libro` (`pedido_idpedido`, `libro_libroID`) VALUES (4, 3);
INSERT INTO `gutenbook`.`pedido_has_libro` (`pedido_idpedido`, `libro_libroID`) VALUES (5, 4);

INSERT INTO `gutenbook`.`inventario` (`unidades`, `descripcion`, `libro_libroID`) VALUES (1, 'Llegaron en buenas condiciones',1);
INSERT INTO `gutenbook`.`inventario` (`unidades`, `descripcion`, `libro_libroID`) VALUES (10, 'Llegaron en buenas condiciones', 2);
INSERT INTO `gutenbook`.`inventario` (`unidades`, `descripcion`, `libro_libroID`) VALUES (200, 'Llegaron en buenas condiciones, solo uno llego dañanado', 3);
INSERT INTO `gutenbook`.`inventario` (`unidades`, `descripcion`, `libro_libroID`) VALUES (100, 'faltaron por enviar 50', 4);
INSERT INTO `gutenbook`.`inventario` (`unidades`, `descripcion`, `libro_libroID`) VALUES (5, 'Llegaron en buenas condiciones', 5);
