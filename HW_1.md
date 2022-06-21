Посмотреть где я

``` 
pwd
```

Создать папку

```
mkdir folder_name
```

Зайти в папку 

``` 
cd folder_name
```

Создать 3 папки

``` 
mkdir folder_name{1..3}
```

Зайти в любоую папку 

``` 
cd path
```

Создать 5 файлов (3 txt, 2 json) 

``` 
touch file{1..3}.txt file_json{1..2}.json
```

Создать 3 папки 

``` 
mkdir folder_name{4..6}
```
Вывести список содержимого папки 

``` 
ls
```

\+ Открыть любой txt файл 

``` 
cat file.txt
```

\+ написать туда что-нибудь, любой текст. 

``` 
cat > file.txt
```

\+ сохранить и выйти. 

```
ctrl+c enter
```

Выйти из папки на уровень выше 

```
cd ../
```

 переместить любые 2 файла, которые вы создали, в любую другую папку. 

```
mv file1 file2 mydir/
```

скопировать любые 2 файла, которые вы создали, в любую другую папку. 

``` 
cp file1 file2 mydir/
```

Найти файл по имени 

``` 
find / -name .filename
```
просмотреть содержимое в реальном времени (команда grep) изучите как она работает. 

``` 
tail -f file_name | grep searching_word
```
вывести несколько первых строк из текстового файла 

``` 
head file_name
```
вывести несколько последних строк из текстового файла 

``` 
tail file_name
```
просмотреть содержимое длинного файла (команда less) изучите как она работает. 

```
less file_name
```

вывести дату и время 
``` 
date
```
=========

Задание *
 Отправить http запрос на сервер.
http://162.55.220.72:5005/terminal-hw-request 

```
curl http://162.55.220.72:5005/terminal-hw-request
```

Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13 -

```
#!/bin/bash
cd foler_name
mk dir folder_name{1..3}
cd folder_name1
touch file_txt{1..3}.txt file_json{1..2}.json
mk dir folder_name4 folder_name5 folder_name6
ls
mv file_txt1.txt file_json1.json ../
```

=====================

 Посмотреть где я 

``` 
pwd
```

Создать папку 

``` 
mkdir foldername
```
Зайти в папку 

``` 
cd foldername
```