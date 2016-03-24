# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{name: 'Гарниры'},{name: 'Крупы', category: 'Гарниры'},
  {name: 'Котлеты'},{name: 'Птица', category: 'Котлеты'}])
measureunits = MeasureUnit.create([{standard_name: 'г', nonstandard_name: 'oz', quantity_in_standard: 28.3},
  {standard_name: 'г'}, {standard_name: 'шт.'}, {standard_name: 'мл'},
  {standard_name: 'ч.л.'}, {standard_name: 'ст.л.'}])
ingredients = Ingredient.create([{name: 'Белые грибы сушеные', measure_unit: 'г'},
  {name: 'Чеснок дольки', measure_unit: 'шт.'},
  {name: 'Киноа', description: 'Плоды считаются фруктами, так как учёные относят киноа к псевдозерновым культурам,
    белые, жёлтые или красные, собранные в длинные, вьющиеся вдоль стеблей гроздья.',
    alternative_name: 'кинва, квинойя', measure_unit: 'г'}, {name: 'Лук репчатый', measure_unit: 'шт.'},
    {name: 'Оливковое масло', measure_unit: 'мл'}, {name: 'Соль', measure_unit: 'ч.л.'},
    {name: 'Куриная грудка', measure_unit: 'г'}, {name: 'Сливки 20-22%', measure_unit: 'мл'},
    {name: 'Перец черный молотый', measure_unit: 'ч.л.'}, {name: 'Укроп', measure_unit: 'г'},
    {name: 'Сливочное топленое масло', measure_unit: 'г'}, {name: 'Хлеб пшеничный', measure_unit: 'г'},
    {name: 'Соль', measure_unit: 'ч.л.'}, {name: 'Сливочное масло', measure_unit: 'г'},
    {name: 'Петрушка', measure_unit: 'г'}, {name: 'Сухари панировочные', measure_unit: 'ст.л.'}])
dishes = Dish.create([{name: 'Киноа с белыми грибами', time_for_cook: '1 час', instructions: 'Сушёные грибы
  замочите в холодной воде (около 500-700 мл) на час. Этого времени должно хватить, чтобы они
  полностью смягчились. Лук и чеснок мелко нарежьте. В глубокой сковороде или воке нагрейте
  оливковое масло, добавьте лук и чеснок, готовьте на среднем огне до мягкости и прозрачности.
  Грибы выньте из жидкости, нарежьте. Слегка обжарьте грибы с луком и чесноком.
  Киноа очень хорошо промойте тёплой водой. Без промывания крупа может слегка горчить, также, как пшено.
  Промытую киноа добавьте в сковороду, перемешайте.
  Грибную воду аккуратно перелейте в другую емкость, посолите и доведите до кипения.
  Переливать воду нужно потому, что если в грибах был песок, то он останется на дне кастрюли,
  в которой замачивались грибы. Добавьте жидкость в сковороду с киноа так, чтобы она покрыла крупу.
  Готовьте на среднем огне около 20 минут, пока вся жидкость не впитается. Киноа должна стать
  полупрозрачной и увеличиться в объеме. В конце накройте сковороду крышкой, выключите огонь
  и оставьте так на 10 минут, чтобы добиться более рассыпчатой консистенции.
  Этот рецепт хорошо поддается модернизации: можно дополнить лук и чеснок морковью и стеблевым
  сельдереем, приправить любимыми специями (например, такими, которые вы добавили бы к рису),
  в конце приготовления добавить мелко нарезанную зелень а в непостном варианте — натёртый сыр.'},
  {name: 'Куриные котлеты', time_for_cook: '50 мин', instructions: 'Куриные грудки очистите от
    жилок и пленок, нарежьте на небольшие кусочки. Даже если у вас хорошая мясорубка, не стоит лениться.
    Сделайте из мяса фарш с помощью мясорубки. Следите, чтобы мясо измельчалось равномерно и
    не сок не выдавливался из него. Хорошая мясорубка отлично справляется с этой задачей.
    У подсохшего хлеба срежьте корки и замочите его в сливках. Хлеб придаст нужную
    структуру и мягкость, а сливки сдобрят суховатое мясо куриной грудки.
    Посолите, поперчите фарш. Измельчите в мясорубке замоченный хлеб, не отжимая его,
    добавьте к куриному фаршу и тщательно перемешайте. Фарш должен быть однородным и пластичным.
    Накройте миску пленкой и уберите в холодильник на полчаса.
    Для начинки понадобится сливочное масло. Можно сделать котлеты с обычным маслом,
    но лучше приготовить ароматное «зелёное». Для этого размягчённое (не растопленное!)
    сливочное масло смешайте с хорошо измельчённой зеленью укропа и петрушки и чесноком.
    Удобно делать это в блендере. Заморозьте ароматизированное масло, чтобы его можно было резать.
    Возьмите порцию фарша, сделайте из него лепёшку, в середину положите кусочек зелёного масла.
    Тщательно залепите края лепёшки и сформируйте котлету. Чтобы избежать преждевременное вытекание
    масла по время жарки, обваляйте котлету в сухарях (их можно сделать из подсушенного хлеба),
    обмакните в слегка взбитое яйцо и снова запанируйте в сухарях. Чтобы панировка лучше держалась,
    можно положить готовые котлеты в морозилку на 15-20 минут.
    В сковороде с достаточным количеством масла обжарьте котлеты с обеих сторон до образования
    золотистой корочки. В это же время разогрейте духовку до 190-200 градусов.
    Обжаренные котлеты переложите на противень, застеленный бумагой для выпечки,
    доведите в духовке до готовности. Если котлеты были не замороженными, это займет минут 15,
    если вы их замораживали, увеличьте время приготовления до 25-30 минут в зависимости от размера.
    Готовые котлеты подавайте сразу же, горячими. Хрустящая золотистая корочка, нежное мясо и
    ароматная начинка — вот чего мы добивались! Приятного аппетита.', appliances_used: 'Мясорубка, блендер, духовка'}])
components = Component.create([{dish: 'Киноа с белыми грибами', amount: 50, units: 'г', ingredient: 'Белые грибы сушеные'},
  {dish: 'Киноа с белыми грибами', amount: 3, units: 'шт.', ingredient: 'Чеснок дольки'},
  {dish: 'Киноа с белыми грибами', amount: 350, units: 'г', ingredient: 'Киноа'},
  {dish: 'Киноа с белыми грибами', amount: 1, units: 'шт.', ingredient: 'Лук репчатый'},
  {dish: 'Киноа с белыми грибами', amount: 40, units: 'мл', ingredient: 'Оливковое масло'},
  {dish: 'Киноа с белыми грибами', amount: 1, units: 'ч.л.', ingredient: 'Соль'},
  {dish: 'Куриные котлеты', amount: 800, units: 'г', ingredient: 'Куриная грудка'},
  {dish: 'Куриные котлеты', amount: 100, units: 'мл', ingredient: 'Сливки 20-22%'},
  {dish: 'Куриные котлеты', amount: 0.5, units: 'ч.л.', ingredient: 'Перец черный молотый'},
  {dish: 'Куриные котлеты', amount: 20, units: 'г', ingredient: 'Укроп'},
  {dish: 'Куриные котлеты', amount: 1, units: 'шт.', ingredient: 'Чеснок дольки'},
  {dish: 'Куриные котлеты', amount: 50, units: 'г', ingredient: 'Сливочное топленое масло'},
  {dish: 'Куриные котлеты', amount: 100, units: 'г', ingredient: 'Хлеб пшеничный'},
  {dish: 'Куриные котлеты', amount: 1, units: 'ч.л.', ingredient: 'Соль'},
  {dish: 'Куриные котлеты', amount: 100, units: 'г', ingredient: 'Сливочное масло'},
  {dish: 'Куриные котлеты', amount: 20, units: 'г', ingredient: '	Петрушка'},
  {dish: 'Куриные котлеты', amount: 4, units: 'ст.л.', ingredient: 'Сухари панировочные'}])

image_path1 = "#{Rails.root}/home/luba/Documents/ruby/cookbook/app/assets/images/kinoa.jpg"
image_file1 = File.new(image_path1)
image_path2 = "#{Rails.root}/home/luba/Documents/ruby/cookbook/app/assets/images/kurinue-kotletu.jpg"
image_file2 = File.new(image_path2)

attachments = Attachment.create([{:image => ActionDispatch::Http::UploadedFile.new(
    :filename => File.basename(image_file1),
    :tempfile => image_file1,
    # detect the image's mime type with MIME if you can't provide it yourself.
    :type => MIME::Types.type_for(image_path1).first.content_type),
    :position => 1, :dish => 'Киноа с белыми грибами'},
    {:image => ActionDispatch::Http::UploadedFile.new(
        :filename => File.basename(image_file2),
        :tempfile => image_file2,
        # detect the image's mime type with MIME if you can't provide it yourself.
        :type => MIME::Types.type_for(image_path2).first.content_type),
        :position => 1, :dish => 'Куриные котлеты'}])
