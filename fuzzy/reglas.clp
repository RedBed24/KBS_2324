(deftemplate capacidad_max_bat
	0 1
	(
		(roto (0 1) (0.75 1) (0.83 0))
		(degradado (0.8 0) (0.87 1) (0.95 0))
		(bueno (0.9 0) (0.95 1) (1 1))
	)
)

(deftemplate ciclos_rw
	0 3000
	(
		(bueno (0 1) (800 1) (1200 0))
		(degradado (1000 0) (1500 1) (2000 1) (2500 0))
		(roto (2300 0) (2500 1) (3000 1))
	)
)

(deftemplate ordenador
	0 1
	(
		(bueno (0 0) (0.1 1) (0.3 0))
		(usado (0.05 0) (0.2 1) (0.4 1) (0.6 0)) 
		(degradado (0.5 0) (0.7 1) (0.95 0))
		(roto (0.9 0) (0.95 1) (1 1))
	)
)

(defrule r1
	(ciclos_rw bueno)
	(capacidad_max_bat bueno)
=>
	(assert (ordenador bueno))
)

(defrule r2
	(ciclos_rw bueno)
	(capacidad_max_bat degradado)
=>
	(assert (ordenador bueno))
)

(defrule r3
	(ciclos_rw bueno)
	(capacidad_max_bat roto)
=>
	(assert (ordenador usado))
)

(defrule r4
	(ciclos_rw degradado)
	(capacidad_max_bat bueno)
=>
	(assert (ordenador usado))
)

(defrule r5
	(ciclos_rw degradado)
	(capacidad_max_bat degradado)
=>
	(assert (ordenador degradado))
)

(defrule r6
	(ciclos_rw degradado)
	(capacidad_max_bat roto)
=>
	(assert (ordenador degradado))
)

(defrule r7
	(ciclos_rw roto)
	(capacidad_max_bat bueno)
=>
	(assert (ordenador roto))
)

(defrule r8
	(ciclos_rw roto)
	(capacidad_max_bat degradado)
=>
	(assert (ordenador roto))
)

(defrule r8
	(ciclos_rw roto)
	(capacidad_max_bat roto)
=>
	(assert (ordenador roto))
)

(defrule print
	(ordenador ?x)
=>
	(printout t "el ordenador esta " ?x crlf)
)

