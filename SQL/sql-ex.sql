Задание: 1 (Serge I: 2002-09-30)
Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

SELECT model, speed, hd
FROM PC
WHERE price < 500

====================================================================================

Задание: 2 (Serge I: 2002-09-21)
Найдите производителей принтеров. Вывести: maker

SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer'

====================================================================================

Задание: 3 (Serge I: 2002-09-30)
Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

SELECT model, ram, screen
FROM laptop
WHERE price > 1000

====================================================================================

Задание: 4 (Serge I: 2002-09-21)
Найдите все записи таблицы Printer для цветных принтеров.

SELECT *
FROM printer
WHERE color = 'y'

====================================================================================

Задание: 5 (Serge I: 2002-09-30)
Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.

SELECT model, speed, hd
FROM pc
WHERE price < 600 and CD in ( '12x' , '24x')


====================================================================================

Задание: 6 (Serge I: 2002-10-28)
Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

SELECT DISTINCT product.maker, laptop.speed
FROM laptop INNER JOIN product ON laptop.model= product.model
WHERE laptop.hd >= 10


====================================================================================

Задание: 7 (Serge I: 2002-11-02)
Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

SELECT product.model, laptop.price
FROM laptop INNER JOIN product ON product.model = laptop.model
WHERE product.maker = 'B'
UNION
SELECT product.model, pc.price
FROM pc INNER JOIN product ON product.model = pc.model
WHERE product.maker = 'B'
UNION
SELECT product.model, printer.price
FROM printer INNER JOIN product ON product.model = printer.model
WHERE product.maker= 'B'


====================================================================================

Задание: 8 (Serge I: 2003-02-03)
Найдите производителя, выпускающего ПК, но не ПК-блокноты.

SELECT maker 
FROM product
WHERE type = 'PC'
except
SELECT maker
FROM product 
WHERE type = 'laptop'


====================================================================================

Задание: 9 (Serge I: 2002-11-02)
Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

SELECT DISTINCT maker
FROM product RIGHT JOIN pc on product.model = pc.model
WHERE pc.speed >= 450


====================================================================================

Задание: 10 (Serge I: 2002-09-23)
Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

SELECT  model, price
FROM printer
WHERE price in (SELECT MAX(price) 
				FROM printer)

====================================================================================


Задание: 11 (Serge I: 2002-11-02)
Найдите среднюю скорость ПК.

SELECT AVG(speed)
FROM pc

====================================================================================

Задание: 12 (Serge I: 2002-11-02)
Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

SELECT AVG (speed)
FROM laptop
WHERE price > 1000

====================================================================================

Задание: 13 (Serge I: 2002-11-02)
Найдите среднюю скорость ПК, выпущенных производителем A.

SELECT AVG(speed)
FROM pc INNER JOIN product on pc.model = product.model
WHERE product.maker = 'A'

====================================================================================

Задание: 14 (Serge I: 2002-11-05)
Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

SELECT ships.class, ships.name, classes.COUNT
FROM classes RIGHT JOIN ships on classes.class = ships.class
WHERE classes.numGuns >= 10

====================================================================================

Задание: 15 (Serge I: 2003-02-03)
Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

SELECT DISTINCT pc.hd
FROM pc
GROUP BY hd
HAVING COUNT(hd) >= 2

====================================================================================

Задание: 16 (Serge I: 2003-02-03)
Найдите пары моделей PC, имеющих одинаковые скорость и RAM. 
В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i),
 Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.

SELECT DISTINCT pc_1.model, pc_2.model , pc_1.speed, pc_1.ram
FROM pc pc_1, pc pc_2
WHERE pc_1.speed = pc_2.speed and pc_1.ram = pc_2.ram and pc_1.model> pc_2.model

====================================================================================

Задание: 17 (Serge I: 2003-02-03)
Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
Вывести: type, model, speed

SELECT DISTINCT  product.type, laptop.model, laptop.speed
FROM laptop LEFT JOIN product on laptop.model = laptop.model
WHERE product.type = 'laptop' and
laptop.speed < Any (SELECT MIN(speed) FROM PC)

====================================================================================

Задание: 18 (Serge I: 2003-02-03)
Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

SELECT product.maker, MIN(printer.price)
FROM printer LEFT JOIN product on printer.model = product.model
WHERE printer.price = (SELECT MIN(price) FROM printer WHERE color = 'y') and color = 'y'
GROUP BY maker

====================================================================================

Задание: 19 (Serge I: 2003-02-13)
Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
Вывести: maker, средний размер экрана.

SELECT maker, AVG(screen)
FROM laptop LEFT JOIN product on laptop.model = product.model
GROUP BY maker

====================================================================================

Задание: 20 (Serge I: 2003-02-13)
Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.

SELECT maker, COUNT (model)
FROM product
WHERE type = 'pc'
GROUP BY maker
HAVING COUNT (model) >= 3

====================================================================================

Задание: 21 (Serge I: 2003-02-13)
Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
Вывести: maker, максимальная цена.

SELECT maker, MAX(price) 
FROM pc INNER JOIN product on product.model = pc.model
GROUP BY maker

====================================================================================

Задание: 22 (Serge I: 2003-02-13)
Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена.

SELECT speed, AVG(price)
FROM pc
WHERE speed > 600
GROUP BY speed

====================================================================================

Задание: 23 (Serge I: 2003-02-14)
Найдите производителей, которые производили бы как ПК
со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
Вывести: Maker

SELECT DISTINCT maker
FROM pc INNER JOIN product on pc.model = product.model
WHERE speed >= 750
INTERSECT
SELECT DISTINCT maker
FROM laptop INNER JOIN product on laptop.model = product.model
WHERE speed >= 750

====================================================================================

Задание: 24 (Serge I: 2003-02-03)
Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.

with ctr_1 as (
SELECT model, price FROM pc
UNION
SELECT model, price FROM laptop
UNION 
SELECT model, price FROM printer)

SELECT model FROM ctr_1 
WHERE price in (SELECT MAX(price) FROM ctr_1)

====================================================================================

Задание: 25 (Serge I: 2003-02-14)
Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM 
и с самым быстрым процессором среди всех ПК,
 имеющих наименьший объем RAM. Вывести: Maker

SELECT DISTINCT maker 
FROM pc INNER JOIN product on pc.model= product.model 
WHERE maker in (
SELECT DISTINCT maker FROM product WHERE type= 'printer')
and speed = (SELECT MAX(speed) FROM pc WHERE ram = (SELECT MIN(ram) FROM pc))
and ram = (SELECT MIN(ram) FROM pc)

====================================================================================

Задание: 26 (Serge I: 2003-02-14)
Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.

SELECT SUM(prices)/ SUM(models) 
FROM (SELECT COUNT(pc.model) models , SUM(price) prices 
		FROM pc INNER JOIN product on pc.model = product.model WHERE maker = 'A' 
UNION
	SELECT COUNT(laptop.model), SUM(price) 
	FROM laptop INNER JOIN product on laptop.model = product.model WHERE maker = 'A' ) this_table


====================================================================================

Задание: 27 (Serge I: 2003-02-03)
Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.

SELECT maker, AVG(hd) AVG_hd 
FROM pc JOIN product on product.model= pc.model 
WHERE maker in (
	SELECT DISTINCT maker 
	FROM product WHERE type = 'printer')
GROUP BY maker

====================================================================================

Задание: 28 (Serge I: 2012-05-04)
Используя таблицу Product, определить количество производителей, выпускающих по одной модели.

SELECT COUNT(maker) FROM (
SELECT maker FROM productGROUP BY maker
HAVING COUNT(*) = 1) this_table
