University: ITMO Universit </br>
Faculty: FICT</br>
Course: Network programming</br>
Year: 2022/2023</br>
Group: K34212</br>
Author: Zavarzin George </br>
Lab: 1</br>
Date of create: 23.11.2022</br>
Date of finished: 23.11.2022</br>

# Лабораторная работа №1 "Установка CHR и Ansible, настройка VPN"

## Описание
Данная работа предусматривает обучение развертыванию виртуальных машин (VM) и системы контроля конфигураций Ansible а также организации собственных VPN серверов

## Цель работы
Целью данной работы является развертывание виртуальной машины на базе платформы Microsoft Azure с установленной системой контроля конфигураций Ansible и установка CHR в VirtualBox

## Ход работы 
В процессе выполнения лабораторной работы были выпонены следующие шаги:

### Настройка OpenVPN-сервера на Ubuntu
 
1. Была создана вирутальная машина с Ubuntu 20
![image](https://user-images.githubusercontent.com/60888284/203538839-2d81f0bf-15a2-4eb4-8312-f24f89a8b866.png)
2. Для подключения к ВМ была создана пара ключей с помощью PuttyGen
![image](https://user-images.githubusercontent.com/60888284/203544110-40c5154e-f085-484a-bcf1-c081894cf2c2.png)
3. Был создан OpenVPN-сервер
![image](https://user-images.githubusercontent.com/60888284/203544285-86b695a4-281e-40d1-92a2-a710aff47beb.png)
4. Для создания клиента и изменения конфигурации OpenVPN-сервера, был использован Admin UI
![image](https://user-images.githubusercontent.com/60888284/203544632-a0013c3d-ad87-4f30-bc08-dc5c88cf372c.png)
5. В Network Settings/Protocol был выбран TCP, в Advanced VPN/TLS Control Channel Security было выбрано none
![image](https://user-images.githubusercontent.com/60888284/203545234-e3e0804e-1594-4e4b-822d-acdca420d3b0.png)
![image](https://user-images.githubusercontent.com/60888284/203544654-b250575a-e328-4058-bd97-934c40c8f533.png)
6. В разделе User Managment был создан клиент mikrotic и скачан профиль profile.ovpn для настройки OVPN-клиента


### Настройка OpenVPN-клиента на Mikrotic

1. Была создана виртуальная машина 
![image](https://user-images.githubusercontent.com/60888284/203545603-6fb0401e-3dba-4c21-917a-e508d544737a.png)
2. В WinBox были загружены ключ и сертификат для настройки OpenVPN-клиента, в разделе PPP были выполнены настройки клиента и настроен VPN-тунель 
![image](https://user-images.githubusercontent.com/60888284/203546496-096408fd-40f5-4a09-b03f-4607d37e403b.png)
![image](https://user-images.githubusercontent.com/60888284/203546235-2ec273c8-9ed9-4085-ba0b-db7633c6b435.png)
![image](https://user-images.githubusercontent.com/60888284/203546253-bcf7e299-4773-47ca-8669-2ab60a8d6f4d.png)


## Выводы 
Таким образом, была создана виртуальная машина в облачном сервисе Yandex и виртуальная машина с установленной на ней RouterOS в VirtualBox. Был настроен VPN туннель между сервером автоматизации и локальным CHR. Проверена IP связность (Mikrotic пингуется с ВМ Yandex).
