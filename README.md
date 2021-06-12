# shell
Se tiene un archivo separado por comas con registros de tarjetas de crédito (Archivos_Tarjetas_de_crédito_100_CC_Records.csv):

En este link se puede ver de manera mas gráfica el contenido del archivo: Su script recibirá 2 parámetros: 

-Un código de tarjeta de crédito (primer columna), por ejemplo AX (American Express), VI (Visa), etc.
-Un banco (tercer columna), por ejemplo: Chase.

y deberá realizar dos tareas:

>Primero deberá generar el array de números de tarjetas de crédito (cuarta columna).
¿Como se forma el array de números de tarjetas de crédito?.
Tiene que llenar un Array con todos los número de tarjetas de crédito (cuarta columna) correspondiente al
código de tarjeta de crédito (primer columna) y al banco(tercer columna) recibidos por parámetro.
Ademas deberá calcular el límite (ultima columna) total de las tarjetas de crédito del array.

>Segundo deberá imprimir los elementos del vector que formó en la tarea anterior (imprimir en pantalla los elementos del vector) y el límite total de las tarjetas de crédito del array.

Por ejemplo, si recibo
MC Barclays

Debo imprimir:

5239508731179937 5478071282161218 5314978894096111 5361683471944111
370600

Atención: debe imprimirlos desde el vector luego de agregarlos, no a medida que los agrega.

Explicación:
5239508731179937 5478071282161218 5314978894096111 5361683471944111 son los elementos del array que son los números de tarjetas de crédito que se corresponden con MC Barclays
370600 es la suma del límite total de las tarjetas de crédito del array.

Por ejemplo, si recibo
AX

Debo Imprimir:
INVALID PARAMETERS

Explicación:
Falta 1 parámetro
