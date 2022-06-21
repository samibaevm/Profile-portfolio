<h4>Посмотреть где я</h4>

``` 
pwd
```

<h4>Создать папку</h4>

```
mkdir folder_name
```

<h4>Зайти в папку </h4>

``` 
<h4>cd folder_name
```

<h4>Создать 3 папки</h4>

``` 
mkdir folder_name{1..3}
```

<h4>Зайти в любоую папку</h4> 

``` 
cd path
```

<h4>Создать 5 файлов (3 txt, 2 json)</h4> 

``` 
touch file{1..3}.txt file_json{1..2}.json
```

<h4>Создать 3 папки </h4>

``` 
mkdir folder_name{4..6}
```
<h4>Вывести список содержимого папки</h4> 

``` 
ls
```

<h4>\+ Открыть любой txt файл </h4>

``` 
cat file.txt
```

<h4>\+ написать туда что-нибудь, любой текст. </h4>

``` 
cat > file.txt
```

<h4>\+ сохранить и выйти. </h4>

```
ctrl+c enter
```

<h4>Выйти из папки на уровень выше </h4>

```
cd ../
```

<h4>переместить любые 2 файла, которые вы создали, в любую другую папку. </h4>

```
mv file1 file2 mydir/
```

<h4>скопировать любые 2 файла, которые вы создали, в любую другую папку. </h4>

``` 
cp file1 file2 mydir/
```

<h4>Найти файл по имени </h4>

``` 
find / -name .filename
```
<h4>просмотреть содержимое в реальном времени (команда grep) изучите как она работает. </h4>

``` 
tail -f file_name | grep searching_word
```
<h4>вывести несколько первых строк из текстового файла </h4>

``` 
head file_name
```
<h4>вывести несколько последних строк из текстового файла </h4>

``` 
tail file_name
```
<h4>просмотреть содержимое длинного файла (команда less) изучите как она работает. </h4>

```
less file_name
```

<h4>вывести дату и время </h4>
``` 
date
```

<h4>Задание *
 Отправить http запрос на сервер.
http://162.55.220.72:5005/terminal-hw-request </h4>

```
curl http://162.55.220.72:5005/terminal-hw-request
```

<h4>Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13 </h4>

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


 <h4>Посмотреть где я </h4>

``` 
pwd
```

<h4>Создать папку </h4>

``` 
mkdir foldername
```
<h4>Зайти в папку </h4>

``` 
cd foldername
```
