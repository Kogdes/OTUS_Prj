﻿///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// <Заголовок модуля: краткое описание и условия применения модуля.>
// 
// 
// 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#Область СлужебныеПроцедурыИФункции

Функция СообщениеПользователю(
		Знач ТекстСообщенияПользователю,
		Знач КлючДанных,
		Знач Поле,
		Знач ПутьКДанным = "",
		Отказ = Ложь,
		ЭтоОбъект = Ложь) Экспорт
	
	Сообщение = Новый СообщениеПользователю;
	Сообщение.Текст = ТекстСообщенияПользователю;
	Сообщение.Поле = Поле;
	
	Если ЭтоОбъект Тогда
		Сообщение.УстановитьДанные(КлючДанных);
	Иначе
		Сообщение.КлючДанных = КлючДанных;
	КонецЕсли;
	
	Если НЕ ПустаяСтрока(ПутьКДанным) Тогда
		Сообщение.ПутьКДанным = ПутьКДанным;
	КонецЕсли;
	
	Отказ = Истина;
	
	Возврат Сообщение;
	
КонецФункции

Процедура УстановитьПараметрДинамическогоСписка(Список, ИмяПараметра, Значение, Использование = Истина) Экспорт
	
	ЗначениеПараметраКомпоновкиДанных = Список.Параметры.НайтиЗначениеПараметра(Новый ПараметрКомпоновкиДанных(ИмяПараметра));
	Если ЗначениеПараметраКомпоновкиДанных <> Неопределено Тогда
		Если Использование И ЗначениеПараметраКомпоновкиДанных.Значение <> Значение Тогда
			ЗначениеПараметраКомпоновкиДанных.Значение = Значение;
		КонецЕсли;
		Если ЗначениеПараметраКомпоновкиДанных.Использование <> Использование Тогда
			ЗначениеПараметраКомпоновкиДанных.Использование = Использование;
		КонецЕсли;
	КонецЕсли;
	
КонецПроцедуры
#КонецОбласти
