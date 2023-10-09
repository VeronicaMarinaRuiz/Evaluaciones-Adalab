-- CONSULTAS 

/* Selecciona las victorias máximas y mínimas para cada equipo diferente en la tabla de seasons(es en la tabla Stats). */
SELECT `team_id`, MAX(`W`) AS 'victorias_max', MIN(`W`) AS 'victorias_min' 
  	FROM `Stats`
	GROUP BY `team_id`;
/* Lo puse primero sin el GROUP BY y me daba Error Code: 1140 y que agrege la query GROUP BY que indicaba el error */

/* Obtén los primeros 10 resultados de la tabla de teams. */
SELECT *
	FROM `Teams`
    LIMIT 10;

/* Selecciona todos los datos de los equipos que tengan entre 20 y 30 victorias de la tabla stats. Elijo la columna W(de win) */
SELECT *
	FROM `Stats`
    WHERE `W` BETWEEN 20 AND 30;

/* Realiza un cuenteo de número total de equipos que existende la tabla teams */
/* Son 30 equipos en total. */
SELECT COUNT(`team`)
	FROM `Teams`;

/* Calcula la media de todos los puntos conseguidos de la tabla stats */
/* La media es de 109.38000010172526 */
SELECT AVG (`PTS`)
	FROM `Stats`;

/* Selecciona el máximo de victorias, máximo de puntos y la diferencia entre el máximo de puntos con la media de puntos como diferencia_media 
de la tabla stats. */
/* El máximo de victorias es de 67, el máximo de puntos es de 120.01 y la diferencia_media es de 10.719998372395835 */
SELECT MAX(`W`), MAX(`PTS`), MAX(`PTS`) - AVG(`PTS`) AS 'diferencia_media'
	FROM `Stats`;
    
    




















