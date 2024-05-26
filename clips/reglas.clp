(defrule r1
	(or
		(modelo thinkpad)
		(modelo notebook)
	)
=>
	(assert (antiguo))
)

(defrule r2
	(bateria encendida)
=>
	(assert (voltaje suficiente))
)

(defrule r3
	(corriente conectada)
=>
	(assert (voltaje suficiente))
)

(defrule r4
	(inicio nulo)
	(voltaje suficiente)
=>
	(assert (fallo desconocido))
)

(defrule r6
	(bateria apagada)
	(corriente desconectada)
=>
	(assert (fallo corriente))
)

(defrule r7
	(antiguo)
	(inicio nulo)
=>
	(assert (fallo bateria))
)

(defrule r8
	(antiguo)
	(inicio nulo)
=>
	(assert (fallo almacenamiento))
)

(defrule r9
	(corriente conectada)
	(bateria apagada)
=>
	(assert (fallo bateria))
)

(defrule r10
	(inicio bios)
	(secureboot desactivado)
=>
	(assert (fallo carga_os))
)

(defrule r11
	(inicio bios)
	(secureboot activado)
=>
	(assert (fallo secureboot))
)

(defrule r12
	(disco encriptado)
=>
	(assert (fallo bitlocker))
)

(defrule r13
	(disco vacio)
=>
	(assert (fallo aprovisionado))
)

(defrule r14
	(inicio sesion)
	(login otro)
=>
	(assert (fallo registrado_otra))
)

(defrule r15
	(inicio sesion)
	(login local)
=>
	(assert (fallo no_registrado))
)

(defrule r16
	(credenciales desconocidos)
=>
	(assert (fallo CAU))
)

(defrule conclusion
	(fallo ?x)
=>
	(printout t "el fallo es " ?x crlf)
)
