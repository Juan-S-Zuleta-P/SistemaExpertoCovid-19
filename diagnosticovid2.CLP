;;Definimos el template que recibira la informacion de los sintomas
(deftemplate estado-paciente
		(multislot temperatura)
		(slot lugares)
		(slot tos)
		(slot fatiga)
		(slot respiracion)
		(slot diarrea)
		(slot perdidagusto)
		(slot dolormusculos))

;;DEfinimos el template que guardara el mensaje de salida
(deftemplate recomendacion
		(slot mensaje))

;;Definimos las reglas para el profesor1
(defrule diagpositivo-1
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos si)
		(fatiga si)
		(respiracion si)
		(diarrea si)
		(perdidagusto si)
		(dolormusculos si))
		=> (printout t crlf "De seguro tienes COVID-19, ya tienes todos los sintomas, debiste ir a consulta antes" crlf crlf )
		(assert (recomendacion (mensaje "De seguro tienes COVID-19, ya tienes todos los sintomas, debiste ir a consulta antes")))	
)
(defrule diagpositivo-11
	(estado-paciente
		(lugares si)
		(temperatura < 37)
		(tos si)
		(fatiga si)
		(respiracion si)
		(diarrea si)
		(perdidagusto si)
		(dolormusculos si))
		=> (printout t crlf "De seguro tienes COVID-19, ya tienes todos los sintomas, debiste ir a consulta antes" crlf crlf )
		(assert (recomendacion (mensaje "De seguro tienes COVID-19,tienes casi todos los sintomas, debiste ir a consulta antes")))	
)


(defrule diagpositivo-2
	(estado-paciente
		(lugares no)
		(temperatura < 37)
		(tos si)
		(fatiga si)
		(respiracion si)
		(diarrea si)
		(perdidagusto si)
		(dolormusculos si))
		=> (printout t crlf "Cuentas con casi todos los sintomas, por favor ve al medico" crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con casi todos los sintomas, por favor ve al medico")))	
)

(defrule diagpositivo-2-1
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos no)
		(fatiga si)
		(respiracion si)
		(diarrea si)
		(perdidagusto si)
		(dolormusculos si))
		=> (printout t crlf "Cuentas con casi todos los sintomas, por favor ve al medico" crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con casi todos los sintomas, por favor ve al medico")))
)

(defrule diagpositivo-2-2
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos si)
		(fatiga no)
		(respiracion si)
		(diarrea si)
		(perdidagusto si)
		(dolormusculos si))
		=> (printout t crlf "Cuentas con casi todos los sintomas, por favor ve al medico" crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con casi todos los sintomas, por favor ve al medico")))
	)

(defrule diagpositivo-2-3
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos si)
		(fatiga si)
		(respiracion no)
		(diarrea si)
		(perdidagusto si)
		(dolormusculos si))
		=> (printout t crlf "Cuentas con casi todos los sintomas, por favor ve al medico" crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con casi todos los sintomas, por favor ve al medico")))
	)

(defrule diagpositivo-2-4
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos si)
		(fatiga si)
		(respiracion si)
		(diarrea no)
		(perdidagusto si)
		(dolormusculos si))
		=> (printout t crlf "Cuentas con casi todos los sintomas, por favor ve al medico" crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con casi todos los sintomas, por favor ve al medico")))
	)

(defrule diagpositivo-2-5
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos si)
		(fatiga si)
		(respiracion si)
		(diarrea si)
		(perdidagusto no)
		(dolormusculos si))
		=> (printout t crlf "Cuentas con casi todos los sintomas, por favor ve al medico" crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con casi todos los sintomas, por favor ve al medico")))
	)

(defrule diagpositivo-2-6
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos si)
		(fatiga si)
		(respiracion si)
		(diarrea si)
		(perdidagusto si)
		(dolormusculos no))
		=> (printout t crlf "Cuentas con casi todos los sintomas, por favor ve al medico" crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con casi todos los sintomas, por favor ve al medico")))
	)


;;=======DIAGNOSTICOS CON 4 SINTOMAS===========================================

(defrule diagpositivo-3
	(estado-paciente
		(lugares no)
		(temperatura < 37)
		(tos no)
		(fatiga no)
		(respiracion si)
		(diarrea si)
		(perdidagusto si)
		(dolormusculos si))
		=> (printout t crlf "Tienes algunos sintomas, acude al medico antes de que empeores" crlf crlf )
		(assert (recomendacion (mensaje "Tienes algunos sintomas, acude al medico antes de que empeores")))
	)

(defrule diagpositivo-3-1
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos no)
		(fatiga no)
		(respiracion no)
		(diarrea si)
		(perdidagusto si)
		(dolormusculos si))
		=> (printout t crlf "Tienes algunos sintomas, acude al medico antes de que empeores" crlf crlf )
		(assert (recomendacion (mensaje "Tienes algunos sintomas, acude al medico antes de que empeores")))
	)

(defrule diagpositivo-3-2
	(estado-paciente
		(lugares no)
		(temperatura > 37)
		(tos si)
		(fatiga no)
		(respiracion no)
		(diarrea no)
		(perdidagusto si)
		(dolormusculos si))
		=> (printout t crlf "Tienes algunos sintomas, acude al medico antes de que empeores" crlf crlf )
		(assert (recomendacion (mensaje "Tienes algunos sintomas, acude al medico antes de que empeores")))
	)

(defrule diagpositivo-3-3
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos si)
		(fatiga si)
		(respiracion no)
		(diarrea no)
		(perdidagusto no)
		(dolormusculos si))
		=> (printout t crlf "Tienes algunos sintomas, acude al medico antes de que empeores" crlf crlf )
		(assert (recomendacion (mensaje "Tienes algunos sintomas, acude al medico antes de que empeores")))
	)

(defrule diagpositivo-3-4
	(estado-paciente
		(lugares no)
		(temperatura > 37)
		(tos si)
		(fatiga si)
		(respiracion si)
		(diarrea no)
		(perdidagusto no)
		(dolormusculos no))
		=> (printout t crlf "Tienes algunos sintomas, pero son todos los repiratorios, acude a una clinica lo antes posible" crlf crlf )
		(assert (recomendacion (mensaje "Tienes algunos sintomas, acude al medico antes de que empeores")))
	)

(defrule diagpositivo-3-5
	(estado-paciente
		(lugares si)
		(temperatura < 37)
		(tos si)
		(fatiga si)
		(respiracion si)
		(diarrea si)
		(perdidagusto no)
		(dolormusculos no))
		=> (printout t crlf "Tienes algunos sintomas, acude al medico antes de que empeores" crlf crlf )
		(assert (recomendacion (mensaje "Tienes algunos sintomas, acude al medico antes de que empeores")))
	)

(defrule diagpositivo-3-6
	(estado-paciente
		(lugares no)
		(temperatura < 37)
		(tos no)
		(fatiga si)
		(respiracion si)
		(diarrea si)
		(perdidagusto si)
		(dolormusculos no))
		=> (printout t crlf "Tienes algunos sintomas, acude al medico antes de que empeores" crlf crlf )
		(assert (recomendacion (mensaje "Tienes algunos sintomas, acude al medico antes de que empeores")))
	)

;;=======DIAGNOSTICOS CON 2 SINTOMAS===========================================

;;=======DIAGNOSTICOS CON 2 SINTOMAS CON TEMPERATURA COMO CONSTANTE===========================================

(defrule diag2sintomas-temperatura-1
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos si)
		(fatiga no)
		(respiracion no)
		(diarrea no)
		(perdidagusto no)
		(dolormusculos no))
		=> (printout t crlf "Cuentas con pocos sintomas, seria prudente hacerse una prueba " crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con pocos sintomas, seria prudente hacerse una prueba")))
	)

(defrule diag2sintomas-temperatura-2
	(estado-paciente
		(lugares no)
		(temperatura > 37)
		(tos no)
		(fatiga si)
		(respiracion no)
		(diarrea no)
		(perdidagusto no)
		(dolormusculos no))
		=> (printout t crlf "Cuentas con pocos sintomas, seria prudente hacerse una prueba " crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con pocos sintomas, seria prudente hacerse una prueba")))
	)

(defrule diag2sintomas-temperatura-3
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos no)
		(fatiga no)
		(respiracion si)
		(diarrea no)
		(perdidagusto no)
		(dolormusculos no))
		=> (printout t crlf "Cuentas con pocos pero los mas preocupante sintomas, acude a una clinica cuanto antes" crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con pocos sintomas, seria prudente hacerse una prueba")))
	)


(defrule diag2sintomas-temperatura-4
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos no)
		(fatiga no)
		(respiracion no)
		(diarrea si)
		(perdidagusto no)
		(dolormusculos no))
		=> (printout t crlf "Cuentas con pocos sintomas, seria prudente hacerse una prueba " crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con pocos sintomas, seria prudente hacerse una prueba")))
	)


(defrule diag2sintomas-temperatura-5
	(estado-paciente
		(lugares si)
		(temperatura > 37)
		(tos no)
		(fatiga no)
		(respiracion no)
		(diarrea no)
		(perdidagusto si)
		(dolormusculos no))
		=> (printout t crlf "Cuentas con pocos sintomas, seria prudente hacerse una prueba " crlf crlf )
		(assert (recomendacion (mensaje "Cuentas con pocos sintomas, seria prudente hacerse una prueba")))
	)


(defrule diag2sintomas-temperatura-6
	(estado-paciente
		(lugares no)
		(temperatura > 37)
		(tos no)
		(fatiga no)
		(respiracion no)
		(diarrea no)
		(perdidagusto no)
		(dolormusculos si))
		=> (printout t "Cuentas con pocos sintomas, seria prudente hacerse una prueba " crlf)
		(assert (recomendacion (mensaje "Cuentas con pocos sintomas, seria prudente hacerse una prueba")))
	)
