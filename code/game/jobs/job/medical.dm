/datum/job/cmo
	title = "Chief Biolab Overseer"
	flag = CBO
	head_position = 1
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL | COMMAND
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Nadezhda Council"
	difficulty = "Hard."
	selection_color = "#94a87f"
	req_admin_notify = 1
	also_known_languages = list(LANGUAGE_CYRILLIC = 10, LANGUAGE_SERBIAN = 5)
	wage = WAGE_COMMAND
	outfit_type = /decl/hierarchy/outfit/job/medical/cmo

	access = list(
		access_moebius, access_medical_equip, access_morgue, access_genetics, access_heads,
		access_chemistry, access_virology, access_cmo, access_surgery, access_RC_announce,
		access_keycard_auth, access_sec_doors, access_psychiatrist, access_eva, access_maint_tunnels,
		access_external_airlocks, access_paramedic, access_research_equipment
	)

	ideal_character_age = 40
	minimum_character_age = 30

	stat_modifiers = list(
		STAT_BIO = 50,
		STAT_MEC = 10,
		STAT_COG = 25
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/chem_catalog,
							 /datum/computer_file/program/reports)

	description = "Главный надзиратель биолаборатории является руководителем медицинского отделения Института Сотерия, который спасает и улучшает жизнь.<br>\
 Ваша главная обязанность состоит в том, чтобы сохранить жизнь всем, так как это является задачей вашего отдела. Приоритет здоровья по сравнению с большинством других проблем. . <br>\
br>\
    Под вашим командованием работают различные медицинские работники. Хотя эти роли четко определены по сравнению с областью исследований, направьте их соответствующим образом.<br>\
	 Конечно, помните, что вы сами врач - не стесняйтесь помогать с менее специализированными мероприятиями, чтобы облегчить всем жизнь..<br>\
	  Медицинское крыло также попадает в собственность Сотерии. Вы можете использовать их ресурсы - и они могут использовать ваши - по мере необходимости.."

	duties = "Направьте врачей под вашим руководством на благо всего человечества.<br>\
	Направляйте своих медработников на просьбы о помощи и доставайте трупы по мере необходимости.<br>\
	Используйте средства отдела для закупки медикаментов и оборудования по мере необходимости.<br>\
	Консультирование совета по медицинским вопросам, касающимся экипажа.<br>\
	Консультирование экипажа по этическим вопросам.<br>\
	Во времена ЧС заблокируйте мед бэй для защиты тех, кто находится внутри, от внешних угроз."

/obj/landmark/join/start/cmo
	name = "Chief Biolab Overseer"
	icon_state = "player-green-officer"
	join_tag = /datum/job/cmo

/datum/job/doctor
	title = "Soteria Doctor"
	flag = DOCTOR
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = MAP_FACTION
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Chief Biolab Overseer"
	difficulty = "Medium."
	selection_color = "#a8b69a"
	wage = WAGE_PROFESSIONAL
	also_known_languages = list(LANGUAGE_CYRILLIC = 10)
	minimum_character_age = 25

	outfit_type = /decl/hierarchy/outfit/job/medical/doctor

	access = list(
		access_moebius, access_medical_equip, access_morgue, access_surgery, access_chemistry, access_virology,
		access_genetics, access_maint_tunnels, access_external_airlocks, access_research_equipment
	)

	stat_modifiers = list(
		STAT_BIO = 40,
		STAT_COG = 10
	)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							/datum/computer_file/program/chem_catalog,
							/datum/computer_file/program/camera_monitor)

	description = "Доктор является профессиональным врачом и хирургом, который занимается лечением больных и раненых любой ценой..<br>\
	К вашим услугам широкий спектр медицинских процедур - диагностика, общее лечение, хирургия и вирусология..<br>\
От вас не ожидают быть экспертом во всем: специализация в области - это хорошо. Разделите задачи между коллегами под руководством надзирателя биолаборатории.<br>\
	Помните, что у химии есть специальный специалист. Избегайте этого отдела, если он не очень укомплектован.<br>\
	Из-за характера вашей работы вы можете оказаться в отделении для сменного большинства. Не отказывайтесь от пациентов."

	duties = "Исцеляйте больных и раненых, независимо от их жалоб.<br>\
		Диагностируйте болезни, предлагайте общие услуги, выполняйте операции или даже изучайте вирусы.<br>\
		Используйте химию, если химик недоступен."

/obj/landmark/join/start/doctor
	name = "Soteria Doctor"
	icon_state = "player-green"
	join_tag = /datum/job/doctor

/datum/job/chemist
	title = "Soteria Chemist"
	flag = CHEMIST
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Biolab Overseer"
	difficulty = "Medium."
	selection_color = "#a8b69a"
	wage = WAGE_PROFESSIONAL
	also_known_languages = list(LANGUAGE_CYRILLIC = 10)

	outfit_type = /decl/hierarchy/outfit/job/medical/chemist

	access = list(
		access_moebius, access_medical_equip, access_morgue, access_surgery, access_chemistry, access_virology
	)

	stat_modifiers = list(
		STAT_COG = 10,
		STAT_MEC = 10,
		STAT_BIO = 30
	)

	software_on_spawn = list(/datum/computer_file/program/chem_catalog,
							/datum/computer_file/program/scanner)

	description = "Химик - человек медицины и науки, смешивающий разноцветные жидкости, чтобы сделать другие столь же красочные, но более полезные жидкости.<br>\
	Ваша основная роль - роль фармацевта. Подготовьте лекарства для использования медицинским персоналом, чтобы они могли эффективно лечить самые разные заболевания..<br>\
	Ваша вторичная ответственность - ответственность производителя химикатов. Эффективно выполнять запросы для ваших коллег Soteria.<br>\
	Ваша третья обязанность - управлять торговым представителем по продаже химикатов Вы можете получить запросы от других колонистов, чтобы сделать кислоты, химические гранаты, дым, напалм, или, возможно, даже просто лекарства.<br>\
	Вы имеете полную лицензию на продажу любых химикатов всем колонистам. Если кто-то не является сотрудником Института Сотерия, взимайте с него плату за химические вещества.<br>\
	Стоит отметить, что у вас не всегда есть все, что вам нужно. Некоторые рецепты потребуют внешних ингредиентов - приобретите их, как вы можете."

	duties = "Смешайте лекарства для врачей.<br>\
		Поддерживать большой запас бикаридина, дексалина, перидаксона и алкисина.<br>\
		Выполните химические запросы для сотрудников Сотерии.<br>\
		Продавать химикаты и химические гранаты посторонним."

/obj/landmark/join/start/chemist
	name = "Soteria Chemist"
	icon_state = "player-green"
	join_tag = /datum/job/chemist

/datum/job/psychiatrist
	title = "Soteria Psychiatrist"
	flag = PSYCHIATRIST
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	wage = WAGE_PROFESSIONAL
	supervisors = "the Soteria Biolab Overseer"
	difficulty = "Easy To Medium."
	selection_color = "#a8b69a"
	also_known_languages = list(LANGUAGE_CYRILLIC = 10)

	outfit_type = /decl/hierarchy/outfit/job/medical/psychiatrist

	access = list(
		access_moebius, access_medical_equip, access_morgue, access_psychiatrist, access_chemistry
	)

	stat_modifiers = list(
		STAT_BIO = 25,
		STAT_COG = 15,
		STAT_VIG = 5
	)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							/datum/computer_file/program/chem_catalog,
							/datum/computer_file/program/camera_monitor)

	description = "Психиатр - врач, который помогает колонистам решать их различные проблемы.<br>\
	В некотором смысле вы профессиональный собеседник. Несмотря на знание передовых методов терапии, иногда простой разговор может творить чудеса.<br>\
	Более насыщенные дни могут включать в себя разделение особо нестабильных колонистов или опрос преступников по согласованию с Службой безопасности..<br>\
	Помните, что конфиденциальность пациента очень важна в вашей профессии. Храните конфиденциальную информацию между вами и пациентом."

	duties = "Поговорите со всеми, кто желает помочь, независимо от их ранга или отношения.<br>\
		Выписать лекарство и предложить курсы терапии для тех, кто в ней нуждается.<br>\
		Определите, подходят ли люди для работы или нет. Помогите тем, кто оказался непригодным."

/obj/landmark/join/start/psychiatrist
	name = "Soteria Psychiatrist"
	icon_state = "player-green"
	join_tag = /datum/job/psychiatrist


/datum/job/paramedic
	title = "Soteria Paramedic"
	flag = PARAMEDIC
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = MAP_FACTION
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Soteria Biolab Overseer"
	difficulty = "Medium."
	selection_color = "#a8b69a"
	wage = WAGE_LABOUR_HAZARD
	also_known_languages = list(LANGUAGE_CYRILLIC = 20, LANGUAGE_SERBIAN = 15)

	outfit_type = /decl/hierarchy/outfit/job/medical/paramedic
	access = list(
		access_moebius, access_medical_equip, access_morgue, access_surgery, access_paramedic,
		access_eva, access_maint_tunnels, access_external_airlocks
	)

	stat_modifiers = list(
		STAT_BIO = 25,
		STAT_TGH = 10,
		STAT_VIG = 10,
	)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							/datum/computer_file/program/chem_catalog,
							 /datum/computer_file/program/camera_monitor)

	description = "Фельдшер оказывает медицинскую помощь на местах, в то время как другие врачи заняты в своем отделении.<br>\
	Вы обучены, но вам не хватает стажа. Следуйте указаниям других врачей и доставьте пациентов обратно для специализированного лечения.<br>\
	Помните, что вы часто должны реагировать на чрезвычайные ситуации. Аккуратно соберите свое снаряжение и принесите инструмент для взлома - будьте готовы к работе в кратчайшие сроки.<br>\
	Ваши другие обязанности включают перевозку пациентов между комнатами, выполнение поручений и, как правило, экономию времени для других врачей..<br>\
	Восстановление трупа также может входить в ваши обязанности. Если тело находится в опасном месте, вам стоит заручиться поддержкой Blackshield Militia."

	duties = "Реагируйте на вызовы бедствия и извлекайте раненых из опасных ситуаций.<br>\
	Следите за монитором экипажа на предмет признаков травм или смерти и реагируйте соответственно.<br>\
	Гуляйте по отделам, проверяйте состояния экипажа. Администрируйте первую помощь на месте по мере необходимости.<br>\
	В более спокойное время извлекайте трупы мертвых.<br>\
	Выполняйте поручения для сотрудников медбэя, действуйте как его руки за пределами медбэя."

/obj/landmark/join/start/paramedic
	name = "Soteria Paramedic"
	icon_state = "player-green"
	join_tag = /datum/job/paramedic

