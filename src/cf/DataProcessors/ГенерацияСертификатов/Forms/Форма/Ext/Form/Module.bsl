﻿#Область ОбработчикиКомандФормы

&НаСервереБезКонтекста
Процедура СгенерироватьНаСервере(ПараметрыГенерации)
	
	Для х=1 По ПараметрыГенерации.Количество Цикл
		НовыйСертификат = Справочники.Сертификаты.СоздатьЭлемент();
		НовыйСертификат.Наименование = ПараметрыГенерации.Наименование;
		НовыйСертификат.Номинал = ПараметрыГенерации.Номинал;
		Попытка
			НовыйСертификат.Записать();
		Исключение
			ОбщегоНазначения.СообщитьПользователю(ОписаниеОшибки());
			Продолжить;
		КонецПопытки;
		
		Менеджер = РегистрыСведений.СтатусыСертификатов.СоздатьМенеджерЗаписи();
		Менеджер.Период = ТекущаяДата();
		Менеджер.Сертификат = НовыйСертификат.Ссылка;
		Менеджер.Статус = Перечисления.СтатусыСертификатов.Создан;
		Менеджер.Записать(Истина);
	КонецЦикла;
	
КонецПроцедуры

&НаКлиенте
Процедура Сгенерировать(Команда)
	ПараметрыГенерации = Новый Структура;
	ПараметрыГенерации.Вставить("Количество", ЭтотОбъект.КоличествоСертификатов);
	ПараметрыГенерации.Вставить("Номинал", ЭтотОбъект.Номинал);
	ПараметрыГенерации.Вставить("Наименование", ЭтотОбъект.Наименование);
	СгенерироватьНаСервере(ПараметрыГенерации);
КонецПроцедуры

#КонецОбласти
