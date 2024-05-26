#!/usr/bin/env python3

import matplotlib.pyplot as plt

capacidad_max_bat = {
    "roto": [(0, 1), (0.75, 1), (0.83, 0)],
    "degradado": [(0.8, 0), (0.87, 1), (0.95, 0)],
    "bueno": [(0.9, 0), (0.95, 1), (1, 1)],
}
x, y = zip(*capacidad_max_bat["roto"])
plt.plot(x, y, ls="--", label="Roto")

x, y = zip(*capacidad_max_bat["degradado"])
plt.plot(x, y, ls="-.", label="Degradado")

x, y = zip(*capacidad_max_bat["bueno"])
plt.plot(x, y, ls="--", label="Bueno")

plt.title("Capacidad máxima de la batería")
plt.xlabel("Capacidad")
plt.ylabel("Pertenencia")
plt.legend()
plt.savefig("plots/bateria.svg")
plt.clf()

ciclos_rw = {
    "bueno": [(0, 1), (800, 1), (1200, 0)],
    "degradado": [(1000, 0), (1500, 1), (2000, 1), (2500, 0)],
    "roto": [(2300, 0), (2500, 1), (3000, 1)],
}
x, y = zip(*ciclos_rw["roto"])
plt.plot(x, y, ls="--", label="Roto")

x, y = zip(*ciclos_rw["degradado"])
plt.plot(x, y, ls="-.", label="Degradado")

x, y = zip(*ciclos_rw["bueno"])
plt.plot(x, y, ls="--", label="Bueno")

plt.title("Cantidad de ciclos de escritura/lectura")
plt.xlabel("Ciclos")
plt.ylabel("Pertenencia")
plt.legend()
plt.savefig("plots/ciclos.svg")
plt.clf()

ordenador = {
		"bueno": [(0, 0), (0.1, 1), (0.3, 0)],
		"usado": [(0.05, 0), (0.2, 1), (0.4, 1), (0.6, 0)],
		"degradado": [(0.5, 0), (0.7, 1), (0.95, 0)],
		"roto": [(0.9, 0), (0.95, 1), (1, 1)]
}

x, y = zip(*ordenador["roto"])
plt.plot(x, y, ls="--", label="Roto")

x, y = zip(*ordenador["degradado"])
plt.plot(x, y, ls="-.", label="Degradado")

x, y = zip(*ordenador["bueno"])
plt.plot(x, y, ls="--", label="Bueno")

x, y = zip(*ordenador["usado"])
plt.plot(x, y, ls="-", label="Usado")

plt.title("Uso del ordenador")
plt.xlabel("Uso")
plt.ylabel("Pertenencia")
plt.legend()
plt.savefig("plots/uso.svg")
plt.clf()

