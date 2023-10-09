/* Para esta evaluación usaremos la BBDD de northwind con la que ya estamos familiarizadas de los ejercicios de pair programming. En esta 
evaluación tendréis que contestar a las siguientes preguntas: */
USE Northwind;

/* 1.Selecciona todos los campos de los productos, que pertenezcan a los proveedores con códigos: 1, 3, 7, 8 y 9, que tengan stock en el 
almacén, y al mismo tiempo que sus precios unitarios estén entre 50 y 100. Por último, ordena los resultados por código de proveedor de forma 
ascendente. */
/* Selecciono todos los registros de la tabla products, indicando en el WHERE los nº de los proveedores solicitados, que las unidades en stock
sean distintas a cero y que el precio de la unidad esté entre lo indicado (con BETWEEN). Y lo ordeno de forma ascendente. */
SELECT * 
FROM products
WHERE supplier_id IN (1, 3, 7, 8, 9) AND units_in_stock > 0 AND unit_price BETWEEN 50 AND 100
ORDER BY supplier_id ASC;

/* 2.Devuelve el nombre y apellidos y el id de los empleados con códigos entre el 3 y el 6, además que hayan vendido a clientes que tengan 
códigos que comiencen con las letras de la A hasta la G. Por último, en esta búsqueda queremos filtrar solo por aquellos envíos que la fecha de 
pedido este comprendida entre el 22 y el 31 de Diciembre de cualquier año. */
/*Selecciono los registros que necesitamos de la tabla employees y orders para meter las condiciones de los empleados con códigos 
entre 3 y 6; con el regex para los códigos que comiencen por la A hasta la G; y filtro por los dias y el mes(el periodo que se solicita). 
Utilizo en este caso un NATURAL JOIN para unir las tablas por las columnas que tienen en común: el employee_id */
SELECT first_name, last_name, employee_id, order_date, customer_id
	FROM employees
	NATURAL JOIN orders 
	WHERE employee_id BETWEEN 3 AND 6
			AND customer_id REGEXP '^[A-G].*'
            AND (DAY(order_date) BETWEEN 22 AND 31) AND MONTH(order_date) = 12;

/* 3.Calcula el precio de venta de cada pedido una vez aplicado el descuento. Muestra el id del la orden, el id del producto, el nombre del 
producto, el precio unitario, la cantidad, el descuento y el precio de venta después de haber aplicado el descuento. */
/* Selecciono los registros que necesitamos de las tablas order_details, orders y products. Utilizo dos INNER JOINs para indicar la columna por 
la que quiero que se unan. Realizo en el select las operaciones matemáticas para sacar ese resultado que nos piden y lo agrupo por order_id y
product_id */
SELECT o.order_id, p.product_id, p.product_name, p.unit_price, ord.quantity, ord.discount, ROUND(SUM(ord.unit_price * ord.quantity * (1 - ord.discount)), 2) AS PrecioDeVenta
	FROM order_details AS ord
    INNER JOIN orders AS o ON ord.order_id = o.order_id
	INNER JOIN products AS p ON ord.product_id = p.product_id
    GROUP BY o.order_id, p.product_id;

/* 4.Usando una subconsulta, muestra los productos cuyos precios estén por encima del precio medio total de los productos de la BBDD. */
/* Lo primero, en una subquery, he calculado la media de precio de los productos. Después la he añadido a la query principal unida por el WHERE 
he indicando > para que nos de el resultado de los que son mayores a esa media. */
SELECT product_name, product_id, unit_price
	FROM products
	WHERE unit_price > (SELECT AVG(unit_price)
							FROM products); 

/* 5.¿Qué productos ha vendido cada empleado y cuál es la cantidad vendida de cada uno de ellos? */
/* Selecciono los registros que necesitamos de las tablas employee, order_details y ordenar. Para saber lo que se nos indica, sumamos las 
cantidades, utilizo tres INNER JOINs para indicar la columna por la que quiero que se unan y lo agrupo por empleado y producto */
SELECT e.employee_id, e.first_name, e.last_name, p.product_name, SUM(od.quantity) AS CantidaVendida
	FROM employees AS e
	INNER JOIN orders ON e.employee_id = orders.employee_id
	INNER JOIN order_details AS od ON od.order_id = orders.order_id
	INNER JOIN products AS p ON p.product_id = od.product_id
	GROUP BY employee_id, product_name;

/* 6.Basándonos en la query anterior, ¿qué empleado es el que vende más productos? Soluciona este ejercicio con una subquery. */
/* Pongo la query anterior como subquery y en la principal selecciono el nombre y apellido del empleado y con COUNT cuento por product_name que
es único en la tabla: Margaret Peacock es la empleada que más productos vende (75) */
SELECT first_name, last_name, COUNT(product_name) AS productos_vendidos
	FROM (SELECT DISTINCT e.employee_id, e.first_name, e.last_name, p.product_name
			FROM employees AS e
			INNER JOIN orders ON e.employee_id = orders.employee_id
			INNER JOIN order_details AS od ON od.order_id = orders.order_id
			INNER JOIN products AS p ON p.product_id = od.product_id) AS empleados_productos
	GROUP BY employee_id
	ORDER BY productos_vendidos DESC
	LIMIT 1;

/* BONUS ¿Podríais solucionar este mismo ejercicio con una CTE? */
/* Me da el mismo resultado que el ejercicio anterior */
WITH empleados_productos AS(SELECT DISTINCT e.employee_id, e.first_name, e.last_name, p.product_name
							FROM employees AS e
							INNER JOIN orders ON e.employee_id = orders.employee_id
							INNER JOIN order_details AS od ON od.order_id = orders.order_id
							INNER JOIN products AS p ON p.product_id = od.product_id)
SELECT first_name, last_name, COUNT(product_name) AS productos_vendidos
	FROM empleados_productos
    GROUP BY employee_id
	ORDER BY productos_vendidos DESC
    LIMIT 1;