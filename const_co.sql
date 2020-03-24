--
-- ���� ������������ � ������� SQLiteStudio v3.2.1 � �� ��� 24 19:55:07 2020
--
-- �������������� ��������� ������: windows-1251
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- �������:  ���� �����
CREATE TABLE " ���� �����" ("��� ����" BIGINT PRIMARY KEY UNIQUE NOT NULL, ������������ VARCHAR (50), �������� TEXT (50), "���� ������" BIGINT, "��� ��������� 1" BIGINT, "��� ��������� 2" BIGINT, "��� ��������� 3" BIGINT);

-- �������:  ���������
CREATE TABLE " ���������" ("��� ���������" BIGINT PRIMARY KEY UNIQUE NOT NULL, ��� VARCHAR (50), ����� VARCHAR (50), ������� BIGINT, " ���������� ������" VARCHAR (50));

-- �������: �������
CREATE TABLE ������� ("��� �������" BIGINT PRIMARY KEY UNIQUE NOT NULL, " ��� ���������� 1" BIGINT, " ��� ���������� 2" BIGINT, " ��� ���������� 3" BIGINT);

-- �������: ���������
CREATE TABLE ��������� ("��� ���������" BIGINT PRIMARY KEY UNIQUE NOT NULL, "������������ ���������" VARCHAR (50), " �����" BIGINT, ����������� VARCHAR (50), " ����������" VARCHAR (50));

-- �������: ������
CREATE TABLE ������ ("��� ���������" BIGINT PRIMARY KEY UNIQUE NOT NULL, " ��� ���� �����" BIGINT, "��� �������" BIGINT, " ���������" BIGINT, " ���� ������" BIGINT, " ���� ���������" BIGINT, "������� � ����������" VARCHAR (50), " ������� �� ������" VARCHAR (50), "��� ����������" BIGINT);

-- �������: ���������
CREATE TABLE ��������� ("��� ���������" BIGINT PRIMARY KEY UNIQUE NOT NULL, ������������ VARCHAR (50), �������� VARCHAR (50), �������� TEXT (50), ���� BIGINT);

-- �������: ����������
CREATE TABLE ���������� ("(��� ����������" BIGINT PRIMARY KEY UNIQUE NOT NULL, ��� VARCHAR (50), ������� BIGINT, ��� VARCHAR (50), ����� VARCHAR (50), ������� BIGINT, "���������� ������" VARCHAR (50), "��� ���������" BIGINT);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
