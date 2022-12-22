University: ITMO Universit </br>
Faculty: FICT</br>
Course: Network programming</br>
Year: 2022/2023</br>
Group: K34212</br>
Author: Zavarzin George </br>
Lab: 2</br>
Date of create: 21.12.2022</br>
Date of finished: 21.12.2022</br>

# Лабораторная работа №2 "Развертывание дополнительного CHR, первый сценарий Ansible"

## Описание
   В данной лабораторной работе на практике изучается система управления конфигурацией Ansible, использующаяся для автоматизации настройки и развертывания программного обеспечения.
## Цель работы: 
С помощью Ansible настроить несколько сетевых устройств и собрать информацию о них. Правильно собрать файл Inventory.
## Ход работы:
   В процессе выполнения лабораторной работы были выпонены следующие шаги:
   
   ### Создание виртуальной машины на VirtualBox, установка CHR, организация OVPN-клиента 
   1. Была создана виртуальная машина CHR_2 на VirtualBox
   
   3. Был получен IP-адрес ВМ
   
   ![image](https://user-images.githubusercontent.com/60888284/209001016-bf14a8da-235c-4178-a06c-758a5546e099.png)
  
   3. Были получены сертификат и ключ для OVPN-клиента mikrotic2. В WInBox были имортированы сертификат и ключ, настроен OpenVPN-клиент
    
   ![image](https://user-images.githubusercontent.com/60888284/209001844-0f571fdb-a8d7-4747-a801-7c13e21f9976.png)
   ![image](https://user-images.githubusercontent.com/60888284/209001822-7c578fdc-093f-45e0-ab4f-14cb0734ac70.png)

   4. Была проверена IP-связаность между сервером и CHR 
   
   ### Настройка CHR-машин с помощью Ansible
   
   1. Был настроен файл инвентаризации  
   
   ![image](https://user-images.githubusercontent.com/60888284/209004678-a008a4ed-f9b2-4d85-a73b-04c5435e5838.png)
   ![image](https://user-images.githubusercontent.com/60888284/209004689-a5f7b53e-ad06-4831-b993-c275c4b9388e.png)
   
   2. Была произведена проверка подключения 
  
   ![image](https://user-images.githubusercontent.com/60888284/209004785-5b5f23b9-2202-4db2-98d0-46345fc14f35.png)
   
   3. С помощью Ansible был создан пользователь user на роутерах 

   ![image](https://user-images.githubusercontent.com/60888284/209004916-5febe564-d49f-40a1-8bae-5f577d0194bc.png)
   ![image](https://user-images.githubusercontent.com/60888284/209004956-91a23092-d25c-4e71-91a0-a83c90c44818.png)

   4. Был проверен созданный пользователь 
   
   ![image](https://user-images.githubusercontent.com/60888284/209005018-4966f2e5-d47f-47b3-8656-f3162fb5f743.png)
   ![image](https://user-images.githubusercontent.com/60888284/209005028-b8b14e4e-753e-4bfb-8347-ddd8f5fafe64.png)
   
   5. Был настроен NTP-клиент на роутерах
   
   ![image](https://user-images.githubusercontent.com/60888284/209005162-a3a73d97-9b33-4c6d-8334-2d392e0e3415.png)
   ![image](https://user-images.githubusercontent.com/60888284/209005191-1fb02151-b27e-4dae-b71f-c74260c46e12.png)
   ![image](https://user-images.githubusercontent.com/60888284/209005247-642b3f0e-7812-445c-ab41-dc9a55e9e3ae.png)
   
   6. Был настроен OSPF 
   
   ![image](https://user-images.githubusercontent.com/60888284/209005849-d92ddecc-43d5-41c4-a1c5-8e69171be229.png)
   ![image](https://user-images.githubusercontent.com/60888284/209005861-16b0dcac-7b2e-4d09-82d4-b865bdac8343.png)
   
   7. В разделе Neighbor в Winbox была выполнена проверка правильности настройки OSPF
   
   ![image](https://user-images.githubusercontent.com/60888284/209005951-acf05dce-dd3a-41ce-a0e1-c24107dd85c7.png)
   ![image](https://user-images.githubusercontent.com/60888284/209005983-f5a535e7-b6ee-48e2-9a8e-470a5c211249.png)
   ![image](https://user-images.githubusercontent.com/60888284/209006030-44d2b60b-0bab-4ac5-b717-9dc9054cfacc.png)
   
   ## Выводы 
   Таким образом, были созданы Ansible-плейбуки для конфигурирования роутеров, был изучен протокол динамической маршрутизации OSPF




  



   


