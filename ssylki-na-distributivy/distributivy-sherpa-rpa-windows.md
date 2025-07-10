# Дистрибутивы Sherpa RPA (Windows)

## **1. Платформа Sherpa RPA (Sherpa Attended Robot + Sherpa Designer) для рабочих мест разработчиков**

{% embed url="https://sherparpa.ru/downloads/SherpaRPA.exe" %}

**SherpaRPA.exe.SHA1SUM:**

{% embed url="https://sherparpa.ru/downloads/SherpaRPA.exe.SHA1SUM" %}

## **2. Только Робот Sherpa Attended / Unattended (без Sherpa Designer) для установки на рабочие места конечных Пользователей, виртуальные машины или терминальные сервера**

{% embed url="https://sherparpa.ru/downloads/SherpaRPARuntime.exe" %}

> При установке только Роботов (без Sherpa Designer) необходимо выбрать тип устанавливаемого Робота на первом шаге установки: Attended или Unattended.

**SherpaRPARuntime.exe.SHA1SUM:**

{% embed url="https://sherparpa.ru/downloads/SherpaRPARuntime.exe.SHA1SUM" %}

## **3. Sherpa Coordinator (Координатор) для Unattended роботов**

{% embed url="https://sherparpa.ru/downloads/SherpaRPACoordinator.exe" %}

**SherpaRPACoordinator.exe.SHA1SUM:**

{% embed url="https://sherparpa.ru/downloads/SherpaRPACoordinator.exe.SHA1SUM" %}

> Sherpa Coordinator (Координатор) — это сервис, который необходимо установить на RDP-сервер с правами администратора. Он предназначен для запуска Unattended роботов в пользовательских учетных записях, при условии, что требуется автоматический вход в учетные записи Роботов.

## **4. Sherpa Orchestrator (Оркестратор)**

**Cсылки на дистрибутив Оркестратора предоставляются по запросу вендору.** Возможны два варианта установки [с помощью докер-контейнера и без](../sherpa-orchestrator/ustanovka-sherpa-orchestrator/). Для проверки контрольной суммы можно использовать Windows утилиту «certutil»: `certutil -hashfile путь_к_файлу` .

> **Робот в любом из способов установки (с Sherpa Designer или без) может иметь роль как Attended, так и Unattended, это определяется его** [**Лицензией**](../licenzii/) **(локальной или полученной из Sherpa Orchestrator) и способом запуска (локально или через Sherpa Orchestrator).**
