# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create({name: 'Гарниры', position: 1})
Category.create({name: 'Крупы', position: 2})
Category.create({name: 'Котлеты', position: 3})
Category.create({name: 'Птица', position: 4})

kinoa = Dish.create({name: 'Киноа с белыми грибами', time_for_cook: 60, instructions: 'Сушёные грибы
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
  в конце приготовления добавить мелко нарезанную зелень а в непостном варианте — натёртый сыр.'})
kurinue_kotletu = Dish.create({name: 'Куриные котлеты', time_for_cook: 50, instructions: 'Куриные грудки очистите от
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
    ароматная начинка — вот чего мы добивались! Приятного аппетита.', appliances_used: 'Мясорубка, блендер, духовка'})
components = Component.create([{dish: kinoa, amount: 50, measure_unit: 'г', ingredient: 'Белые грибы сушеные'},
  {dish: kinoa, amount: 3, measure_unit: 'шт.', ingredient: 'Чеснок дольки'},
  {dish: kinoa, amount: 350, measure_unit: 'г', ingredient: 'Киноа'},
  {dish: kinoa, amount: 1, measure_unit: 'шт.', ingredient: 'Лук репчатый'},
  {dish: kinoa, amount: 40, measure_unit: 'мл', ingredient: 'Оливковое масло'},
  {dish: kinoa, amount: 1, measure_unit: 'ч.л.', ingredient: 'Соль'},
  {dish: kurinue_kotletu, amount: 800, measure_unit: 'г', ingredient: 'Куриная грудка'},
  {dish: kurinue_kotletu, amount: 100, measure_unit: 'мл', ingredient: 'Сливки 20-22%'},
  {dish: kurinue_kotletu, amount: 0.5, measure_unit: 'ч.л.', ingredient: 'Перец черный молотый'},
  {dish: kurinue_kotletu, amount: 20, measure_unit: 'г', ingredient: 'Укроп'},
  {dish: kurinue_kotletu, amount: 1, measure_unit: 'шт.', ingredient: 'Чеснок дольки'},
  {dish: kurinue_kotletu, amount: 50, measure_unit: 'г', ingredient: 'Сливочное топленое масло'},
  {dish: kurinue_kotletu, amount: 100, measure_unit: 'г', ingredient: 'Хлеб пшеничный'},
  {dish: kurinue_kotletu, amount: 1, measure_unit: 'ч.л.', ingredient: 'Соль'},
  {dish: kurinue_kotletu, amount: 100, measure_unit: 'г', ingredient: 'Сливочное масло'},
  {dish: kurinue_kotletu, amount: 20, measure_unit: 'г', ingredient: 'Петрушка'},
  {dish: kurinue_kotletu, amount: 4, measure_unit: 'ст.л.', ingredient: 'Сухари панировочные'}])

image_path1 = "#{Rails.root}/app/assets/images/kinoa.jpg"
image_file1 = File.new(image_path1)
image_path2 = "#{Rails.root}/app/assets/images/kurinue-kotletu.jpg"
image_file2 = File.new(image_path2)

attachments = Attachment.create([{:image => ActionDispatch::Http::UploadedFile.new(
    :filename => File.basename(image_file1),
    :tempfile => image_file1,
    # detect the image's mime type with MIME if you can't provide it yourself.
    :type => MIME::Types.type_for(image_path1).first.content_type),
    :position => 1, :dish => kinoa},
    {:image => ActionDispatch::Http::UploadedFile.new(
        :filename => File.basename(image_file2),
        :tempfile => image_file2,
        # detect the image's mime type with MIME if you can't provide it yourself.
        :type => MIME::Types.type_for(image_path2).first.content_type),
        :position => 1, :dish => kurinue_kotletu}])
