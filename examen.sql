DELIMITER $$
CREATE FUNCTION fn_CalcularRentabilidadProducto(id_producto)
RETURN DECIMAL(10,2),
DETERMINISTIC
BEGIN
    DECLARE total_rentabilidad DECIMAL (10,2)
    -- Resta el precio_unitario_congelado al precio del producto en el momento y el resultado se aplica en el valor de rentabilidad (total_rentabilidad)
    SELECT
        SUM(dv.precio_unitario_congelado - p.costo_actual)
    INTO total_rentabilidad
    -- se toma la información de los detalles de las ventas
    FROM Detalle_Ventas dv
    -- Se calcula el precio de rentabilidad usando los dos datos mencionados
    INNER JOIN productos p ON p.id_producto = dv.id_producto
    WHERE dv.id_producto = p.id_producto;
    --Devuelve el valor 0 si no hay valor de rentabilidad.
    RETURN IFNULL(total_rentabilidad, 0);
END$$

DELIMITER ;

    

