SELECT per.pers_nombres, per.pers_apellidos, per.pers_documento_identidad, est.estu_nivel_estudio, 
est.estu_cargo_ocupa, est.estu_direccion_trabajo,
est.estu_ingresos_mensuales, per.pers_fecha_nacimiento, mat.matr_medio_informacion,
per.pers_domicilio, per.pers_provincia, per.pers_ciudad, per.pers_sector, per.pers_nacionalidad, 
per.pers_facebook, mat.matr_fecha_matricula, mat.matr_estado, cur.curs_nombre 
FROM cap.persona per, cap.estudiante est, cap.matricula mat, cap.ofertacursos ofercur, 
cap.ofertacapacitacion ofercap, cap.curso cur 
WHERE per.pers_id = est.pers_id AND est.estu_id = mat.estu_id AND mat.ocur_id = ofercur.ocur_id AND 
ofercur.ofca_id=ofercap.ofca_id AND cur.curs_id=ofercap.curs_id AND cur.curs_id=24 
AND (mat.matr_estado = 'INSMAT01' OR mat.matr_estado = 'INSMAT02' OR
	 mat.matr_estado = 'INSMAT03' OR mat.matr_estado = 'INSMAT05') 
ORDER BY mat.matr_fecha_matricula;