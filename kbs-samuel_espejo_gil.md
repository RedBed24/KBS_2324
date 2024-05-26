---
title: Descripción y estudio viabilidad
author: Samuel Espejo Gil
abstract: |
  Descripción, alcance y estudio de viabilidad sobre un sistema basado en el conocimiento, por reglas.
  Se tratará el diagnóstico de errores de arranque comunes en ordenadores con sistema operativos Windows.
  El hardware usado serán los diferentes ordenadores prestados por la biblioteca de la Universidad de Castilla La Mancha.
---

## Descripción

Se desarollará un sistema basado en reglas que sea capaz de diagnosticar un conjunto de problemas a la hora de arrancar un ordenador.
El objetivo es poder averiguar cuál es el error y saber qué lo ha causado.
Se podrán tratar varios sistemas operativos para abarcar más posibilidades, además, se tendrá en cuenta las diferentes fases del arranque: desde que se recibe corriente hasta que el sistema operativo está completamente cargado y se está en una pantalla de inicio de sesión.

Para llevar a cabo este sistema, se cuenta con un ingeniero del conocimiento: Samuel Espejo Gil.
Y varios expertos: un sub conjuntos de los contratados durante la primera mitad del 2024 en el área TIC de la biblioteca Bernardo Balbuena, en Ciudad Real, estos son:

- Manuel Díaz-Marta Puentes
- Roberto Gonzalez Manzano

### Necesidad y justificación

El sistema se desrrollará como prácticas para la asignatura de Sistemas Basados en el Conocimiento.

Se espera que una vez esté desarollada, cualquier becario sea capaz de diagnosticar problemas sin la ayuda de los expertos, dotando de mayor autonomía a los becarios y de más tiempo a los expertos.

Actualmente se cuenta con una ficha de casos comunes que los becarios consultan, pero esta es una mera recolección no estructurada, dividida en varias hojas con diferentes datos.
Se busca que con este sistema todo ese conocimiento, y el que no está en la hojas, si no en los expertos, sea recogido y formalizado en el programa.

La necesidad no es extrema, los expertos son capaces de ceder tiempo y explicar cuando se les requiere, pero ello les quita tiempo de trabajo.
Aunque por las tardes, los expertos no están y sólo se encuentran los becarios, por lo que en estos casos, se procede con el caso más extremo, pedir que se devuelva el ordenador para inspección futura de los expertos.
Esta aplicación permitiría no requerir de estas situaciones.

### Alcance y límites

Se tratará toda la fase de arranque, esta se define desde que el ordenador recibe corriente, se pulsa el botón físico de arranque, hasta que el ordenador tiene el sistema operativo cargado y requiere un inicio de sesión de algún usuario.

Los sistemas operativos tenidos en cuenta son:

- Windows 10 education
- Windows 11 education
- Windows 10 pro
- Windows 11 pro
- Windows 10 enterprise
- Windows 11 enterprise

Versiones que permitan inclusión de dominio.

Como hardware posible, sólo portátiles, de cualquier modelo prestado por la universidad:

- Lenovo Thinkpad Yoga 20C0
- HP Notebook 340S G7
- HP Elitebook x360 1040 G6
- HP Elitebook 840 G3
- HP Elite x2 G4<!-- El mejor, el de los profes -->
- HP Elitebook 745 G6

Como excepciones y límites, no se contemplarán ordenadores de Apple, cualquier MAC u otro dispositivo que cuente con un sistema de esta empresa.
Aunque estos también son prestados por la universidad, siguen procesos lo suficientemente diferentes como para ser tratados a parte, por lo que no son ámbito de este programa.
Tampoco se contemplarán distribuciones de linux.

## Viabilidad

Para estudiar la viabilidad se llevará a cabo el test de Slagel, en el anexo se puede encontrar tablas que cuentan con toda la información, aquí sólo se comentará los casos más importantes.

Para realizar este test, se ha creado un documento de hojas de cálculo con las diferentes características y pesos vistos en clase.
En el documento se pueden encontrar todos los valores dados y los cálculos realizados.

- P5: Generalmente, cada semana suele traerse un ordenador que necesita ser tratado de estos problemas.
- P6: Los procesos de diagnóstico y tratamiento suelen empezar siendo los mismos.
- J1: Durante las horas de la tarde, no se cuenta con ninguno.
- J4: Depende del usario que venga con el problema del ordenador.
- J5: Hasta el momento, no se ha devuelto ningún ordenador a fábrica.
- A1: Se cuenta con una recolección de casos, pero es lo más general y no se sigue un orden ni hay un índice.
- A6: Se puede identificar una secuencia de pasos.
- A10: Generalmente, para solucionar estos problemas hay que revisar diversos manuales, del fabricante, de la bios, del sistema operativo...
- E3: Que el ordenador vuelva a arrancar, a la primera, sin necesidad de intervención humana más que pulsar el botón.

| Característica | Total |
| :-- | --: |
| Plausibilidad | 95.75% |
| Justificación | 82.89% |
| Adecuación | 75.55% |
| Éxito | 76.60% |
| Media | 82.70% |

table: Porcentajes de viabilibdad de cada grupo de características

Como la media nos da 82.7%, es viable llevar a cabo el sistema.

## Anexo

| Identificador | Valor |
| :-- | --: |
| P1 | 10 |
| P2 | 10 |
| P3 | 10 |
| P4 | 8 |
| P5 | 9 |
| P6 | 10 |
| P7 | 10 |
| P8 | 10 |
| P9 | 9 |
| P10 | 10 |

table: Características de Plausibilidad

| Identificador | Valor |
| :-- | --: |
| J1 | 10 |
| J2 | 7 |
| J3 | 8 |
| J4 | 10 |
| J5 | 8 |
| J6 | 6 |
| J7 | 10 |

table: Características de Justificación

| Identificador | Valor |
| :-- | --: |
| A1 | 6 |
| A2 | 10 |
| A3 | 8 |
| A4 | 10 |
| A5 | 10 |
| A6 | 10 |
| A7 | 10 |
| A8 | 5 |
| A9 | 10 |
| A10 | 9 |
| A11 | 4 |
| A12 | 4 |

table: Características de Adecuación


| Identificador | Valor |
| :-- | --: |
| E1 | 10 |
| E2 | 10 |
| E3 | 10 |
| E4 | 6 |
| E5 | 5 |
| E6 | 10 |
| E7 | 5 |
| E8 | 8 |
| E9 | 8 |
| E10 | 7 |
| E11 | 10 |
| E12 | 10 |
| E13 | 5 |
| E14 | 10 |
| E15 | 10 |
| E16 | 4 |
| E17 | 8 |

table: Características de Éxito

