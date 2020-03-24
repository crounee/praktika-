--
-- Файл сгенерирован с помощью SQLiteStudio v3.2.1 в Вт мар 24 19:55:07 2020
--
-- Использованная кодировка текста: windows-1251
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица:  Виды работ
CREATE TABLE " Виды работ" ("Код вида" BIGINT PRIMARY KEY UNIQUE NOT NULL, Наименование VARCHAR (50), Описание TEXT (50), "Цена работы" BIGINT, "Код материала 1" BIGINT, "Код материала 2" BIGINT, "Код материала 3" BIGINT);

-- Таблица:  Заказчики
CREATE TABLE " Заказчики" ("Код заказчика" BIGINT PRIMARY KEY UNIQUE NOT NULL, ФИО VARCHAR (50), Адрес VARCHAR (50), Телефон BIGINT, " Паспортные данные" VARCHAR (50));

-- Таблица: Бригады
CREATE TABLE Бригады ("Код бригады" BIGINT PRIMARY KEY UNIQUE NOT NULL, " Код сотрудника 1" BIGINT, " Код сотрудника 2" BIGINT, " Код сотрудника 3" BIGINT);

-- Таблица: Должности
CREATE TABLE Должности ("Код должности" BIGINT PRIMARY KEY UNIQUE NOT NULL, "Наименование должности" VARCHAR (50), " Оклад" BIGINT, Обязанности VARCHAR (50), " Требования" VARCHAR (50));

-- Таблица: Заказы
CREATE TABLE Заказы ("Код заказчика" BIGINT PRIMARY KEY UNIQUE NOT NULL, " Код вида работ" BIGINT, "Код бригады" BIGINT, " Стоимость" BIGINT, " Дата начала" BIGINT, " Дата окончания" BIGINT, "Отметка о завершении" VARCHAR (50), " Отметка об оплате" VARCHAR (50), "Код сотрудника" BIGINT);

-- Таблица: Материалы
CREATE TABLE Материалы ("Код материала" BIGINT PRIMARY KEY UNIQUE NOT NULL, Наименование VARCHAR (50), Упаковка VARCHAR (50), Описание TEXT (50), Цена BIGINT);

-- Таблица: Сотрудники
CREATE TABLE Сотрудники ("(Код сотрудника" BIGINT PRIMARY KEY UNIQUE NOT NULL, ФИО VARCHAR (50), Возраст BIGINT, Пол VARCHAR (50), Адрес VARCHAR (50), Телефон BIGINT, "Паспортные данные" VARCHAR (50), "Код должности" BIGINT);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
