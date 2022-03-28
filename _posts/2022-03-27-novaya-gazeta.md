---
title: Novaya Gazeta
layout: post
tags:
- politics
- web-archive
- censorship
- war
---

On March 4 the Russian newspaper [Novaya Gazeta] announced that it would be discontinuing its coverage of the war in Ukraine after the Kremlin criminalized reporting on the topic:

> Russia's Novaya Gazeta newspaper, whose editor Dmitry Muratov was a co-winner
> of last year's Nobel Peace Prize, said on Friday it would remove material on
> Russia's military actions in Ukraine from its website because of censorship.
> The newspaper said it would continue to report on the consequences that
> Russia is facing, including a deepening economic crisis and the persecution
> of dissidents. -- [Reuters]

Novaya Gazeta had to choose between completely shutting down or starting to censor their own news coverage. Doing otherwise would mean their reporters would be risking imprisonment or worse (seven of their journalists have been murdered since 2000).

So how has this new law shaped Navaya Gazeta's reporting?

The Internet Archive's Wayback Machine has good [archival coverage] of Novaya Gazeta [novayagazeta.ru]. The Internet Archive's [CDX API] is a web service that allows you to programmatically query the archive to see what article URLs existed *prior* to the crackdown. So it should be a simple matter of testing each URL in the list to see if it's available on the web right?

It turns out it's a little bit trickier than that, but basically yes. Keep reading if you are interested in learning how to use the Wayback Machine to find removed content, and what 95 of the removed Novaya Gazeta articles are.

### Article URLs

First of all there are many types of resources from the novayagazeta.ru website stored in the Internet Archive. The CDX API lets you limit by a URL prefix, date and also the content type, to hone in on pages instead of images, video, JavaScript or CSS.

The Novaya Gazeta has been around for almost 30 years, so there is a lot of content in the Internet Archive that is no longer on the novayagazeta.ru website because of site redesigns, CMS changes, etc. So it's important to look at *recently* archived content, for example from 2020 onwwards.

```python
import wayback
import datetime

wb = wayback.WaybackClient()

# search Wayback for archived HTML pages at novayagazeta.ru
results = wb.search(
    url='https://novayagazeta.ru/articles/',
    matchType='prefix',
    from_date=datetime.date(2020, 1, 1),
    filter_field='mimetype:text/html'
)

# collect the unique URLs that are found
urls = set()
for record in results:
    urls.add(record.url)
```

When I ran this today it yielded 64,146 URLs. Each article URL looks something like:

```text
https://novayagazeta.ru/articles/2022/03/19/minoborony-rf-vpervye-zaiavilo-o-primenenii-giperzvukovogo-oruzhiia-v-khode-boevykh-deistvii-v-ukraine-news
```

It's possible to narrow this list down further by removing URLs that have tracking parameters in a query string. It's also possible to limit to articles that were published in 2022. This reduces the list that needs to be checked to 2,875 URLs. You an see [this Jupyter notebook] for the details.

### Missing Articles

Checking if the URL is available or not on the live novayagazeta.ru
website is not as simple as it could be. Usually a webserver will respond with
a [404 Not Found] when it is asked for a page that it doesn't know about. But it
appears that novayagazeta.ru responds with with a [200 OK] message even when the
page is not found. This is actually not that unusual on the web, and is one of
the reasons why research into [linkrot] is so tricky.

To make matters worse the HTML that the server responds with doesn't contain a *not found* message. The page is dynamically generated--it contains JavaScript code that needs to be executed which then in turn creates the not found message you see in your browser:

<a href="https://novayageta.ru/articles/thisdoesntexit"><img class="img-responsive" src="/images/novaya-gazeta-404.png"></a>

So in order to check these URLs it's necessary to use a browser that will execute the JavaScript and then look for the "page missing" text in the *rendered* page. Since I was working in a Jupyter notebook I opted to use the [pyppeteer] library to drive a headless Chromium browser to visit each URL, and then look to see if the page had the missing message in it.

```python
import pyppeteer

async def check(urls):
    missing = []
    browser = await pyppeteer.launch()
    page = await browser.newPage()
    for url in urls:
        await page.goto(url, {'waitUntil': 'networkidle2'})
        content = await page.evaluate('document.body.textContent', force_expr=True)
        is_missing = 'Ошибка. Похоже, вы перешли по неправильной ссылке. Попробуйте найти материал через поиск на сайте или сообщите нам через ctrl+enter, если что-то сломалось.' in content
        if is_missing:
            missing.append(url)
    await browser.close()
    return missing

results = await check(urls)
```

Running this found 196 articles (6.8%) which were no longer available on the novayagazeta.ru website. To further understand these it is possible to use a similar technique with the browser to look up these 196 URLs to find the Wayback Machine URL to view the archived page, and to extract the title from the page. This yielded [these results]:

<script src="https://gist.github.com/edsu/ad63b15d644e34cd6e54273ef529cbf5.js"></script>

### Missing Archives

One thing that pops out when you scroll the table over and look at the title column is that "Новая Газета - novayagazeta.ru" repeats for 63 of them. For example:

[https://web.archive.org/web/20220111140927/https://novayagazeta.ru/articles/2022/01/11/espch-pri](http://web.archive.org/web/20220111140927/https://novayagazeta.ru/articles/2022/01/11/espch-pri)

These are incomplete archival snapshots where only part of the page was archived. This highlights why quality assurance is such a difficult and labor intensive part of web archiving practice.

In addition there are 31 rows where the `wayback_url` is empty. For example:

[https://web.archive.org/web/20220306115321/https://novayagazeta.ru/articles/2022/02/24/my-budem-stremitsia-k-demilitarizatsi](https://web.archive.org/web/20220306115321/https://novayagazeta.ru/articles/2022/02/24/my-budem-stremitsia-k-demilitarizatsi)

These are cases where the only snapshot in the Internet Archive appeared to be the missing pages. The snapshot wasn't created in time before it was removed. Or, perhaps in some cases the URL never existed on the Novaya Gazeta website. It's hard to say which without looking in other web archives.

### The List

So, that was a bit more work than expected, but here is a final list of 95 articles from the Novaya Gazeta website published in 2022 that appear to have been removed. The big caveat here is that this is not a complete list, because not all the articles may have been archived by the Internet Archive, and my analysis only looked at articles published in 2022 (perhaps older articles have been removed as well). Novaya Gazeta are the only ones who know the real list of removed articles.

1. [«Кричать от боли все будут на одном языке»: более тысячи российских медиков потребовали прекратить войну с Украиной](https://web.archive.org/web/20220226103728/https://novayagazeta.ru/articles/2022/02/26/krichat-ot-boli-vse-budut-na-odnom-iazyke-bolee-tysiachi-rossiiskikh-medikov-potrebovali-prekratit-voinu-s-ukrainoi-news)
2. [Юлия Латынина: Мир просто разделится на свободных — и нас Какая часть Украины останется свободной — зависит от украинских войск. Но для России, боюсь, все кончено](https://web.archive.org/web/20220224171820/https://novayagazeta.ru/articles/2022/02/24/iuliia-latynina-mir-prosto-razdelitsia-na-svobodnyi-mir-i-nas)
3. [Зеленский: российские войска пытаются захватить Чернобыльскую АЭС](https://web.archive.org/web/20220224171703/https://novayagazeta.ru/articles/2022/02/24/zelenskii-rossiiskie-voiska-pytaiutsia-zakhvatit-chernobylskuiu-aes-news)
4. [«Русские солдаты, не стреляйте!» Спецвыпуск «Продолжение следует» — с журналистами из Киева](https://web.archive.org/web/20220228230905/https://novayagazeta.ru/articles/2022/02/27/russkie-soldaty-ne-streliaite)
5. [Более 500 тысяч человек потребовали остановить войну с Украиной](https://web.archive.org/web/20220225152310/https://novayagazeta.ru/articles/2022/02/25/bolee-500-tysiach-chelovek-potrebovali-ostanovit-voinu-s-ukrainoi-news)
6. [Нейтралитет не означает смотреть в другую сторону Впервые в своей истории нейтральная Швейцария присоединилась к санкциям против воюющего государства](https://web.archive.org/web/20220304105843/https://novayagazeta.ru/articles/2022/03/04/neitralitet-ne-oznachaet-smotret-v-druguiu-storonu)
7. [Второй день войны. Краткие итоги Российские войска уже под Киевом, Запад объявил новую порцию санкций, Путин предложил ВСУ «брать власть» в Украине, Зеленский назвал число погибших](https://web.archive.org/web/20220225222038/https://novayagazeta.ru/articles/2022/02/25/vtoroi-den-voiny-kratkie-itogi)
8. [На Запорожской АЭС начался пожар в ходе военных действий между Россией и Украиной. Это крупнейшая атомная станция Европы](https://web.archive.org/web/20220304025612/https://novayagazeta.ru/articles/2022/03/04/na-zaporozhskoi-aes-nachalsia-pozhar-v-khode-voennykh-deistvii-mezhdu-rossiei-i-ukrainoi-news)
9. [Евросоюз нарушил свои табу Он будет поставлять Украине оружие и военное снаряжение из Европейского фонда мира](https://web.archive.org/web/20220228165313/https://novayagazeta.ru/articles/2022/02/28/evrosoiuz-narushil-svoi-tabu)
10. [Вы знаете, как называется происходящее. День шестой. Главное Бабий яр под обстрелом, «Дождь» и «Эхо Москвы» заблокированы, Харьков бомбят, в России начали признавать потери](https://web.archive.org/web/20220301223415/https://novayagazeta.ru/articles/2022/03/01/vy-znaete-kak-nazyvaetsia-proiskhodiashchee-den-shestoi-glavnoe)
11. [Путин наступает на Украину. День девятый. Онлайн Запорожская АЭС загорелась после обстрелов, Борис Джонсон созывает экстренное заседание Совбеза ООН](https://web.archive.org/web/20220304034716/https://novayagazeta.ru/articles/2022/03/04/putin-nastupaet-na-ukrainu-den-deviatyi-onlain)
12. [«Путин — посмертный политический проект» Писатель Дмитрий Быков об Украине и ее будущем](https://web.archive.org/web/20220301193419/https://novayagazeta.ru/articles/2022/03/01/putin-posmertnyi-politicheskii-proekt)
13. [«Апокалипсис» — это книга со счастливым концом Священник Андрей Кордочкин — о кровопролитии в Украине, сострадании и надежде ](https://web.archive.org/web/20220301141745/https://novayagazeta.ru/articles/2022/03/01/apokalipsis-eto-kniga-so-schastlivym-kontsom)
14. [«Я против этой войны»: Навальный на суде в колонии выступил против проведения Путиным «спецоперации» в «ЛДНР»](https://web.archive.org/web/20220224142413/https://novayagazeta.ru/articles/2022/02/24/ia-protiv-etoi-voiny-navalnyi-na-sude-v-kolonii-vystupil-protiv-provedeniia-putinym-spetsoperatsii-v-ldnr-news)
15. [Молодые и голодные Репортаж из Армянска на крымской границе с Украиной](https://web.archive.org/web/20220301150932/https://novayagazeta.ru/articles/2022/03/01/molodye-i-golodnye)
16. [Харьков и села возле Чернигова попали под обстрел «Градами» и фугасными бомбами. Десятки погибли и ранены](https://web.archive.org/web/20220228153255/https://novayagazeta.ru/articles/2022/02/28/kharkov-i-sela-vozle-chernigova-popali-pod-obstrel-gradami-i-fugasnymi-bombami-desiatki-pogibli-i-raneny-news)
17. [Спецоперация головного мозга](https://web.archive.org/web/20220301193313/https://novayagazeta.ru/articles/2022/03/01/spetsoperatsiia-golovnogo-mozga)
18. [«В Администрации президента сказали, что этим не занимаются» Мать российского пленного пытается вернуть сына домой](https://web.archive.org/web/20220228172457/https://novayagazeta.ru/articles/2022/02/28/v-administratsii-prezidenta-skazali-chto-etim-ne-zanimaiutsia)
19. [«В России предпочитают думать, что войны нет» Опросы показывают — россияне войны не хотят.  Но при этом большинство одобряет воинственные жесты Путина и фразу «можем повторить»](https://web.archive.org/web/20220224171916/https://novayagazeta.ru/articles/2022/02/24/v-rossii-predpochitaiut-dumat-chto-voiny-net)
20. [«Здесь школа! Дети и мирные люди! Российские солдаты, не стреляйте!» Что происходит в Киеве на третьи сутки вторжения](https://web.archive.org/web/20220226055959/https://novayagazeta.ru/articles/2022/02/26/zdes-shkola-deti-i-mirnye-liudi-rossiiskie-soldaty-ne-streliaite)
21. [«Где Авель, брат твой?» О русских солдатах и зимне-весенней кампании 2022 года](https://web.archive.org/web/20220303092026/https://novayagazeta.ru/articles/2022/03/03/gde-avel-brat-tvoi)
22. [Владимир Зеленский подтвердил взрыв на территории Бабьего Яра](https://web.archive.org/web/20220301170654/https://novayagazeta.ru/articles/2022/03/01/vladimir-zelenskii-podtverdil-vzryv-na-territorii-babego-iara-news)
23. [Путин объявил «спецоперацию» в Украине. Онлайн Зеленский разорвал дипотношения с Москвой, российское Минобороны отчиталось об уничтожении 11 украинских аэродромов](https://web.archive.org/web/20220224040451/https://novayagazeta.ru/articles/2022/02/24/putin-obiavil-spetsoperatsiiu-v-ukraine-onlain)
24. [Никто ничего не сдает Украина подвергается беспрецедентной российской агрессии, но не делает ни шагу назад. Репортаж из Киева](https://web.archive.org/web/20220226095806/https://novayagazeta.ru/articles/2022/02/25/nikto-nichego-ne-sdaet)
25. [Непогрешимый сапог Антивоенный протест хотят поставить вне закона ](https://web.archive.org/web/20220304104422/https://novayagazeta.ru/articles/2022/03/04/nepogreshimyi-sapog)
26. [Алгоритмы войны Как могут развиваться военные действия между Россией и Украиной](https://web.archive.org/web/20220224181725/https://novayagazeta.ru/articles/2022/02/24/algoritmy-voiny)
27. [Больницы в Белгороде перестали принимать гражданских пациентов. Их перепрофилируют для российских военных](https://web.archive.org/web/20220301220647/https://novayagazeta.ru/articles/2022/03/01/bolnitsy-v-belgorode-perestali-prinimat-grazhdanskikh-patsientov-ikh-pereprofiliruiut-dlia-rossiiskikh-voennykh-news)
28. [Теперь Новое времяисчисление от Физраствора в «Новой газете»](https://web.archive.org/web/20220301131455/https://novayagazeta.ru/articles/2022/03/01/teper)
29. [«Войне нет оправданий»: российские журналисты выступили против «спецоперации» в Украине](https://web.archive.org/web/20220224134057/https://novayagazeta.ru/articles/2022/02/24/voine-net-opravdanii-rossiiskie-zhurnalisty-vystupili-protiv-spetsoperatsii-v-ukraine-news)
30. [Путин наступает на Украину. День шестой. Онлайн Обстрелы украинской территории, изоляция России](https://web.archive.org/web/20220301040043/https://novayagazeta.ru/articles/2022/03/01/putin-nastupaet-na-ukrainu-den-shestoi-onlain)
31. [«Люди проводят день и ночь в бомбоубежищах» Собкор «Новой» о ситуации в Киеве](https://web.archive.org/web/20220301193423/https://novayagazeta.ru/articles/2022/03/01/liudi-provodiat-den-i-noch-v-bomboubezhishchakh)
32. [«Интеллектуал в России сегодня не может позволить себе молчать» Владимир Мирзоев. Монолог для «Новой газеты»](https://web.archive.org/web/20220226120355/https://novayagazeta.ru/articles/2022/02/26/monolog-dlia-novoi)
33. [Путин наступает на Украину. День восьмой. Онлайн](https://web.archive.org/web/20220303130549/https://novayagazeta.ru/articles/2022/03/03/putin-nastupaet-na-ukrainu-den-vosmoi-onlain)
34. [Роскоморуэлл О несуществующей грани между «войной» и «военной операцией»](https://web.archive.org/web/20220226142034/https://novayagazeta.ru/articles/2022/02/26/roskomoruell)
35. [Новая газета - Novayagazeta.ru](https://web.archive.org/web/20220111140927/https://novayagazeta.ru/articles/2022/01/11/espch-pri)
36. [Первая жертва «Новичка» Как находки в убийстве банкира Кивелиди раскрывают отравление Навального: подкаст](https://web.archive.org/web/20220121061433/https://novayagazeta.ru/articles/2022/01/20/pervaia-zhertva-novichka)
37. [«Это не та история, когда человек мечтал пойти воевать» Спецкор «Новой» — о российском пленном из Мурманской области: видео](https://web.archive.org/web/20220301193249/https://novayagazeta.ru/articles/2022/03/01/eto-ne-ta-istoriia-kogda-chelovek-mechtal-poiti-voevat)
38. [Плюс денацификация всей страны Война миров от Физраствора в «Новой газете»](https://web.archive.org/web/20220226110456/https://novayagazeta.ru/articles/2022/02/26/plius-denatsifikatsiia-vsei-strany)
39. [Йди та дивись Війна розв'язана за кілька годин однією людиною. Шлях до миру стане випробуванням для кожного з нас](https://web.archive.org/web/20220224171935/https://novayagazeta.ru/articles/2022/02/24/idi-ta-divis)
40. [«Стыд, мрак и преступление» Голоса людей, которые вышли на антивоенную акцию. Подкаст «Что Нового?»](https://web.archive.org/web/20220225094329/https://novayagazeta.ru/articles/2022/02/25/styd-mrak-i-prestuplenie)
41. [Марина Влади: «Остановите этот ужас!»](https://web.archive.org/web/20220228185054/https://novayagazeta.ru/articles/2022/02/28/marina-vladi-ostanovite-etot-uzhas)
42. [«Готовы ли мы платить кровавую цену за гуманизм?» Писатель Дмитрий Данилов — о том, почему мы не сопротивляемся государственному насилию](https://web.archive.org/web/20220301193220/https://novayagazeta.ru/articles/2022/03/01/gotovy-li-my-platit-krovavuiu-tsenu-za-gumanizm)
43. [«Ночью мои дети идут в домик Феи — прятаться с игрушками в ванной комнате» Как Киев провел выходные при круглосуточном комендантском часе, и что происходит в городах и селах «ДНР»](https://web.archive.org/web/20220228055701/https://novayagazeta.ru/articles/2022/02/28/nochiu-moi-deti-idut-v-domik-fei-priatatsia-s-igrushkami-v-vannoi-komnate)
44. [Иди и смотри Война развязана за несколько часов одним человеком. Путь к миру станет испытанием для каждого из нас](https://web.archive.org/web/20220224154642/https://novayagazeta.ru/articles/2022/02/24/idi-i-smotri)
45. [Более 100 мундепов из разных городов России выступили с осуждением «спецоперации» в отношении Украины](https://web.archive.org/web/20220224103204/https://novayagazeta.ru/articles/2022/02/24/bolee-100-mundepov-iz-raznykh-gorodov-rossii-vystupili-s-osuzhdeniem-spetsoperatsii-v-otnoshenii-ukrainy-news)
46. [Дмитрий Быков. Остров Змеиный «Угодил я на остров Змеиный, а с него отступления нет»](https://web.archive.org/web/20220226133355/https://novayagazeta.ru/articles/2022/02/26/dmitrii-bykov-ostrov-zmeinyi)
47. [Слава гипножабе!. «Футурама» возвращается после 10-летнего перерыва. Тест на знание вселенной Мэтта Грейнинга](https://web.archive.org/web/20220219142519/https://novayagazeta.ru/articles/2022/02/19/slava-gipnozhabe/result/aab3238922bcc25a6f606eb525ffdc56)
48. [«В автозаке коллектив был чудный!» Просто вдумайтесь: в Петербурге блокадницу задержали на митинге против войны. «Новая» с ней поговорила](https://web.archive.org/web/20220227155931/https://novayagazeta.ru/articles/2022/02/27/v-avtozake-kollektiv-byl-chudnyi)
49. [За что будем платить и стоит ли оно того? О цене военной спецоперации в Украине для российских потребителей](https://web.archive.org/web/20220228204633/https://novayagazeta.ru/articles/2022/02/28/za-chto-budem-platit-i-stoit-li-ono-togo)
50. [Зеленский заявил о 6000 погибших россиян в результате боевых действий в Украине. Минобороны РФ не раскрывает данные о потерях](https://web.archive.org/web/20220302135041/https://novayagazeta.ru/articles/2022/03/02/zelenskii-zaiavil-o-6000-pogibshikh-rossiian-v-rezultate-boevykh-deistvii-v-ukraine-minoborony-rf-ne-raskryvaet-dannye-o-poteriakh-news)
51. [Путин ведет войну с Украиной. День второй. Онлайн Роскомнадзор пытается частично ограничить доступ к Facebook, членство России в Совете Европы приостановили](https://web.archive.org/web/20220225025659/https://novayagazeta.ru/articles/2022/02/25/putin-nachal-voinu-s-ukrainoi-den-vtoroi-onlain)
52. [«Оставьте в покое мою Украину…» Публикуем стихи известного киевского поэта Александра Кабанова — о войне, которой пропитан воздух](https://web.archive.org/web/20220227160202/https://novayagazeta.ru/articles/2022/02/27/ostavte-v-pokoe-moiu-ukrainu)
53. [«Они там будут» Лукашенко утверждает, что если будет нужно России и Беларуси, то белорусские войска тоже придут в Украину](https://web.archive.org/web/20220224171741/https://novayagazeta.ru/articles/2022/02/24/oni-tam-budut)
54. [«За украинцев переживаем. И за солдатиков наших больше всего» Не война, а «спецоперация» проходит насквозь старинный русский город Рыльск](https://web.archive.org/web/20220227170536/https://novayagazeta.ru/articles/2022/02/27/za-ukraintsev-perezhivaem-i-za-soldatikov-nashikh-bolshe-vsego)
55. [Путин ведет войну с Украиной. День четвертый. Онлайн Отключение российских банков от SWIFT, взрывы и обстрелы в городах Украины](https://web.archive.org/web/20220227032255/https://novayagazeta.ru/articles/2022/02/27/putin-vedet-voinu-s-ukrainoi-den-chetvertyi-onlain)
56. [«Я не знаю, как можно не выступать против войны» Россияне, уже выступившие с антивоенными заявлениями, рассказывают, почему молчать сейчас — страшнее, чем говорить ](https://web.archive.org/web/20220224171859/https://novayagazeta.ru/articles/2022/02/24/ia-ne-znaiu-kak-mozhno-ne-vystupat-protiv-voiny)
57. [Более 160 лауреатов Нобелевской премии призвали Россию прекратить военные действия в Украине](https://web.archive.org/web/20220302024214/https://novayagazeta.ru/articles/2022/03/02/bolee-160-laureatov-nobelevskoi-premii-prizvali-rossiiu-prekratit-voennye-deistviia-v-ukraine-news)
58. [«Мы ищем молитву, которая считает войну преступлением» Слово священнику Алексею Уминскому](https://web.archive.org/web/20220227230518/https://novayagazeta.ru/articles/2022/02/27/my-ishchem-molitvu-kotoraia-schitaet-voinu-prestupleniem)
59. [Антивоенные протесты в России. Фотографии Вечером 24 февраля в российских городах прошли массовые акции против войны с Украиной. Задержано 1816 человек*](https://web.archive.org/web/20220225084242/https://novayagazeta.ru/articles/2022/02/25/antivoennye-protesty-v-rossii-fotografii)
60. [«У Росії вважають за краще думати, що війни немає» Опитування демонструють — росіяни війни не хочуть. Але при цьому більшість схвалює войовничі жести Путіна та фразу «можемо повторити»](https://web.archive.org/web/20220224171923/https://novayagazeta.ru/articles/2022/02/24/u-rosiyi-vvazhaiut-za-krashche-dumati-shcho-viini-nemaie)
61. [Солдат Иванов О пленном из Мурманской области, в существование которого не хотят верить](https://web.archive.org/web/20220228132117/https://novayagazeta.ru/articles/2022/02/28/soldat-ivanov)
62. [Почему это стало возможным Реквием по государству Российскому](https://web.archive.org/web/20220225185727/https://novayagazeta.ru/articles/2022/02/25/pochemu-eto-stalo-vozmozhnym)
63. [«Мама, я тебя люблю, если будет похоронка, не верь сразу» Как попадали на «спецоперацию» российские солдаты. И что это за солдаты](https://web.archive.org/web/20220228185455/https://novayagazeta.ru/articles/2022/02/28/mama-ia-tebia-liubliu-esli-budet-pokhoronka-ne-ver-srazu)
64. [Они не врут. Они так думают Вы полагаете, что все это не всерьез? Вот все это: «ядерный пепел», ракеты, летящие во Флориду…](https://web.archive.org/web/20220228193739/https://novayagazeta.ru/articles/2022/02/28/oni-ne-vrut-oni-tak-dumaiut)
65. [Третий день без перемен Операция на Украине в свете сообщений Министерства обороны России](https://web.archive.org/web/20220226172650/https://novayagazeta.ru/articles/2022/02/26/tretii-den-bez-peremen)
66. [«Важные истории»: средний возраст высших российских чиновников при Путине вырос до 55 лет. При Брежневе он составлял 55,9 года](https://web.archive.org/web/20220131145454/https://novayagazeta.ru/articles/2022/01/31/vazhnye-istorii-srednii-vozrast-vysshikh-rossiiskikh-chinovnikov-pri-putine-vyros-do-55-let-pri-brezhneve-on-sostavlial-559-goda-news)
67. [Путин ведет войну с Украиной. День третий. Онлайн Армия РФ — в центре Киева.  В Харькове — кассетные снаряды. Депутаты ГД высказываются против войны](https://web.archive.org/web/20220226031043/https://novayagazeta.ru/articles/2022/02/26/putin-vedet-voinu-s-ukrainoi-den-tretii-onlain)
68. [«Аргументировали кражей детей бандеровцами»](https://web.archive.org/web/20220301084501/https://novayagazeta.ru/articles/2022/03/01/argumentirovali-krazhei-detei-banderovtsami)
69. [«У женщины пятеро детей, а рядом с ее домом снаряд валяется» Как население полуострова переживает «спецоперацию» в Украине](https://web.archive.org/web/20220228202306/https://novayagazeta.ru/articles/2022/02/28/u-zhenshchiny-piatero-detei-a-riadom-s-ee-domom-snariad-valiaetsia)
70. [«Наше государство ведет себя, как зарвавшийся гопник!» Российские музыканты, артисты, художники — о войне, которой не может быть](https://web.archive.org/web/20220224171823/https://novayagazeta.ru/articles/2022/02/24/nashe-gosudarstvo-vedet-sebia-kak-zarvavshiisia-gopnik)
71. [Путин ведет войну с Украиной. День пятый. Онлайн Армия России возобновила наступление на Киев, здания Бердянска перешли под контроль войск РФ](https://web.archive.org/web/20220228033143/https://novayagazeta.ru/articles/2022/02/28/putin-vedet-voinu-s-ukrainoi-den-piatyi-onlain)
72. [«Я не считаю, что не было варианта решить это не таким путем» Интервью Ольги Дячук, сестры взятого в плен на Украине старшего сержанта армии РФ Романа Буганцова](https://web.archive.org/web/20220227150450/https://novayagazeta.ru/articles/2022/02/27/ia-ne-schitaiu-chto-ne-bylo-varianta-reshit-eto-ne-takim-putem)
73. [«Комитет солдатских матерей»: солдат-срочников массово «заставляют заключать контракты» и отправляют к границе с Украиной](https://web.archive.org/web/20220224170253/https://novayagazeta.ru/articles/2022/02/24/komitet-soldatskikh-materei-soldat-srochnikov-massovo-zastavliaiut-zakliuchat-kontrakty-i-otpravliaiut-k-granitse-s-ukrainoi-news)
74. [Российские НКО выступили против войны в Украине](https://web.archive.org/web/20220226060649/https://novayagazeta.ru/articles/2022/02/26/rossiiskie-nko-vystupili-protiv-voiny-v-ukraine-news)
75. [«Путин нас и народ украинский не даст в обиду»](https://web.archive.org/web/20220226135121/https://novayagazeta.ru/articles/2022/02/26/putin-nas-i-narod-ukrainskii-ne-dast-v-obidu)
76. [«Специальная военная операция» на территории Украины. Интерактивная карта Обстрелы, бомбовые удары, подрывы и штурм — «горячие точки»](https://web.archive.org/web/20220224171720/https://novayagazeta.ru/articles/2022/02/24/spetsialnaia-voennaia-operatsiia-na-territorii-ukrainy-interaktivnaia-karta)
77. [Боль. Страх. Стыд Людмила Улицкая против войны на Украине](https://web.archive.org/web/20220225132144/https://novayagazeta.ru/articles/2022/02/25/bol-strakh-styd)
78. [«Важные истории»: экс-глава Роскомнадзора Жаров стал зарабатывать 1 млн рублей в день после перехода в «Газпром-медиа». Там он занимается «развитием» RuTube](https://web.archive.org/web/20220209113825/https://novayagazeta.ru/articles/2022/02/09/vazhnye-istorii-eks-glava-roskomnadzora-zharov-stal-zarabatyvat-1-mln-rublei-v-den-posle-perekhoda-v-gazprom-media-tam-on-zanimaetsia-razvitiem-rutube-news)
79. [Пятый окаянный день. Вооруженный конфликт в Украине продолжается. Главное Переговоры кончились ничем, жилые кварталы Харькова под обстрелом «Градов», на Киев вновь падают ракеты](https://web.archive.org/web/20220228215803/https://novayagazeta.ru/articles/2022/02/28/piatyi-okaiannyi-den-voina-v-ukraine-prodolzhaetsia-glavnoe)
80. [Ростов прифронтовой Как проживает вторжение самый близкий к войне российский город](https://web.archive.org/web/20220225141738/https://novayagazeta.ru/articles/2022/02/25/rostov-prifrontovoi)
81. [Похоронка есть, могилу выкопали, а тело не привезли  Мать солдата добивается возможности похоронить погибшего сына: «Сказали, не отдадут, чтобы не создавать паники»](https://web.archive.org/web/20220302154024/https://novayagazeta.ru/articles/2022/03/02/pokhoronka-est-mogilu-vykopali-a-telo-ne-privezli)
82. […Из защитников в нападающие Телепропагандисты приближали этот день как могли](https://web.archive.org/web/20220224165312/https://novayagazeta.ru/articles/2022/02/24/iz-zashchitnikov-v-napadaiushchie)
83. [Путин наступает на Украину. День седьмой. Онлайн Авиаудары по украинским городам, десятки погибших, изоляция России](https://web.archive.org/web/20220302061053/https://novayagazeta.ru/articles/2022/03/02/putin-nastupaet-na-ukrainu-den-sedmoi-onlain)
84. [В России продолжаются антивоенные протесты. Фоторепортаж Четвертый день подряд в городах проходят акции против военных действий в Украине. Задержаны больше 2000 человек*](https://web.archive.org/web/20220228035655/https://novayagazeta.ru/articles/2022/02/27/v-rossii-prodolzhaiutsia-antivoennye-protesty-fotoreportazh)
85. [«Вопрос о сборе тел погибших не стоит. Они лежат не преданные земле» Речь сенатора Людмилы Нарусовой — о том, что нам цинично запретили называть своим именем](https://web.archive.org/web/20220301221031/https://novayagazeta.ru/articles/2022/03/01/vopros-o-sbore-tel-pogibshikh-ne-stoit-oni-lezhat-ne-predannye-zemle)
86. [«Мы ни в чем не виноваты. Это власти, чтоб они провалились!» Война пришла и в российские города. Репортаж из Белгорода и его окрестностей, которые теперь подвергаются обстрелам](https://web.archive.org/web/20220226070915/https://novayagazeta.ru/articles/2022/02/26/my-ni-v-chem-ne-vinovaty-eto-vlasti-chtob-oni-provalilis)
87. [«Война — это грязь» Репортаж из приграничного Таганрога в последние часы перед вторжением](https://web.archive.org/web/20220224115246/https://novayagazeta.ru/articles/2022/02/24/voina-eto-griaz)
88. [«Явное неуважение к обществу и государству РФ» Россиян массово увольняют с работы из-за антивоенной позиции](https://web.archive.org/web/20220301121044/https://novayagazeta.ru/articles/2022/03/01/iavnoe-neuvazhenie-k-obshchestvu-i-gosudarstvu-rf)
89. [«Пехота Путина» в Украине Каковы задачи частей Росгвардии, укомплектованных «кадыровцами»: объясняет военный эксперт](https://web.archive.org/web/20220301162926/https://novayagazeta.ru/articles/2022/03/01/pekhota-putina-v-ukraine)
90. [Не убивать, не разрушать. Соединять Открытое письмо российских аниматоров в связи с военной кампанией против Украины](https://web.archive.org/web/20220225133610/https://novayagazeta.ru/articles/2022/02/25/ne-ubivat-ne-razrushat-soediniat)
91. [Турция закрыла проливы Босфор и Дарданеллы для прохода военных кораблей Украины и России](https://web.archive.org/web/20220227210735/https://novayagazeta.ru/articles/2022/02/27/turtsiia-zakryla-prolivy-bosfor-i-dardanelly-dlia-prokhoda-voennykh-korablei-ukrainy-i-rossii-news)
92. [Юрьев день Почему сегодня роман-утопия «Третья империя: Россия, которая должна быть» (2006 г.) читается как лента российских новостей](https://web.archive.org/web/20220303172443/https://novayagazeta.ru/articles/2022/03/03/iurev-den)
93. [Налог на «спецоперацию» За военный конфликт России и Украины простые граждане отвечают кошельками: обзор цен в магазинах и на рынках страны от собкоров «Новой газеты»](https://web.archive.org/web/20220301141952/https://novayagazeta.ru/articles/2022/03/01/nalog-na-spetsoperatsiiu)
94. [Войны нет, можно и повеселиться Пока на украинской земле гибнут люди, в Приморье устроили масленичные гулянья «с шутками-прибаутками»](https://web.archive.org/web/20220301082928/https://novayagazeta.ru/articles/2022/03/01/voiny-net-mozhno-i-poveselitsia)
95. [Антивоенные движения Как москвичи протестовали против вторжения в Украину ](https://web.archive.org/web/20220225085504/https://novayagazeta.ru/articles/2022/02/24/antivoennye-dvizheniia)

I cannot read Russian, so I spent a little time spot checking some of these in Google Translate. It wasn't entirely clear to me that all of them were about the Ukraine, but several of them did appear to be. If you do understand Russian and have some time to analyze them please let me know and I will link out to you.

[novayagazeta.ru]: http://novayagazeta.ru
[archival coverage]: https://web.archive.org/web/*/https://novayagazeta.ru
[Novaya Gazeta]: https://en.wikipedia.org/wiki/Novaya_Gazeta
[Reuters]: https://www.nytimes.com/2022/03/04/world/europe/russia-censorship-media-crackdown.html
[this Jupyter notebook]: https://github.com/edsu/notebooks/blob/master/Novaya%20Gazeta.ipynb
[pyppeteer]: https://pypi.org/project/pyppeteer/
[CDX API]: https://github.com/internetarchive/wayback/blob/master/wayback-cdx-server/README.md
[linkrot]: https://en.wikipedia.org/wiki/Link_rot
[these results]: https://gist.github.com/edsu/ad63b15d644e34cd6e54273ef529cbf5
[404 Not Found]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/404
[200 OK]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/200
