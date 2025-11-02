Función Definida por el Usuario - Cálculo de Rentabilidad de Producto

El departamento de finanzas necesita una forma rápida y reutilizable de calcular la rentabilidad total de cualquier producto del catálogo. Esta función será crucial para tomar decisiones sobre qué productos promocionar y cuáles podrían necesitar un ajuste de precio o costo.



Tarea: Crea una función SQL llamada fn_CalcularRentabilidadProducto que reciba un id_producto como parámetro de entrada.

La función debe calcular el margen de beneficio de cada venta del producto (precio_unitario_congelado - costo del producto en ese momento).
Debe sumar el beneficio total generado por todas las ventas de ese producto a lo largo del tiempo.
La función debe devolver un único valor decimal que represente la rentabilidad total del producto.
