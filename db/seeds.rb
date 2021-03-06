# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users_dict = {
        Anthony: 'anthony@gmail.com',
        Max: 'max@yahoo.com',
        Ann: 'ann@gmail.com',
        Regina: 'regina@hey.com',
        Cartman: 'cart@man.com',
        Erik: 'erik@yandex.com'
}
users_dict.each do |k, v|
        User.create username: k, email: v
end


Article.create(
        title: 'Данные досок Trello тысяч российских компаний попали в открытый доступ',
        text: "Корпоративная информация нескольких сотен крупных компаний и нескольких тысяч организаций поменьше оказалась в открытом доступе. Все эти данные были размещены на досках бесплатного онлайн-менеджера проектов Trello. В настоящее время поисковики индексируют почти миллион публичных досок Trello. Около 9 тысяч из них содержат конфиденциальную информацию, в том числе, логины и пароли, говорят аналитики Infosecurity a Softline company. Соотнести данные не представляет труда, так как обычно название компании присутствует в имени доски, либо среди ее задач. Сервисом Trello пользуются как малый и средний бизнес, так и банки. Гендиректор infosecurity Кирилл Солодовников считает, что утечка стала результатом небрежности сотрудников компании.",
        user_id: 1
)

Comment.create(
        author: 'Anthony',
        body: 'Ну вероятно Трелло это не лучшее место для хранения личных, а уже тем более корпоративных доступов.',
        article_id: 1,
        user_id: 1
)

Comment.create(
        author: 'Max',
        body: 'а как дела у других приложений?',
        article_id: 1,
        user_id: 2
)

Comment.create(
        author: 'Ann',
        body: 'А где связь? Какое-то объяснение? Бесплатное небезопасно? Пора выбрасывать свои сервера на дебиане?',
        article_id: 1,
        user_id: 3
)

Comment.create(
        author: 'Cartman',
        body: 'А данные не российских кампаний не попадают в открытый доступ на Trello или как? При чем тут страна вообще?',
        article_id: 1,
        user_id: 5
)


Article.create(
        title: 'В Госдуму внесен законопроект о хранении операторами связи логов по всем сообщениям и медиафайлам пользователей 3 года',
        text: "19 апреля 2021 года Правительство внесло в Госдуму законопроект № 1154099-7 о внесении изменений в Федеральный закон «О связи». В случае его принятия владельцы технологических сетей связи и операторы связи будут обязаны хранить информацию о передаче через интернет сообщений и медиафайлов между пользователями в течение трех лет, а также предоставлять любые данные из этого архива по требованию правоохранительных органов.",
        user_id: 2
)

Comment.create(
        author: 'Erik',
        body: 'Мы всё еще в ТОП-10 стран с самым дешевым интернетом. Депутаты, уж не оплошайте в этот раз, даёшь интернет по 5 т.р.',
        article_id: 2,
        user_id: 6
)

Comment.create(
        author: 'Max',
        body: 'а вот то дерьмо яровой это не предполагает? там вроде вообще про весь трафик было не? кто-нибудь объясните им там про шифрование или если они вкрусе скажите что нельзя так бездарно пилить бюджет на госзакупках и нормально эта история закончится не может.',
        article_id: 2,
        user_id: 2
)

Comment.create(
        author: 'Regina',
        body: 'Заголовок: «В Госдуму внесен законопроект о хранении операторами связи всех сообщений и медиафайлов пользователей 3 года». Цитата из документа: «Хранение на территории Российской Федерации информации о фактах приема, передачи, доставки и (или) обработки голосовой информации, текстовых сообщений, изображений, звуков, видео- или иных сообщений лиц, использующих технологические сети связи, собственники или иные владельцы которых имеют номер автономной системы, для приема и передачи голосовой информации, текстовых сообщений, изображений, звуков, видео- или иных сообщений, — в течение трех лет с момента окончания осуществления таких действий.». Т.е. храним не информацию, а логи.',
        article_id: 2,
        user_id: 4
)

Article.create(
        title: 'Непрофессиональные астрономы открыли новую особенность процесса формирования звёзд',
        text: 'Участники проекта гражданской науки Zooniverse нашли подтверждение тому, что у процесса формирования новых звёзд есть характерная стадия, на которую раньше профессиональные астрономы не обращали внимание. Эта стадия получила прозвище «жёлтый шар» из-за характерного цвета на инфракрасных снимках неба. Zooniverse — проект гражданской науки, ставший развитием проекта Galaxy Zoo. Он позволяет любителям науки участвовать в современных научных исследованиях в области астрономии и климатологии. Это краудсорсинговый проект, позволяющий любым желающим помочь учёным сортировать и каталогизировать собранные данные. В отличие от проектов по предоставлению лишней вычислительной мощности своих компьютеров, типа SETI@Home, эта инициатива предполагает участие в работе самих пользователей. Во многих вопросах искусственный интеллект уже опережает людей, но часто человеческое восприятие оказывается более полезным. Внимание к «жёлтым шарам» на снимках привлёк один из пользователей проекта "Млечный Путь", одного из многих проектов сервиса Zooniverse. Он задал вопрос о природе странных жёлтых пятен, видных на снимках, ещё в 2011 году. В итоге эти объекты начали пристально изучать, специально искать на снимках, и в течение нескольких лет составили каталог из 6176 подобных объектов, о чём рассказывается в опубликованной недавно работе.',
        user_id: 6
)

Comment.create(
        author: 'Regina',
        body: 'Вместо того, чтобы в датасайнсе задрачивать рейтинг на Каггле, можно звёздочки на небе искать, классно же!',
        article_id: 3,
        user_id: 4
)

Article.create(
        title: 'Россия откажется от МКС в пользу собственной орбитальной станции',
        text: "Вице-премьер Юрий Борисов сообщил, что на совещании с президентом в День космонавтики было решено отказаться от использования Международной космической станции и создать собственную. По его словам, Россия предупредит всех партнеров о выходе из МКС с 2025 года. Для осуществления полетов в дальний космос создадут транспортно-энергетический комплекс с ядерной энергодвигательной установкой. Ее разработку ведут с 2010 года.

По словам Борисова, ситуация со старением конструкции существующей МКС может привести к катастрофе, и Россия «не может подвергать угрозе жизни космонавтов».

В проекте, как отмечает чиновник, смогут принять участие и другие страны, если изъявят желание. Борисов заявил, что новая станция может расположиться выше МКС.

Также на совещании были одобрены планы пилотируемых полетов на Луну и миссии на Марс.

В Роскосмосе пояснили, что согласованный с партнерами по МКС срок работы завершается в 2024 году. Далее решение будут принимать, исходя из технического состояния модулей станции и развертывания собственной. Космическое агентство отмечает, что российские модули МКС, в основном, уже выработали свой срок службы.

После того, как решение по выходу из МКС будет принято, начнутся переговоры с партнерами об условиях и формах взаимодействия.

Создание российской альтернативы МКС обсуждается с 2017 года. При этом в Роскосмосе отмечали, что отечественный сегмент МКС останется на станции и продолжит работать после 2024 года, так как способен функционировать автономно.

Первый модуль МКС «Заря» вывели на орбиту в 1998 году. Он должен был проработать около 20 лет. в Еще в прошлом году в рабочем отсеке модуля «Звезда» обнаружили утечку кислорода. Одновременно выходила из строя система «Электрон-ВМ», которая установлена в модуле и работает на МКС с 2005 года. Проблемы на модуле возникали также с туалетом, пылесосом и подогревателем пищи.

В апреле Роскосмос сообщил, что успешно завершились заводские испытания нового модуля «Наука». Его готовятся запустить в июле.",
        user_id: 5
)


Comment.create(
        author: 'Ann',
        body: 'Неужели не понятно что к 25 году нашу часть мкс надо будет просто затопить, а новой нет. И не будет. Некому ее уже создавать. Не может же великая держава обосраться у всех на глазах! Вот поэтому проще сказать — мы пошли к себе делать свое, правда делать свое так же некому, да и там никому не нужно на самом деле.',
        article_id: 4,
        user_id: 3
)

Comment.create(
        author: 'Anthony',
        body: 'Либо продать. Спасибо, подметили очередной распил уже и там. А ведь даже и не понял что они это значит тендер объявили. Да писали бы сразу как в письмах взлома Навального почтовика — пацаны, кто сколько даст до 2025. ЗЫ: это писец на самом деле.',
        article_id: 4,
        user_id: 1
)

Comment.create(
        author: 'Anthony',
        body: 'Знаете, смотрю я на то, как "Восточный" строят и надеюсь, что от создания МКС откажутся. Иначе сольют десятки миллиардов рублей с нулевым выхлопом.',
        article_id: 4,
        user_id: 1
)

Comment.create(
        author: 'Max',
        body: 'Пока в роскосмосе есть Рогозин шансы на реализацию плана являются крайне сомнительными',
        article_id: 4,
        user_id: 2
)


Article.create(
        title: 'НАСА опубликовало видео первого полета марсианского вертолета «Индженьюити», сделанное марсоходом',
        text: "19 апреля 2021 года специалисты лаборатории реактивного движения NASA (Jet Propulsion Laboratory, JPL) показали видео первого тестового полета марсианского вертолета «Индженьюити».

НАСА уточнило, что вертолет «Индженьюити», согласно данным телеметрии, поднялся на планируемую максимальную высоту 10 футов (3 метра) и удерживал режим стабильного парения в течение 30 секунд. Затем он снизился и коснулся поверхности Марса после 39,1 секунды полета.НАСА объявило, что присвоило название марсианскому аэродрому, на котором проходил полет вертолета «Индженьюити». Это историческое место на Марсе теперь называется «Поле братьев Райт», в знак признания их изобретательности и новаторства, а также в честь объединения события 117 летней давности на Земле — первого полета братьев Райт и сегодняшнего полета «Индженьюити» на Марсе в 470 миллионах километрах от Земли.

19 апреля 2021 года марсианский вертолет «Индженьюити» успешно совершил свой первый тестовый автономный полет.

В будущих планах НАСА — масштабировать марсианский вертолет до транспортного средства весом около 25-30 кг, который сможет перенести около 4 кг научной полезной нагрузки.",
        user_id: 6
)


Comment.create(
        author: 'Max',
        body: 'Где пыль от нисходящего потока?',
        article_id: 5,
        user_id: 2
)

Comment.create(
        author: 'Anthony',
        body: 'Сэкономили на CGI, видимо заказывали графику у студентов, забыли добавить на посте. Надо написать в NASA, а то на весь мир косячат.',
        article_id: 5,
        user_id: 1
)

Comment.create(
        author: 'Erik',
        body: 'Может, сдута ещё в процессе предыдущих проверок что винты работают? Его же, насколько помню, запускали уже для проверки систем несколько дней назад. Только без взлёта, прокрутили винты.',
        article_id: 5,
        user_id: 6
)

Article.create(
        title: 'WordPress обсуждает отключение Google FLoC на веб-сайтах',
        text: 'WordPress объявил, что рассматривает новую технологию отслеживания FLoC от Google как проблему безопасности и может заблокировать ее по умолчанию на своих сайтах. FLoC не будет работать в будущих версиях программного обеспечения для ведения блогов.

WordPress заявляет, что добавит параметр, который позволит администраторам разрешать FLoC, но по умолчанию функция будет отключена.

Блокировку отслеживания внедрят в версию WordPress 5.8, выпуск которой запланирован на июль 2021 года. Поскольку ожидается, что FLoC развернут раньше, WordPress рассматривает возможность внедрить код в более ранние версии.

Ранее DuckDuckGo выпустил расширение Privacy Essentials для Chrome, которое блокирует спорную функцию. Разработчики указывают на то, что FLoC работает против конфиденциальности, потому что распределяет пользователей по группам «на основе истории просмотров, и любой веб-сайт может получить идентификатор FLoC этой группы для таргетинга и фингерпринтинга».

FLoC также не будет поддерживаться в браузере Vivaldi.

Brave удалил FLoC из всех выпусков браузера.

Технологию начали ограниченно тестировать в марте. Она использует алгоритмы машинного обучения для анализа пользовательских данных, а затем объединяет пользователей в группы из тысяч человек на основе предпочтений каждого ее отдельного участника. При этом, как утверждает Google, данные, собранные локально из браузера, никому не передаются. Однако ряд организаций, поддерживающих конфиденциальность, уже выступили против ее внедрения.',
        user_id: 2
)

Comment.create(
        author: 'Erik',
        body: 'Удалите этот пост, он абсолютно не соответствует действительности.
WordPress ничего не объявлял и ничего не собирается делать. Этот пост — proposal (вы ведь знаете, что означает это слово?) от одного случайного человека.',
        article_id: 6,
        user_id: 6
)

Comment.create(
        author: 'Ann',
        body: 'А потом придут коммерсы и сеошники, которые за плюшки и аналитику… увы, гугл имеет достаточно рычагов давления, чтобы все "добровольно" включили это.',
        article_id: 6,
        user_id: 3
)

Comment.create(
        author: 'Regina',
        body: 'На WordPress работает около половины сайтов в интернете. Такой шаг со стороны WordPress приведёт к тому, что Chrome будет игнорировать заголовок Permissions-Policy: interest-cohort=().',
        article_id: 6,
        user_id: 4
)

Article.create(
        title: 'Евразийский экономический союз ищет нарушения конкуренции в поисковой выдаче',
        text: 'Как рассказали «Ведомостям» в Департаменте антимонопольного регулирования Евразийской экономической комиссии (ЕЭК), ведомство расследует недобросовестную конкуренцию в рекламе, которая отображается в поисковых выдачах.

Вокруг поисковиков вырастают экосистемы и их владельцы этим пользуются, говорят в ведомстве. Его эксперты хотят проанализировать рынок и нарушения правил конкуренции.

ЕЭК — антимонопольный орган Евразийского экономического союза (ЕАЭС). В него входят Россия, Армения, Белоруссия, Казахстан и Киргизия. Чтобы проанализировать ситуацию с рекламой в поисковой выдаче, представители ЕЭК встретились с представителями профильных ассоциаций, рекламодателей и участников рынка. Среди них есть и компании, «уже сталкивавшиеся с дискриминацией со стороны цифровых экосистем».

Ранее вопрос конкуренции в поисковой выдаче привлекал внимание российской антимонопольной службы. Она начала проверку «Яндекса» после того, как на его поисковик пожаловались ivi, Avito, «Циан», 2ГИС и другие компании.

Заявители утверждали, что «Яндекс» в поисковой выдаче отдавал приоритет своим сервисам. ФАС согласилась с этим доводом и потребовала, чтобы поисковик до 1 апреля перестал давать своим объявлениям приоритет. Поисковик не исправил нарушения в срок и против компании завели дело, грозящее штрафом.

Новое расследование не связано напрямую с делом ФАС в отношении «Яндекса», но оно подстегнуло интерес ведомства к этой теме. Также внимание на рекламу в поисковой выдаче экосистем обратили из-за европейских расследований в отношении владельцев поисковиков.',
        user_id: 3
)

Comment.create(
        author: 'Regina',
        body: 'Почему бы ЕЭК не сделать свой поисковик?, самый правильный на планете.',
        article_id: 7,
        user_id: 4
)


Article.create(
        title: 'ФАС возбудила дело против Google из-за YouTube',
        text: '19 апреля 2021 года Федеральная антимонопольная служба (ФАС) России объявила о возбуждении в отношении Google дела из-за доминирующего положения YouTube.

ФАС установила, что сервис видеохостинга без причин и без должного обоснования, а также по своему усмотрению проводит внезапные блокировки, удаляет аккаунты и закрывает доступ к контенту российских пользователей.

ФАС пояснила, что «правила, связанные с формированием, приостановлением, блокировками аккаунтов и обращения контента пользователей на Youtube являются непрозрачными, необъективными и непредсказуемыми».

ФАС считает, что действия Google и YouTube «приводят к ущемлению интересов пользователей, а также к ограничению конкуренции на смежных рынках». В рамках изучения материалов по этому делу специалисты ФАС проведут оценку действий Google на предмет доминирования и изучат их последствия для российских пользователей и авторов контента.

16 апреля 2021 года представители Google пообещали депутатам Госдумы, что компания, включая все ее сервисы, готова работать в российском правовом поле.

13 апреля 2021 года ФАС объявила о возбуждении в отношении «Яндекса» дела за неисполнение предупреждения о прекращении преимущественного продвижения собственных сервисов в поисковой выдаче при помощи специального инструмента «колдунщики».

2 апреля 2021 года «Газпром-медиа» перезапустила видеосервис Rutube — российский аналог YouTube получил новый интерфейс, а авторы теперь могут там монетизировать контент.',
        user_id: 3
)

Comment.create(
        author: 'Anthony',
        body: 'ФАС на РуТруп не хочет возбудиться?',
        article_id: 8,
        user_id: 1
)

Comment.create(
        author: 'Max',
        body: 'Весеннее обострение государственных дупел объявляется открытым',
        article_id: 8,
        user_id: 2
)

Comment.create(
        author: 'Regina',
        body: 'А если серьёзно, есть альтернативные площадки, с вменяемым качеством и нормальным api, которые в среднесрочной перспективе способны заменить youtube после его блокировки?',
        article_id: 8,
        user_id: 4
)

Comment.create(
        author: 'Erik',
        body: 'Понимаю, что вопрос риторический, но если вдруг посмотреть серьёзно, то откуда им, этим площадкам, взяться? Это миллиарды (сотни миллиардов?) баксов только на датацентры с жёсткими дисками, где видосики хранить, не говоря уж про софт, ценой в миллионы человекочасов.',
        article_id: 8,
        user_id: 6
)

Comment.create(
        author: 'Cartman',
        body: 'ФАС лучше бы вышла на рынок и поинтересовалась, почему помидоры везде по 200р. продают? Перед рынком ларьки — помидоры 200р., на рынке во всех лотках помидоры 200р., за рынком пара магазинов — помидоры 200р. Никакого сговора да? \'Свободный рынок\'',
        article_id: 8,
        user_id: 5
)

Comment.create(
        author: 'Cartman',
        body: 'Нет. Нат RuTube нужно смотреть рекламу «дома 2» а потом сдавать тест по рекламе и только после этого дают смотреть контент.',
        article_id: 8,
        user_id: 5
)


Article.create(
        title: 'В ядро Linux добавили начальную поддержку процессоров Apple M1',
        text: 'В ветку for-next (для 5.13) включили патч arm/apple-m1 (79 коммитов), в котором реализована начальная поддержка ARM-процессоров Apple M1.

Мобильные процессоры M1 настолько превосходят конкурентов по производительности и энергоэффективности, что представляются лучшим вариантом для разработчика. В ноябре 2020 года Линус Торвальдс сказал: «Я бы очень хотел такой компьютер. Я уже давно жду ARM-ноутбук, который может работать под управлением Linux. Новый Air почти идеален, за исключением операционной системы. И у меня нет ни времени возиться с этим, ни желания бороться с компаниями, которые не хотят помогать». Даже с ограничением на количество оперативной памяти 16 ГБ он готов мириться, но только не с проприетарной системой. Поэтому нужна нативная поддержка Linux.

Энтузиасты из проекта Asahi Linux реализовали первоначальную поддержку M1 на уровне операционной системы. Более подробно о сделанных изменениях основатель проекта Гектор "marcan" Мартин рассказывал в феврале, когда подготовил патч для включения в ядро. С тех пор список функций не изменился: с февраля по апрель продолжалась чистка кода и исправление багов, говорит один из авторов.Поддержка M1 в ядре — отличная новость. Возможно, в будущем Apple наладит выпуск CPU для других сборщиков компьютерной техники. Тогда можно будет купить ноутбук с Linux на процессоре M1, но без яблока на корпусе.

Сейчас на рынке довольно много ноутбуков и планшетов с процессорами ARM, которые поддерживают Linux, но ни один из них не может сравниться по характеристикам с M1 (4+4 ядра), а тем более с 12-ядерным M1X или 16-ядерным M2 (12+4) — будущими процессорами Apple, производство которых запланировано на фабриках TSMC в 2021?2022 годах.

Например, вот некоторые ориентировочные характеристики M2:

техпроцесс 4 нм
16 ядер;
12 высокопроизводительных ядер;
4 энергоэффективных ядра;
рост производительности до 4 раз по сравнению с М1;
массовое производство в конце 2022 года.

Начальная поддержка

Хотя Linux уже технически загружается на M1, но мы ещё очень далеки от того, чтобы вставить загрузочную USB-флэшку и нажать кнопку установки. Текущий код включает в себя поддержку только самых базовых низкоуровневых функций, таких как симметричная многопроцессорность с помощью спин-таблиц, обработка IRQ, последовательные порты и фреймбуфер. Linux может загрузиться только в командную строку, пока нет поддержки GUI. В то время как Asahi Linux улучшает официальную поддержку для процессоров M1, другие разработчики пытаются решить задачу другими способами. Например, компания-разработчик средств виртуализации Corellium представила сборку Ubuntu на M1 Mac Mini. Но значительная часть работы Corellium не войдёт в ядро Linux.
В своём блоге Corellium пишет, что архитектура M1 отличается от других процессором ARM: «Здесь загрузчик iBoot загружает исполняемый объектный файл в формате Mach-O в подписанный формат оболочки на основе ASN.1, называемый IMG4. Для сравнения, обычный Linux на 64-битной ARM загружается с плоского бинарника… Словно этого недостаточно, Apple разработала собственный контроллер прерываний Apple Interrupt Controller (AIC), не совместимый ни с одним из основных стандартов ARM GIC. И не только это: прерывания таймера, которые обычно соответствуют нормальному прерыванию в CPU, вместо этого направляются в FIQ, заумную архитектурную функцию, которая чаще встречалась в старые 32-битные времена ARM». Чипсет Apple M1 в настоящее время используется в MacBook Air, MacBook Pro и Mac Mini. Это пятинанометровый чип с восемью ядрами: четыре высокопроизводительных ядра и четыре энергоэффективных. Встроен нейронный движок для задач машинного обучения и восьмиядерный GPU.

К счастью, M1 полностью поддерживает загрузку неподписанных/пользовательских ядер, поэтому запуск Linux не требует использования каких-то недокументированных функций, которые Apple могла бы исправить в будущем.

На протяжении многих лет Apple подвергается критике за отказ от некоторых открытых стандартов в пользу проприетарных альтернатив. Например, macOS по-прежнему не поддерживает кросс-платформенный Vulkan API для графики, только собственный Metal API.

Поддержка Apple SoC в свободной операционной системе — непростая задача. Apple не предлагает никакой документации и ничем не помогает в решении этой задачи, поэтому процесс идёт через реверс-инжиниринг железа и написание драйверов с нуля. И это особенно сложно, учитывая наличие GPU, а без первоклассной графической поддержки Asahi не может предложить первоклассный опыт работы с Linux на оборудовании M1.

Внесение в ветку for-next на самом деле не гарантирует, что работа Asahi попадёт в ядро Linux 5.13. Всегда есть вероятность, что Линусу Торвальдсу что-то не понравится и он отфутболит код в Linux 5.14 в ожидании необходимых изменений. С другой стороны, патч уже получил одобрение более 20 разработчиков ядра, так что бан со стороны Линуса маловероятен, считает Ars Technica.

Невозможно угадать, сколько потребуется разработчикам, чтобы провести реверс-инжиниринг M1 GPU и написать качественный опенсорсный драйвер. Предстоит очень большая работа, и вряд ли Apple здесь поможет сообществу. Возможно, это вообще непосильная задача, и пока Мартин с единомышленниками будут её решать, выйдет М2, и придётся начинать с начала.',
        user_id: 5
)

Comment.create(
        author: 'Anthony',
        body: 'С GPU всё не так плохо, как может показаться из последнего абзаца. Буквально вчерашняя запись о прогрессе — rosenzweig.io/blog/asahi-gpu-part-3.html',
        article_id: 9,
        user_id: 1
)

Comment.create(
        author: 'Max',
        body: 'Давайте уж определимся: мы тут новости пишем или слухи разносим?',
        article_id: 9,
        user_id: 2
)

Comment.create(
        author: 'Ann',
        body: '"В будущем" — это где-то между высадкой человека на Марс и окончанием строительства сферы Дайсона?',
        article_id: 9,
        user_id: 3
)


Article.create(
        title: 'Роскомнадзор впервые заблокировал сайт крупной аптечной сети',
        text: 'По информации издания «Ведомости», Роскомнадзор заблокировал сервис по онлайн-торговле лекарствами Superapteka.ru. Причина применения жестких ограничений — осуществление сервисом онлайн-продаж рецептурных препаратов. По законодательству РФ в настоящее время это делать запрещено.

Cервис по онлайн-торговле лекарствами Superapteka.ru принадлежит одной из крупнейших аптечных сетей в стране – ГК «Эркафарм». В настоящее время этот портал доступен через VPN, но в некоторых VPN-сервисах происходит ошибка соединения (ERR_CONNECTION_CLOSED).

РКН внес ресурс Superapteka.ru в реестр запрещенных сайтов по заявлению Росздравнадзора от 19 марта 2021 года.

Представитель РКН пояснил изданию «Ведомости», что ранее администрации сайта были направлены уведомление о необходимости удалить объявления о дистанционной торговле рецептурными лекарствами. Владельцы портала не выполнили требования регулятора.

«Ведомости» уточнило, что замгендиректор ГК «Эркафарм» отрицает обвинения РКН и считает действия регулятора необоснованными, так как на портале не продавались рецептурные лекарства. Компания будет опротестовывать решение Роскомнадзора.

Эксперты издания «Ведомости» рассказали, что это первый случай блокировки сайта крупной аптечной компании. Ранее РКН ограничивал доступ к небольшим сайтам, где предлагалась доставка лекарств без рецептов. В прошлом году генпрокуратура РФ расследовала действия «Сбер еаптеки» и Ozon, которые продавали безрецептурные, когда это было еще не разрешено, и даже рецептурные лекарства. В отношении этих компаний расследования были прекращены из-за отсутствия нарушений.',
        user_id: 6
)

Comment.create(
        author: 'Ann',
        body: 'Это аптека отключила сайт или таки РКН сумел дотянулся?',
        article_id: 10,
        user_id: 3
)

Comment.create(
        author: 'Anthony',
        body: 'Через оперу впн всё открывается, у автора какой-то впн от РНК, наверное.',
        article_id: 10,
        user_id: 1
)

Comment.create(
        author: 'Max',
        body: 'То чувство когда строгость законов смягчается необязательностью их исполнения, и сайт открывается без всяких проксей и впнов ',
        article_id: 10,
        user_id: 2
)

Comment.create(
        author: 'Ann',
        body: 'Просто проверяли VPN\'ом с обоими концами в России, видимо.',
        article_id: 10,
        user_id: 3
)

Comment.create(
        author: 'Regina',
        body: 'Хостеров не заставляют пока блочить сайты согласно списка РКН, грубо говоря wget superapteka.ru на сервере в российском ДЦ должен без проблем загрузить этот сайт',
        article_id: 10,
        user_id: 4
)

Comment.create(
        author: 'Cartman',
        body: 'Это только в том случае, если фильтрация не выполняется у магистрального провайдера.',
        article_id: 10,
        user_id: 5
)

Comment.create(
        author: 'Erik',
        body: 'Вероятно, защита от DDOS фолсит.
У меня есть несколько машин по миру, если делать тоннель через одну из них, на хостинге Aruba, иногда бывает отказ от соединения на стороне серверов',
        article_id: 10,
        user_id: 6
)

Comment.create(
        author: 'Max',
        body: 'Хорошо, а если у человека есть рецепт и он хочет купить это лекарство онлайн? По моему специалистов Роскомпозора в детстве роняли на пол… дважды….
У меня есть несколько машин по миру, если делать тоннель через одну из них, на хостинге Aruba, иногда бывает отказ от соединения на стороне серверов',
        article_id: 10,
        user_id: 2
)

Comment.create(
        author: 'Anthony',
        body: 'Хорошо, а если у человека нет рецепта и он хочет купить это лекарство онлайн?',
        article_id: 10,
        user_id: 1
)

Comment.create(
        author: 'Max',
        body: 'Тут вопрос в том, что из себя представляет онлайн, в случае аптек «онлайн» часто заключается в том, чтобы собрать заказ и доставить в определённый аптечный пункт, а дальше покупатель ногами идёт и забирает+оплачивает заказ. Там на месте вам точно также фармацевт откажет в покупке, если нет рецепта и всё.',
        article_id: 10,
        user_id: 2
)

Comment.create(
        author: 'Ann',
        body: 'В Москве некоторые аптеки доставляют до квартиры. Много раз заказывал.',
        article_id: 10,
        user_id: 3
)

Comment.create(
        author: 'Regina',
        body: 'У данной онлайн аптеки есть доставка в разные аптеки(физические) и курьером на дом.
Сам десятки раз покупал лекарства без рецепта, хотя должны требовать.',
        article_id: 10,
        user_id: 4
)
Comment.create(
        author: 'Cartman',
        body: 'Самое смешное что аптекам вообще ПОФИГ на рецепты.
Банально физраствор в ампулах — рецептурный препарат.
У меня за сотни раз покупки этого препарата в 3 десятках аптек ни разу никто не спрашивал.
Я молчу о других лекарствах, типа метотрексата, который ну совсем не физраствор.',
        article_id: 10,
        user_id: 5
)

Article.create(
        title: 'JetBrains открывает базовую кафедру на факультете компьютерных наук НИУ ВШЭ',
        text: 'Базовая кафедра JetBrains будет поддерживать новую специализацию “Средства анализа и разработки программного обеспечения” для студентов 3-4 курса бакалаврской программы “Программная инженерия”. Планируется, что первый набор на специализацию состоится уже в 2021-2022 учебном году. Также преподаватели кафедры будут вести несколько факультативов: “Язык Kotlin”, “Неклассические логики” — и практические занятия по программированию для первокурсников.',
        user_id: 4
)