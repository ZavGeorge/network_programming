University: ITMO Universit </br>
Faculty: FICT</br>
Course: Network programming</br>
Year: 2022/2023</br>
Group: K34212</br>
Author: Zavarzin George </br>
Lab: 3</br>
Date of create: 21.12.2022</br>
Date of finished: 21.12.2022</br>

# Лабораторная работа №3 "Развертывание Netbox, сеть связи как источник правды в системе технического учета Netbox"

## Описание
   В данной лабораторной работе вы ознакомитесь с интеграцией Ansible и Netbox и изучите методы сбора информации с помощью данной интеграции
   
## Цель работы: 
С помощью Ansible и Netbox собрать всю возможную информацию об устройствах и сохранить их в отдельном файле

## Ход работы:
В процессе выполнения лабораторной работы были выпонены следующие шаги:

  ### Развертывание Netbox на Ubuntu
  
  1. Была выполнена установка NetBox
![image](https://user-images.githubusercontent.com/60888284/209010972-936b7970-8747-422b-a22e-5f4341da85bb.png)

2. Был исправлен файл configuration.py

![image](https://user-images.githubusercontent.com/60888284/209011012-b0d53347-3c0b-484d-9b9e-888be19d6674.png)

3. Сгенерировали ключ для файла configuration.py

![image](https://user-images.githubusercontent.com/60888284/209011074-2e4fa739-484a-4431-92b0-4e13df1a4c53.png)

4. Был создан суперпользователь 

![image](https://user-images.githubusercontent.com/60888284/209011140-0644410d-facc-4d85-a13f-0b4c7bc8b543.png)

5. Была собрана статистика 

![image](https://user-images.githubusercontent.com/60888284/209011223-a0aeb600-2d86-472b-96b3-926c51fda04a.png)

6. была проверена работа Netbox

![image](https://user-images.githubusercontent.com/60888284/209011287-990ec86b-de20-4d5c-b6a6-e32079b13829.png)

7. Был установлен Nginx и настроен файл конфигурации Nginx

![image](https://user-images.githubusercontent.com/60888284/209011447-952a8fb0-5925-45be-8e38-f20b5d2b0bd3.png)

![image](https://user-images.githubusercontent.com/60888284/209011470-682003c3-7591-4c4e-9f32-c5d9d2db2336.png)

8. Были созданы устройства в Netbox 

![image](https://user-images.githubusercontent.com/60888284/209011528-78168ebd-5b6d-46e4-8bf0-2f241b87f0d4.png)

![image](https://user-images.githubusercontent.com/60888284/209011541-20f01d25-5472-4f1a-a78e-cfe4a0490fcd.png)

![image](https://user-images.githubusercontent.com/60888284/209011556-affbd25c-47fb-44d4-b987-21158b6c1785.png)

### Написание сценария для настройки CHR1, CHR2

1. Был написан сценарий для настройки сетевых устройств

![image](https://user-images.githubusercontent.com/60888284/209012445-cf22e628-3b1a-4548-9d5c-e4e379f65d78.png)

![image](https://user-images.githubusercontent.com/60888284/209012387-dc0ccab2-7dad-4fa0-a3ed-a3b59035531e.png)

2. Была выполнена проверка изменения настроек сетевого устройства

![image](https://user-images.githubusercontent.com/60888284/209012640-0e42ab44-93c8-400f-99df-19fd6cd2389d.png)

![image](https://user-images.githubusercontent.com/60888284/209014237-bda0a47a-84f8-4222-9c0c-6581ef012f45.png)

### Написание сценария для создания устройтва в NetBox

1. Был создан сценарий для получения серийного номера сетевого устройства и создания устройства в NetBox

![image](https://user-images.githubusercontent.com/60888284/209012878-a1c5a4cd-d0b4-4971-98a0-08e19d010fd6.png)

2. была выполнена проверка работы сценария 

![image](https://user-images.githubusercontent.com/60888284/209012890-f73fb52e-23c9-4717-b8b5-49e88adfdd61.png)

![image](https://user-images.githubusercontent.com/60888284/209012668-b6fc5640-43c0-4d7c-80a5-cc4e7c031045.png)

![image](https://user-images.githubusercontent.com/60888284/209012704-af4b2e78-0ef9-49b2-8fc8-f538bce9ef10.png)

![image](https://user-images.githubusercontent.com/60888284/209012724-13ee8a4c-c4d4-4425-92cb-40986b8c7ed5.png)

## Выводы 
Таким образом, в процессе выполнения лабораторной работы ознакомились с инструментом NetBox, были созданы сценарии Ansible для работы с NetBox. Также была выполнена проверка локальной связности между роутерами и NetBox.
