Examen Parcial
Nombre: Adriana Cerna
Numero de Cuenta: 62041249

Esta base de datos cuenta con 14 tablas las cuales son:
- Caja:
  La tabla caja tiene 6 campos los cuales son:
    + ID_Turno: Este campo se llena automaticamente y es la llave primaria.
    + Apertura: En este campo se coloca la hora en la se abre la caja.
    + Cierre: En este campo se coloca la hora en la se cierra la caja.
    + Fecha: La fecha.
    + Cobrantes: El nombre del cobrante.
    + Total_Ventas: El total de dinero que hay en la caja al momento de cerrarla.
- Cliente:
  La tabla cliente tiene 6 campos los cuales son:
    + ID_Cliente: Este campo se llena automaticamente y es la llave primaria.
    + ID_TipoCliente: Se coloca el indice de que que tipo de cliente es(credito, contado).
    + Nombre: Nombre del cliente.
    + Deuda: Si el cliente tiene deudas se coloca el valor aqui.
    + Correo: El correo del cliente.
    + Telefono: El numero del cliente.
- Compra:
  La tabla compra tiene 7 campos los cuales son:
    + ID_Compra: Este campo se llena automaticamente y es la llave primaria.
    + ID_Proveedor: Aqui se coloca el ID del proveedor que vendio el producto.
    + ID_Producto: El ID del producto que se compro.
    + Cantidad: La cantidad de productos que se compraron.
    + ID_Pago: El ID del tipo de pago(Credito, contado).
    + Total: El total de la compra.
    + Fecha_Pago: La fecha de la compra.
- Factura:
  La tabla factura tiene 6 campos los cuales son:
    + ID_Factura: Este campo se llena automaticamente y es la llave primaria.
    + ID_Cliente: El ID del criente que esta realizando la compra.
    + ID_Producto: El ID del producto que estan comprando.
    + Fecha: Fecha de la compra.
    + Hora: Hora de la compra.
    + Total: El total de la compra.
- GastoCasa:
  La tabla GastosCasa tiene 4 campos los cuales son:
    + ID_Gasto: Este campo se llena automaticamente y es la llave primaria.
    + ID_Tipo: El ID del tipo de gasto.
    + Total: Total de los gastos de la casa.
    + Fecha: la fecha en la que se realizo el gasto.
- Inventario:
  La tabla Inventario tiene 5 campos los cuales son:
    + ID_Inventario: Este campo se llena automaticamente y es la llave primaria.
    + ID_Producto: El ID del producto.
    + Cantidad_Ingreso: La cantidad de porductos comprados.
    + Cantidad_Actual: La cantidad de productos que se tienen actualmente.
    + Cantidad_Exhibicion: La cantidad que se tienen como exhibición en la tieneda
- PagoCliente:
  La tabla PagoCliente tiene 6 campos los cuales son:
    + ID_Pago: Este campo se llena automaticamente y es la llave primaria.
    + ID_Cliente: El ID del cliente que esta realizando el pago.
    + Nombre: Nombre del cliente que realizao el pago.
    + Deuda: Deuda que tiene el cliente.
    + Pago_Realizado:El total que esta pagando el cliente.
    + Fecha_Pago: La fecha que esta realizando el cliente.
- Producto:
  La tabla Producto tiene 5 campos los cuales son:
    + ID_Producto: Este campo se llena automaticamente y es la llave primaria.
    + Nombre: nombre del producto.
    + ID_Provedor: ID del proveedor que provee el producto.
    + Precio_Unidad: El precio del producto.
    + Estado: Aqui se coloca si el producto esta siendo vendido o no.
- Proveedor:
  La tabla Proveedor tiene 5 campos los cuales son:
    + ID_Provedor: Este campo se llena automaticamente y es la llave primaria.
    + Nombre: Nombre del proveedor.
    + Correo: Correo del proveedor.
    + Numero: Numero telefonico del proveedor.
    + ID_Tipo: Tipo de proveedor(Credito, Al contado).
- TipoCliente:
  La tabla TipoCliente tiene 2 campos los cuales son:
    + ID_TipoCliente: Este campo se llena automaticamente y es la llave primaria.
    + Tipo: Tipo de cliente(Con linea de credito, Sin linea de credito).
- TipoPago:
  La tabla TipoPago tiene 2 campos los cuales son:
    + ID_Pago: Este campo se llena automaticamente y es la llave primaria.
    + Tipo: Tipo de pago(Credito, contado).
- TipoProveedor:
  La tabla TipoProveedor tiene 2 campos los cuales son:
    + ID_Tipo: Este campo se llena automaticamente y es la llave primaria.
    + Tipo: Tipo de proveedor(Credito, Al contado)
- TipoGasto:
  La tabla TipoGasto tiene 2 campos los cuales son:
    + ID_Tipo: Este campo se llena automaticamente y es la llave primaria.
    + Gastos: Tipo de gasto.
- Ventas:
  La tabla Ventas tiene 6 campos los cuales son:
    + ID_Cliente: Este campo se llena automaticamente y es la llave primaria.
    + ID_Producto: ID del producto vendido.
    + Cantidad: Cantidad de productos vendidos.
    + ID_Pago: ID del tipo de pago(contado, credito).
    + Total: Total del Pago.
    + Fecha_Pago: Fecha del pago.
