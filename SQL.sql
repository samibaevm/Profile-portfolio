SQL 

Создание таблицы -  CREATE TABLE name_table ( 
							genre_id INT PRIMARY KEY AUTO_INCREMENT, 
							name_genre VARCHAR(30)
							);

Вставка в таблицу - INSERT INTO book VALUES (NULL, 'Мастер и Марарита',  'Булгаков М.А.', 670.99, 3);

Выборка всех данных из таблицы - SELECT * FROM book;
		отдельных столбцов - SELECT title, amount FROM book;
		новых столбцов с присвоением имен - SELECT title AS Название, amount FROM book;
		Выборка данных с созданием вычисляемого столбца - SELECT title, amount, amount * 1.65 AS pack
															FROM book;
		Выборка данных, вычисляемые столбцы, логические функции - SELECT title, amount, price, 
    																IF(amount<4, price*0.5, price*0.7) AS sale
																    FROM book;
		Выборка данных по условию - SELECT title, price 
									FROM book
									WHERE price < 600;

									SELECT title, author, price, amount
									FROM book
									WHERE (price < 500 OR price > 600) AND price*amount >5000;
		Выборка данных, операторы BETWEEN, IN- SELECT title, author
									FROM book 
									WHERE price BETWEEN 540.50 AND 800 AND amount IN(2, 3, 5, 7);	
		Выборка данных с сортировкой - 	SELECT author, title
										FROM book
										WHERE amount BETWEEN 2 AND 14
										ORDER BY author DESC, title;							
		Выборка данных, оператор LIKE - SELECT title, author
										FROM book
										WHERE title LIKE '%_ _%' /* Выборка, два слова любой длины*/
										    AND author LIKE '%с.%' /*Выборка любое количество символов до и после С. */
										ORDER BY title;
Выбор уникальных элементов столбца DISTINCT - SELECT DISTINCT amount
											  FROM book;
Выборка данных, групповые функции SUM и COUNT - SELECT author AS 'Автор',
											   COUNT(author) AS 'Различных_книг',
											   SUM(amount) AS 'Количество_экземпляров'  /*количество различных книг и количество 
											   											экземпляров книг каждого автора , 
											   											хранящихся на складе*/
												FROM book
												GROUP BY author;
Выборка данных, групповые функции MIN, MAX и AVG - SELECT author, 
												    MIN(price) AS 'Минимальная_цена',
												    MAX(price) AS 'Максимальная_цена',
												    AVG(price) AS 'Средняя_цена'
												FROM book
												GROUP BY author;
Выборка данных по условию, групповые функции - 	/*Найти минимальную и максимальную цену книг всех авторов, 
												общая стоимость книг которых больше 5000.*/
													SELECT author,
													    MIN(price) AS Минимальная_цена, 
													    MAX(price) AS Максимальная_цена
													FROM book
													GROUP BY author
													HAVING SUM(price * amount) > 5000; 
Вложенный запрос, возвращающий одно значение - 	/*Вывести информацию (автора, название и цену) о  книгах, 
												цены которых меньше или равны средней цене книг на складе. 
												Информацию вывести в отсортированном по убыванию цены виде. 
												Среднее вычислить как среднее по цене книги.*/
												SELECT author, title,price
												FROM book
												WHERE price <= (
												        SELECT AVG(price)
												        FROM book)
												ORDER BY price DESC
												        ;																									
Использование вложенного запроса в выражении - 	/*Вывести информацию (автора, название и цену) о тех книгах, 
												цены которых превышают минимальную цену книги на складе не более чем 
												на 150 рублей в отсортированном по возрастанию цены виде.*/	
												SELECT author, title, price
												FROM book
												WHERE price <= 
												    150 + (SELECT MIN(price)
												    FROM book) 
												ORDER BY price
												;																						
									
Вложенный запрос, оператор IN - /*Вывести информацию (автора, книгу и количество) о тех книгах, 
								количество экземпляров которых в таблице book не дублируется.*/
												SELECT author, title, amount
												FROM book
												WHERE amount IN (
												    SELECT amount 
												    FROM book
												    GROUP BY  amount
												    HAVING COUNT(amount) =1
												    );
Добавление записей из другой таблицы - /*Добавить из таблицы supply в таблицу book, все книги, 
										кроме книг, написанных Булгаковым М.А. и Достоевским Ф.М.*/
										INSERT INTO book (title, author, price, amount)
										SELECT title, author, price, amount
										FROM supply
										WHERE author NOT IN ('Булгаков М.А.', 'Достоевский Ф.М.');

										SELECT * FROM book;
Добавление записей, вложенные запросы - /*Занести из таблицы supply в таблицу book только те книги, 
										авторов которых нет в  book.*/										
										INSERT INTO book (title, author, price, amount)
										SELECT title, author, price, amount
										FROM supply
										WHERE author NOT IN(
										    SELECT author
										    FROM book);
										SELECT * from book;
Запросы на обновление - /*Уменьшить на 10% цену тех книг в таблице book, 
						количество которых принадлежит интервалу от 5 до 10, 
						включая границы.*/
						UPDATE book
						SET price = price*0.9
						WHERE amount IN(5, 10);

						SELECT * FROM book;
Запросы на обновление нескольких столбцов - /*В таблице book необходимо скорректировать значение 
											для покупателя в столбце buy таким образом,
											 чтобы оно не превышало количество экземпляров книг, 
											 указанных в столбце amount. А цену тех книг,
											 которые покупатель не заказывал, снизить на 10%.*/
											 UPDATE book
											SET 
											    buy = IF ( amount < buy AND buy <> 0, amount, buy), 
											    price = IF ( buy = 0, price*0.9, price);

											SELECT * FROM book;
Запросы на обновление нескольких таблиц - /*Для тех книг в таблице book , которые есть в таблице supply, 
											не только увеличить их количество в таблице book 
											( увеличить их количество на значение столбца amountтаблицы 
											supply), но и пересчитать их цену (для каждой книги найти 
											сумму цен из таблиц book и supply и разделить на 2).*/
											UPDATE book, supply
											SET book.amount = book.amount + supply.amount,
											     book.price = (book.price+supply.price)/2
											WHERE book.title = supply.title AND book.author = supply.author;

											SELECT * FROM book;	
Соединение INNER JOIN - SELECT
						 ...
						FROM
						    таблица_1 INNER JOIN  таблица_2
						    ON условие
						...
						/*Вывести название, жанр и цену тех книг, 
						количество которых больше 8, 
						в отсортированном по убыванию цены виде.*/
						SELECT title, name_genre, price
						FROM genre INNER JOIN book
						    ON genre.genre_id = book.genre_id
						WHERE amount > 8
						ORDER BY price DESC
						;

Внешнее соединение LEFT и RIGHT OUTER JOIN - 
						SELECT
						 ...
						FROM
						    таблица_1 LEFT JOIN  таблица_2
						    ON условие
						...
						/*Вывести все жанры, которые не представлены в книгах на складе.*/
						SELECT name_genre
						FROM genre LEFT JOIN book
						    ON genre.genre_id = book.genre_id
						WHERE book_id IS NULL;
						/*Соединение по жанру, остальные столбцы NULL, можно с др. столбцами*/

						

2.1																					