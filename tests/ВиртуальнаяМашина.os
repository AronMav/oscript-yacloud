#Использовать asserts
#Использовать ".."
#Использовать "../src/internal"

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	ВсеТесты = Новый Массив;
	ВсеТесты.Добавить("ТестДолжен_ПроверитьФормированиеВМСЗаданнымПубличнымАдресом");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьФормированиеВМСДинамическимПубличнымАдресом");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьФормированиеВМБезПубличногоАДреса");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьФормированиеВМСЗаданнымПубличнымАдресомИДинамическим");
	Возврат ВсеТесты;
КонецФункции

Процедура ПередЗапускомТеста() Экспорт
КонецПроцедуры

Процедура ПослеЗапускаТеста() Экспорт
КонецПроцедуры

Процедура ТестДолжен_ПроверитьФормированиеВМСЗаданнымПубличнымАдресом() Экспорт

	ВиртуальнаяМашинаYC = Новый ВиртуальнаяМашинаYC("redmine");
	Команда = РаботаСКомандами.СформироватьКомандуСозданияВМ(ВиртуальнаяМашинаYC.Имя(), "./yacloud/tests/linux0.xml");
	ЗаготовкаКоманды = "yc compute instance create --no-user-output --format json --name redmine --metadata-from-file user-data=metadataLinux.yaml --zone ru-central1-a --memory 4 --cores 4 --core-fraction 5 --preemptible --create-boot-disk name=bootdisk,type=network-hdd,size=10,image-folder-id=standard-images,image-family=redmine --network-interface subnet-name=default-ru-central1-a,address=10.128.0.10,nat-address=130.193.39.49";

	Ожидаем.Что(
		Команда,
		"Ожидаем, что команда будут выполнимой"
	).Равно(ЗаготовкаКоманды);

КонецПроцедуры

Процедура ТестДолжен_ПроверитьФормированиеВМСДинамическимПубличнымАдресом() Экспорт
	
	ВиртуальнаяМашинаYC = Новый ВиртуальнаяМашинаYC("redmine");
	Команда = РаботаСКомандами.СформироватьКомандуСозданияВМ(ВиртуальнаяМашинаYC.Имя(), "./yacloud/tests/linux1.xml");
	ЗаготовкаКоманды = "yc compute instance create --no-user-output --format json --name redmine --metadata-from-file user-data=metadataLinux.yaml --zone ru-central1-a --memory 4 --cores 4 --core-fraction 5 --preemptible --create-boot-disk name=bootdisk,type=network-hdd,size=10,image-folder-id=standard-images,image-family=redmine --network-interface subnet-name=default-ru-central1-a,address=10.128.0.10,nat-ip-version=ipv4";

	Ожидаем.Что(
		Команда,
		"Ожидаем, что команда будут выполнимой"
	).Равно(ЗаготовкаКоманды);
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьФормированиеВМБезПубличногоАДреса() Экспорт
	
	ВиртуальнаяМашинаYC = Новый ВиртуальнаяМашинаYC("redmine");
	Команда = РаботаСКомандами.СформироватьКомандуСозданияВМ(ВиртуальнаяМашинаYC.Имя(), "./yacloud/tests/linux2.xml");
	ЗаготовкаКоманды = "yc compute instance create --no-user-output --format json --name redmine --metadata-from-file user-data=metadataLinux.yaml --zone ru-central1-a --memory 4 --cores 4 --core-fraction 5 --preemptible --create-boot-disk name=bootdisk,type=network-hdd,size=10,image-folder-id=standard-images,image-family=redmine --network-interface subnet-name=default-ru-central1-a,address=10.128.0.10";

	Ожидаем.Что(
		Команда,
		"Ожидаем, что команда будут выполнимой"
	).Равно(ЗаготовкаКоманды);
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьФормированиеВМСЗаданнымПубличнымАдресомИДинамическим() Экспорт

	ВиртуальнаяМашинаYC = Новый ВиртуальнаяМашинаYC("redmine");
	Команда = РаботаСКомандами.СформироватьКомандуСозданияВМ(ВиртуальнаяМашинаYC.Имя(), "./yacloud/tests/linux3.xml");
	ЗаготовкаКоманды = "yc compute instance create --no-user-output --format json --name redmine --metadata-from-file user-data=metadataLinux.yaml --zone ru-central1-a --memory 4 --cores 4 --core-fraction 5 --preemptible --create-boot-disk name=bootdisk,type=network-hdd,size=10,image-folder-id=standard-images,image-family=redmine --network-interface subnet-name=default-ru-central1-a,address=10.128.0.10,nat-address=130.193.39.49";

	Ожидаем.Что(
		Команда,
		"Ожидаем, что команда будут выполнимой"
	).Равно(ЗаготовкаКоманды);

КонецПроцедуры