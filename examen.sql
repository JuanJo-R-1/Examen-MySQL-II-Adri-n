CREATE FUNCTION fn_CalcularRentabilidadProducto(id_producto)
    -- La función debe devolver un único valor decimal que represente la rentabilidad
    -- total del producto.
    RETURN DECIMAL(3,2),
    -- La función debe calcular el margen de beneficio de cada venta del producto
    -- (precio_unitario_congelado - costo del producto en ese momento).
    BEGIN
        CHECK (precio_unitario_congelado > 0),
        CHECK Productos.costo >= 0
        



    -- Debe sumar el beneficio total generado por todas las ventas de ese producto
    -- a lo largo del tiempo.

    

