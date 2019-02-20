Процедура ОбработкаПроведения(Отказ, Режим)
	Движения.ОтветственныеФормаС.Записывать = Истина;
	Движение = Движения.ОтветственныеФормаС.Добавить();
	Движение.Пользователь = ПараметрыСеанса.ТекущийПользователь;
	Движение.Документ = Ссылка;
	Движение.Дата = ТекущаяДата();
	Запрос = Новый Запрос;
	Запрос.Текст = "ВЫБРАТЬ
	|	СоздателиФормаС.Документ КАК Документ
	|ИЗ
	|	РегистрСведений.СоздателиФормаС КАК СоздателиФормаС
	|ГДЕ
	|	СоздателиФормаС.Документ = &Ссылка";
	
	Запрос.УстановитьПараметр("Ссылка",Ссылка );
	Результат = Запрос.Выполнить();
	Если Результат.Пустой() Тогда 
		движения.СоздателиФормаС.Записывать = Истина;
		Движение = Движения.СоздателиФормаС.Добавить();
		Движение.Пользователь = ПараметрыСеанса.ТекущийПользователь;
		Движение.Документ = Ссылка;
		Движение.Дата = ТекущаяДата();	
	КонецЕсли;
	Движения.СвязьДанныеСОППрилетВылет.Записывать = Истина;
	Движение = Движения.СвязьДанныеСОППрилетВылет.Добавить();
	Движение.ПрилетВылет = Документ;
	Движение.ПассажирыВзрослые = ПассажирыВзрослые;
	Движение.ПассажирыДети = ПассажирыДети;
	Движение.ПассажирыМалыши = ПассажирыМалыши;
	Движение.РучнаяКладь = РучнаяКладь;
	Движение.Багаж = Багаж;
	Движение.Почта = Почта;
	Движение.Груз = Груз;
	Движение.VIPПассажирыВзрослые = VIPПассажирыВзрослые;
	Движение.VIPПассажирыДети = VIPПассажирыДети;
КонецПроцедуры
