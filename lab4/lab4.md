University: ITMO University </br>
Faculty: FICT</br>
Course: Network programming</br>
Year: 2022/2023</br>
Group: K34212</br>
Author: Zavarzin George </br>
Lab: 4</br>
Date of create: 30.12.2022</br>
Date of finished: 11.1.2023</br>

# Лабораторная работа №4 "Базовая коммутация и туннелирование, используя язык программирования P4"

## Описание:
В данной лабораторной работе ознакомлены на практике с языком программирования P4, разработанный компанией Barefoot (ныне Intel) для организации процесса обработки сетевого трафика на скорости чипа. Barefoot разработал несколько FPGA чипов для обработки трафика которые были встроенны в некоторые модели коммутаторов Arista и Brocade.

## Цель работы:
Изучить синтаксис языка программирования P4 и выполнить 2 задания обучающих задания от Open network foundation для ознакомления на практике с P4.

## Ход работы:

Для того чтобы начать выполнение лабораторной работы, необходимо было установить Vagrant и создать с помощью него виртуальную машину в VirtualBox с двумя учетными записями vagrant/vagrant, p4/p4 (используется в данной лабораторной работе).

[<img src="https://user-images.githubusercontent.com/60888284/211783343-7b8c63d6-5fb0-47db-be1e-af264d0f4ed8.png" width=600>](https://user-images.githubusercontent.com/60888284/211783343-7b8c63d6-5fb0-47db-be1e-af264d0f4ed8.png)

После того как был выполнен вход в учетную запись p4 виртуальной машины, была выволнена настройка базовой переадресации, то есть свитч должен уметь выполнять следующие действия: обновлять исходный и конечный МАК-адреса, уменьшает значение TTL и отправляет пакет на определенный порт.
В лабораторной работе используется следующая топология.

[<img src="https://user-images.githubusercontent.com/60888284/212961265-b9f473e2-a784-436e-b253-e8f91bbb1130.png" width=400>](https://user-images.githubusercontent.com/60888284/212961265-b9f473e2-a784-436e-b253-e8f91bbb1130.png)

Была выполнена проверка доступности узлов для проверки, что узлы недостежимы. 

[<img src="https://user-images.githubusercontent.com/60888284/211784315-00d56a88-f753-4a3a-b75a-b525e484c559.png" width=200>](https://user-images.githubusercontent.com/60888284/211784315-00d56a88-f753-4a3a-b75a-b525e484c559.png)

Для настройки переадресации был отредактирован basic.p4: был дополнен парсер, позволяющий заполнять заголовки пакетов, дописано действие ip4_forward, добавлена проверка правильности заголовка ipv4.

[<img src="https://user-images.githubusercontent.com/60888284/211785568-ffe90eb3-9344-44eb-949e-5a1d9ba1f1df.png" width=400>](https://user-images.githubusercontent.com/60888284/211785568-ffe90eb3-9344-44eb-949e-5a1d9ba1f1df.png)

[<img src="https://user-images.githubusercontent.com/60888284/211785479-1ddd2a36-78b4-48af-b611-d255cb95c213.png" width=200>](https://user-images.githubusercontent.com/60888284/211785479-1ddd2a36-78b4-48af-b611-d255cb95c213.png)

[<img src="https://user-images.githubusercontent.com/60888284/211785506-ead66179-3249-4cc9-bf93-8dc5783eb94e.png" width=200>](https://user-images.githubusercontent.com/60888284/211785506-ead66179-3249-4cc9-bf93-8dc5783eb94e.png)

После изменения скрипта, была выполнена его работоспособность с помощью команды pingall.

[<img src="https://user-images.githubusercontent.com/60888284/211786264-f93c9cca-cb9c-4051-ae23-8c4816945cc2.png" width=200>](https://user-images.githubusercontent.com/60888284/211786264-f93c9cca-cb9c-4051-ae23-8c4816945cc2.png)

Таким образом, законченнный скрипт содержит следующие компоненты:
   - определение заголовков ethernet, ipv4
   - парсеры для ethernet, epv4, которые заполняют заголовки
   - действие, которое обрасывает пакет
   - действие, которое обновляет адреса, уменьшает значение TTL
   - депарсер, выбирающий последовательность, в которой поля вставляются в пакет

Для того чтобы выполненить настройку туннелирования, необходимо было изменить файл basic_tunnel.p4: был дополнен парсер myParser, дописано действие myTunnel_forward, назначающее выходной порт, дописана таблица myTunnel_exact, обеспечена проверка валидности заголовка myTunnel, дописан myDeparser.

[<img src="https://user-images.githubusercontent.com/60888284/211787545-c5d9572e-fa4a-4cfd-a86f-3db20786c713.png" width=400>](https://user-images.githubusercontent.com/60888284/211787545-c5d9572e-fa4a-4cfd-a86f-3db20786c713.png)

[<img src="https://user-images.githubusercontent.com/60888284/211787612-31bb7882-1211-401e-a67a-348b45d77db2.png" width=200>](https://user-images.githubusercontent.com/60888284/211787612-31bb7882-1211-401e-a67a-348b45d77db2.png)

[<img src="https://user-images.githubusercontent.com/60888284/211787655-8766f0a2-7861-4425-9d02-e18278a48ae5.png" width=300>](https://user-images.githubusercontent.com/60888284/211787655-8766f0a2-7861-4425-9d02-e18278a48ae5.png)

После изменения скрипта была выполнена проверка его работоспособности: был скомпиллирован скрипт, был запущен инстанс Mininet, открыты два терминала для h1, h2, выполнено тестирование с туннелированием.

[<img src="https://user-images.githubusercontent.com/60888284/211788468-8048d6ad-dbcf-46f5-b838-1bee14eebf64.png" width=300>](https://user-images.githubusercontent.com/60888284/211788468-8048d6ad-dbcf-46f5-b838-1bee14eebf64.png)

[<img src="https://user-images.githubusercontent.com/60888284/211788609-713c2edb-b5aa-4743-a49d-aa652eceb0ba.png" width=300>](https://user-images.githubusercontent.com/60888284/211788609-713c2edb-b5aa-4743-a49d-aa652eceb0ba.png)

Таким образом, обновленный скрипт содержит следующие компоненты:
   - новый тип заголовка myTunnel_t
   - новый заголовок был добавлен в структуру headers
   - обновленный парсер, который вытаскивает либо myTunnel, либо ipv4
   - действие myTunnel_forward
   - таблица myTunnel_exact
   - обновленный депарсер

## Вывод:

Таким образом, была выполнена настройка базовой переадресации и туннелирования с помощью языка p4, познакомились с инструментом Vagrant, благодаря которому выполнено создание виртуальной машины. С помощью P4 была настроена базовая адресация и туннелирование.

[<img src="https://user-images.githubusercontent.com/60888284/211790222-3403ff80-fa9e-4a4a-84f7-7b99639c4f85.png" width=200>](https://user-images.githubusercontent.com/60888284/211790222-3403ff80-fa9e-4a4a-84f7-7b99639c4f85.png)
