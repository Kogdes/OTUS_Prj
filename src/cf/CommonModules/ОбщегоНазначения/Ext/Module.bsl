﻿///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Функции общего назначения
// 
// 
// 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#Область ПрограммныйИнтерфейс

Процедура СообщитьПользователю(Знач ТекстСообщенияПользователю, Знач КлючДанных = Неопределено,	Знач Поле = "",
	Знач ПутьКДанным = "", Отказ = Ложь) Экспорт
	
	ЭтоОбъект = Ложь;
	
	Если КлючДанных <> Неопределено
		И XMLТипЗнч(КлючДанных) <> Неопределено Тогда
		
		ТипЗначенияСтрокой = XMLТипЗнч(КлючДанных).ИмяТипа;
		ЭтоОбъект = СтрНайти(ТипЗначенияСтрокой, "Object.") > 0;
	КонецЕсли;
	
	Сообщение = ОбщегоНазначенияСлужебныйКлиентСервер.СообщениеПользователю(ТекстСообщенияПользователю,
		КлючДанных, Поле, ПутьКДанным, Отказ, ЭтоОбъект);
	
		Сообщение.Сообщить();
	
КонецПроцедуры
#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти

