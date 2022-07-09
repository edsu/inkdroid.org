---
title: WACZ Images
tags:
- web-archives
- python 
layout: post
---

Over on the [SUCHO] Slack a question came up about how to extract images from a [WACZ] file. These WACZ files are being created by volunteers using [browsertrix-crawler] to collect at risk cultural heritage websites in the Ukraine. You can see the completed ones in this [this listing], which are also available in the public S3 bucket `s3://files.sucho.org/archives/`

A WACZ is really just a ZIP file that contains WARC data and metadata at predicatble file locations. So it's not too tricky to use a programming language's native support for ZIP and an extension library like [warcio] to read the packaged WARC data and look for records containing images.

```python
#!/usr/bin/env python3

#
# usage: wacz-images.py <wacz_file>
#
# This program will extract images from the WARC files contained in a WACZ 
# file and write them to the current working directory using the image's URL 
# as a file location.
#
# You will need to `pip install warcio` for it to work.
#

import sys
import logging

from pathlib import Path
from zipfile import ZipFile
from urllib.parse import urlparse
from warcio import ArchiveIterator

def main():
    logging.basicConfig(filename="wacz-images.log", level=logging.INFO)
    wacz_file = sys.argv[1]
    wacz = ZipFile(wacz_file)
    for warc_file in warc_files(wacz):
        for rec in ArchiveIterator(wacz.open(warc_file, "r")):
            extract(rec)

def warc_files(wacz):
    return list(filter(lambda f: f.endswith(".warc.gz"), wacz.namelist()))

def extract(rec):
    if rec.rec_type == "response" and rec.http_headers.get("Content-Type", "").startswith("image/"):
        path = get_path(rec.rec_headers["WARC-Target-URI"])
        if not path.parent.is_dir():
            path.parent.mkdir(parents=True)
        try:
            logging.info(path)
            path.open('wb').write(rec.content_stream().read())
        except OSError as e:
            logging.error(e)

def get_path(url):
    uri = urlparse(url)
    return Path(uri.netloc + uri.path + uri.query)

if __name__ == "__main__":
    main()
```

This program will read the WACZ file and write out a series of images files
using the URL as a way to construct a file path.

I ran it on [yizhakultura-com.wacz] and it generated the following file/directory structure:

```
yizhakultura.com
├── assets
│   └── img
│       ├── donate-pink.png
│       ├── donate.svg
│       ├── facebook.png
│       ├── instagram.png
│       ├── telegram.png
│       ├── with-gift-wrapping.jpg
│       ├── without-gift-wrapping.jpg
│       └── youtube.png
├── favicon.ico
├── themes
│   └── yizhak
│       └── assets
│           └── img
│               ├── calendar.svg
│               ├── cart.png
│               ├── facebook-pink.png
│               ├── favicon.ico
│               ├── h-logo.png
│               ├── icon-arrow-left-slim.svg
│               ├── icon-arrow-right-slim.svg
│               ├── list-pink.svg
│               ├── logo.png
│               ├── partners
│               │   ├── 1.jpg
│               │   ├── 2.jpg
│               │   ├── 3.jpg
│               │   ├── 4.jpg
│               │   ├── 5.jpg
│               │   ├── 6.jpg
│               │   ├── 8.jpg
│               │   └── 9.jpg
│               ├── play.svg
│               ├── profile.png
│               ├── search.svg
│               ├── telegram-pink.png
│               └── text.svg
└── uploads
    ├── 05bee3a9818ccab1dc429a89bdbbb206.jpg
    ├── 100825206ce367ff4787081875ad7b11.jpg
    ├── 1bf78535711236ddda5ceeec4b867250.jpg
    ├── 21be3439fbf879a6f2257caa73969a0a.jpg
    ├── 21f1c47c5d1712a3eee5990cafc9a312.jpg
    ├── 24c791e88cdc2d9944d2e9db76cde1fc.jpg
    ├── 312c159cb08cd75ee56897308b0e96f1.jpg
    ├── 3a2e3718d2bd5277fd2ac700fd390298.jpg
    ├── 5c0f228e84f12beb8ac825d6e64f2106.jpg
    ├── 5cd51756ff1d5eca01bf7fd3718b2a00.jpg
    ├── 5f6ea3b9e1b3bbb9b4c242f289efea14.jpg
    ├── 6d2b3ffad6857fb8563843c7a559c465.jpg
    ├── 7429d30aa9b1ee57cab4a28d38457037.jpg
    ├── 8c7c3e4861ae3811fe92cdc79cff9621.png
    ├── a28a9a7e165d15311d51503b69339936.jpg
    ├── a32dbe47ce445daaca985f53f146632b.jpg
    ├── acde32f5465761b5c49356356c87b531.jpg
    ├── aeb36179d4df2022caee2c5ca331478e.jpg
    ├── b7b5cddee442462aff3fa2d401c7c2ae.png
    ├── c472557a07b55f0244485382f5b50bed.jpg
    ├── d04f630818f67da6e1055459cbd45fba.jpg
    ├── d6f9803a411a3fa6085b88a2e2df6740.jpg
    ├── d814e5df88b10f7d30ab1cecc55dcb3e.jpg
    ├── da4bdeaecb69f6555429a7bb804f413f.jpg
    ├── df1ddd2c180c23139a86b6eedc83836d.jpg
    ├── e6cde30606f7a412c838e0b7f8836f63.jpg
    ├── eabd170fe42c6fae67329b7fd954069f.jpg
    ├── ee11230887275ab95295afed60f47e55.jpg
    ├── f1a5bf6449e447153d43d9089f3c18db.jpg
    ├── f3956280cb7db26516e1c2a62e70d3dc.jpg
    ├── images
    │   ├── authors
    │   │   ├── medium
    │   │   │   ├── %D1%81_zadorozhna_oksana.jpg
    │   │   │   ├── a_adzhyieva_esma.jpg
    │   │   │   ├── a_antsybor_daria.png
    │   │   │   ├── a_banko_mariia.jpg
    │   │   │   ├── a_bogdanec_svitlana_02.jpg
    │   │   │   ├── a_borysenko_valentyna.png
    │   │   │   ├── a_braichenko_olena.png
    │   │   │   ├── a_bulatova_svitlana.png
    │   │   │   ├── a_buradzhyieva_valeriia.jpg
    │   │   │   ├── a_chyzhevska_nadiia.png
    │   │   │   ├── a_dehtiarova_valeriia.png
    │   │   │   ├── a_demchuk_stefaniia.png
    │   │   │   ├── a_dyndo_maryna.jpg
    │   │   │   ├── a_dyrda_svitlana.jpg
    │   │   │   ├── a_fanta_ilona.jpg
    │   │   │   ├── a_halas_maiia1.jpg
    │   │   │   ├── a_hromova%EF%BB%BF_nataliia.png
    │   │   │   ├── a_kaliuzhna_kateryna2.jpg
    │   │   │   ├── a_kazakevych_olha.png
    │   │   │   ├── a_kosenko_mariya.jpg
    │   │   │   ├── a_kotsiubanska_olha.png
    │   │   │   ├── a_kovaleneko_serhii.png
    │   │   │   ├── a_krasylenko_yuliia.png
    │   │   │   ├── a_krikunova_dariia.png
    │   │   │   ├── a_kuzjo_natalya.jpg
    │   │   │   ├── a_lesia_hasydzhak.jpg
    │   │   │   ├── a_lindeman_alisa.jpg
    │   │   │   ├── a_midianka_petro.png
    │   │   │   ├── a_nahorniuk_oleksii.png
    │   │   │   ├── a_nazarenko_vadym.jpg
    │   │   │   ├── a_netudykhatkin_ihor.png
    │   │   │   ├── a_okopna_tetiana.jpg
    │   │   │   ├── a_pankova_anastasiia.png
    │   │   │   ├── a_pastushenko_tetiana_.jpg
    │   │   │   ├── a_patiuk_daryna_maryna.jpg
    │   │   │   ├── a_pavlova_olena.jpg
    │   │   │   ├── a_petrenko-lysak_alla.jpg
    │   │   │   ├── a_petrenko-tseunova_olha.png
    │   │   │   ├── a_polek_tina9.jpg
    │   │   │   ├── a_potapenko_maksym.jpg
    │   │   │   ├── a_pyvovarenko_olena.png
    │   │   │   ├── a_samruk_natalia1.jpg
    │   │   │   ├── a_shchur_oksana.png
    │   │   │   ├── a_sheptytska_tetiana.png
    │   │   │   ├── a_slavinska_iryna1.jpg
    │   │   │   ├── a_slobodyanyuk-montavon_hanna.png
    │   │   │   ├── a_soboleva_olena.jpg
    │   │   │   ├── a_sokyrko_oleksii.png
    │   │   │   ├── a_tetiana_tkachenko.png
    │   │   │   ├── a_tilnova_inna.png
    │   │   │   ├── a_vasianovych_oleksandr.png
    │   │   │   ├── a_vilkova_olena.jpg
    │   │   │   ├── a_yakusyk_tetiana.png
    │   │   │   ├── a_yudina_oksana1.jpg
    │   │   │   ├── a_zemliana_iryna.jpg
    │   │   │   ├── a_zubko_olha1.jpg
    │   │   │   ├── artem.png
    │   │   │   ├── c_denys_kramarenko.jpg
    │   │   │   ├── c_kostiantyn_slipchenko.jpg
    │   │   │   ├── c_olena_zhabotynska.jpg
    │   │   │   ├── c_viacheslav_popkov.jpg
    │   │   │   ├── c_vitalii_huralevych.jpg
    │   │   │   └── c_yaroslav_artiukh.jpg
    │   │   └── thumbnails
    │   │       ├── %D1%81_zadorozhna_oksana.jpg
    │   │       ├── a_adzhyieva_esma.jpg
    │   │       ├── a_antsybor_daria.png
    │   │       ├── a_banko_mariia.jpg
    │   │       ├── a_bogdanec_svitlana_02.jpg
    │   │       ├── a_borysenko_valentyna.png
    │   │       ├── a_braichenko_olena.png
    │   │       ├── a_bulatova_svitlana.png
    │   │       ├── a_buradzhyieva_valeriia.jpg
    │   │       ├── a_chyzhevska_nadiia.png
    │   │       ├── a_dehtiarova_valeriia.png
    │   │       ├── a_demchuk_stefaniia.png
    │   │       ├── a_dyndo_maryna.jpg
    │   │       ├── a_dyrda_svitlana.jpg
    │   │       ├── a_fanta_ilona.jpg
    │   │       ├── a_halas_maiia1.jpg
    │   │       ├── a_hromova%EF%BB%BF_nataliia.png
    │   │       ├── a_kaliuzhna_kateryna2.jpg
    │   │       ├── a_kazakevych_olha.png
    │   │       ├── a_kosenko_mariya.jpg
    │   │       ├── a_kotsiubanska_olha.png
    │   │       ├── a_kovaleneko_serhii.png
    │   │       ├── a_krasylenko_yuliia.png
    │   │       ├── a_krikunova_dariia.png
    │   │       ├── a_kuzjo_natalya.jpg
    │   │       ├── a_lesia_hasydzhak.jpg
    │   │       ├── a_lindeman_alisa.jpg
    │   │       ├── a_midianka_petro.png
    │   │       ├── a_nahorniuk_oleksii.png
    │   │       ├── a_nazarenko_vadym.jpg
    │   │       ├── a_netudykhatkin_ihor.png
    │   │       ├── a_okopna_tetiana.jpg
    │   │       ├── a_pankova_anastasiia.png
    │   │       ├── a_pastushenko_tetiana_.jpg
    │   │       ├── a_patiuk_daryna_maryna.jpg
    │   │       ├── a_pavlova_olena.jpg
    │   │       ├── a_petrenko-lysak_alla.jpg
    │   │       ├── a_petrenko-tseunova_olha.png
    │   │       ├── a_polek_tina9.jpg
    │   │       ├── a_potapenko_maksym.jpg
    │   │       ├── a_pyvovarenko_olena.png
    │   │       ├── a_samruk_natalia1.jpg
    │   │       ├── a_shchur_oksana.png
    │   │       ├── a_sheptytska_tetiana.png
    │   │       ├── a_slavinska_iryna1.jpg
    │   │       ├── a_slobodyanyuk-montavon_hanna.png
    │   │       ├── a_soboleva_olena.jpg
    │   │       ├── a_sokyrko_oleksii.png
    │   │       ├── a_tetiana_tkachenko.png
    │   │       ├── a_tilnova_inna.png
    │   │       ├── a_vasianovych_oleksandr.png
    │   │       ├── a_vilkova_olena.jpg
    │   │       ├── a_yakusyk_tetiana.png
    │   │       ├── a_zemliana_iryna.jpg
    │   │       ├── a_zubko_olha1.jpg
    │   │       ├── artem.png
    │   │       ├── c_denys_kramarenko.jpg
    │   │       ├── c_kostiantyn_slipchenko.jpg
    │   │       ├── c_olena_zhabotynska.jpg
    │   │       ├── c_viacheslav_popkov.jpg
    │   │       ├── c_vitalii_huralevych.jpg
    │   │       └── c_yaroslav_artiukh.jpg
    │   ├── materials
    │   │   ├── full
    │   │   │   ├── 100.jpg
    │   │   │   ├── 20180806_0011.jpg
    │   │   │   ├── 20180813_001.jpg
    │   │   │   ├── 20180823_001.jpg
    │   │   │   ├── 20180905_001.jpg
    │   │   │   ├── 20180918_001.jpg
    │   │   │   ├── 20180929_001.jpg
    │   │   │   ├── 20181005_001.jpg
    │   │   │   ├── 20181011_001.jpg
    │   │   │   ├── 20181105_001.jpg
    │   │   │   ├── 20181112_001.jpg
    │   │   │   ├── 20181125_001.jpg
    │   │   │   ├── 20181218_001.jpg
    │   │   │   ├── 20181227_001.jpg
    │   │   │   ├── 20190101_001.jpg
    │   │   │   ├── 20190104_001.jpg
    │   │   │   ├── 20190111_001.jpg
    │   │   │   ├── 20190117_001.jpg
    │   │   │   ├── 20190125_001.jpg
    │   │   │   ├── 20190131_001.jpg
    │   │   │   ├── 20190210_001.jpg
    │   │   │   ├── 20190222_001.jpg
    │   │   │   ├── 20190307_001.jpg
    │   │   │   ├── 20190308_001.jpg
    │   │   │   ├── 20190323_0011.jpg
    │   │   │   ├── 20190403_001.jpg
    │   │   │   ├── 20190430_001.jpg
    │   │   │   ├── 20190503_ano_xxx_920x560.jpg
    │   │   │   ├── 20190509_ano_xxx_920x560.jpg
    │   │   │   ├── 20190511_001.jpg
    │   │   │   ├── 20190515_akk_xxx_920x560.jpg
    │   │   │   ├── 20190531_001.jpg
    │   │   │   ├── 20190617_001.jpg
    │   │   │   ├── 20190618_001.jpg
    │   │   │   ├── 20190623_001.jpg
    │   │   │   ├── 20190624_001.jpg
    │   │   │   ├── 20190705_001.jpg
    │   │   │   ├── 20190715_001.jpg
    │   │   │   ├── 20190722_0011.jpg
    │   │   │   ├── 20190729_xxx_000_920x5601.jpg
    │   │   │   ├── 20190729_xxx_000_920x56011.jpg
    │   │   │   ├── 20190814_001.jpg
    │   │   │   ├── 20190820_001.jpg
    │   │   │   ├── 20190826_0011.jpg
    │   │   │   ├── 20190905_apn_000_920x560.jpg
    │   │   │   ├── 20190918_001.jpg
    │   │   │   ├── 20191010_0011.jpg
    │   │   │   ├── 20191107_aps_001_920560.jpg
    │   │   │   ├── 20191108_001.jpg
    │   │   │   ├── 20191115_0011.jpg
    │   │   │   ├── 20191213_001.jpg
    │   │   │   ├── 20191227_001.jpg
    │   │   │   ├── 20191231_001.jpg
    │   │   │   ├── 20192816_001.jpg
    │   │   │   ├── 20200124_001.jpg
    │   │   │   ├── 20200219_000.jpg
    │   │   │   ├── 20200229_001.jpg
    │   │   │   ├── 20200320_001.jpg
    │   │   │   ├── 20200328_001.jpg
    │   │   │   ├── 20200424_001.jpg
    │   │   │   ├── 20200513_0001.jpg
    │   │   │   ├── 20200520_ril_001_9205601.jpg
    │   │   │   ├── 20200605_000.jpg
    │   │   │   ├── 20200617_kud_001_9205602.jpg
    │   │   │   ├── 20200623_000.jpg
    │   │   │   ├── 20200623_0001.jpg
    │   │   │   ├── 20200627_001.jpg
    │   │   │   ├── 20200707_001.jpg
    │   │   │   ├── 20200727_bmi_001_9205601.jpg
    │   │   │   ├── 20200730_000.jpg
    │   │   │   ├── 20200823_zog_0011.jpg
    │   │   │   ├── 20201008_001.jpg
    │   │   │   ├── 20201026_001.jpg
    │   │   │   ├── 20201103_001.jpg
    │   │   │   ├── 20201105_001.jpg
    │   │   │   ├── 20201110_001.jpg
    │   │   │   ├── 20201111_001.jpg
    │   │   │   ├── 20201115_0132_001.jpg
    │   │   │   ├── 20201121_001.jpg
    │   │   │   ├── 20201124_001.jpg
    │   │   │   ├── 20201125_001.jpg
    │   │   │   ├── 20201128_0011.jpg
    │   │   │   ├── 20201202_001.jpg
    │   │   │   ├── 20201202_1343_001.jpg
    │   │   │   ├── 20201206_001.jpg
    │   │   │   ├── 20201217_001.jpg
    │   │   │   ├── 20201221_001.jpg
    │   │   │   ├── 20201223_0011.jpg
    │   │   │   ├── 20201228_1115_001.jpg
    │   │   │   ├── 20201230_001.jpg
    │   │   │   ├── 20201230_0011.jpg
    │   │   │   ├── 20201230_0012.jpg
    │   │   │   ├── 20201230_0013.jpg
    │   │   │   ├── 20201230_0014.jpg
    │   │   │   ├── 20201230_003.jpg
    │   │   │   ├── 2020314_001.jpg
    │   │   │   ├── 2020405_001.jpg
    │   │   │   ├── 20210105_001.jpg
    │   │   │   ├── 20210119_001.jpg
    │   │   │   ├── 20210126_001.jpg
    │   │   │   ├── 20210127_001.jpg
    │   │   │   ├── 20210202_001.jpg
    │   │   │   ├── 20210210_001.jpg
    │   │   │   ├── 20210219_001.jpg
    │   │   │   ├── 20210225_0001.jpg
    │   │   │   ├── 20210225_001.jpg
    │   │   │   ├── 20210303_2031_001.jpg
    │   │   │   ├── 20210310_1833_001.jpg
    │   │   │   ├── 20210314_0919_001.jpg
    │   │   │   ├── 20210315_2204_001.jpg
    │   │   │   ├── 20210317_1737_001.jpg
    │   │   │   ├── 20210324_1501_001.jpg
    │   │   │   ├── 20210326_2052_001.jpg
    │   │   │   ├── 20210328_2215_001.jpg
    │   │   │   ├── 20210401_2206_001.jpg
    │   │   │   ├── 20210402_1805_001.jpg
    │   │   │   ├── 20210403_0217_001.jpg
    │   │   │   ├── 20210408_1614_001.jpg
    │   │   │   ├── 20210411_0156_001.jpg
    │   │   │   ├── 20210415_1220_001.jpg
    │   │   │   ├── 20210418_1649_001.jpg
    │   │   │   ├── 20210426_0209_001.jpg
    │   │   │   ├── 20210430_1044_001.jpg
    │   │   │   ├── 20210516_1143_001.jpg
    │   │   │   ├── 20210602_1703_001.jpg
    │   │   │   ├── 20210607_0146_001.jpg
    │   │   │   ├── 20210611_0015_0011.jpg
    │   │   │   ├── 20210622_1108_001.jpeg
    │   │   │   ├── 20210702_1936_001.jpg
    │   │   │   ├── 20210709_0049_001.jpg
    │   │   │   ├── 20210715_2025_001.jpg
    │   │   │   ├── 20210724_2249_001.jpg
    │   │   │   ├── 20210725_2300_0011.jpg
    │   │   │   ├── 20210729_1507_000.jpg
    │   │   │   ├── 20210811_0829_001.jpg
    │   │   │   ├── 20210812_0904_001.jpg
    │   │   │   ├── 20210901_0744_001.jpg
    │   │   │   ├── 20210918_1211_001.jpg
    │   │   │   ├── 20210920_1332_0001.jpg
    │   │   │   ├── 20210925_0220_0011.jpg
    │   │   │   ├── 20210929_1443_001.jpg
    │   │   │   ├── 20211008_2050_001.jpg
    │   │   │   ├── 20211022_1521_001.jpg
    │   │   │   ├── 20211025_1044_001.jpg
    │   │   │   ├── 20211028_0317_001.jpg
    │   │   │   ├── 20211028_1745_001.jpg
    │   │   │   ├── 20211029_0928_001.jpg
    │   │   │   ├── 20211031_0240_001.jpg
    │   │   │   ├── 20211031_0305_001.jpg
    │   │   │   ├── 20211106_1142_001.jpg
    │   │   │   ├── 20211106_1256_001.jpg
    │   │   │   ├── 20211112_1112_001.jpg
    │   │   │   ├── 20211114_1221_001.jpg
    │   │   │   ├── 20211120_1046_001.jpg
    │   │   │   ├── 20211120_1113_001.jpg
    │   │   │   ├── 20211124_1400_001.jpg
    │   │   │   ├── 20211125_0213_001.jpg
    │   │   │   ├── 20211201_0855_001.jpg
    │   │   │   ├── 20211208_1034_001.jpg
    │   │   │   ├── 20211211_2024_001.jpg
    │   │   │   ├── 20211215_2011_001.jpg
    │   │   │   ├── 20211220_2035_001.jpg
    │   │   │   ├── 20211228_1817_001.jpg
    │   │   │   ├── 20211229_1333_0011.jpg
    │   │   │   ├── 20220105_0111_001.jpg
    │   │   │   ├── 20220107_1501_001.jpg
    │   │   │   ├── 20220114_0206_001.jpg
    │   │   │   ├── 20220202_1530_001.jpg
    │   │   │   ├── 20220205_2125_000.jpg
    │   │   │   ├── 20220209_1110_000.jpg
    │   │   │   ├── 20220216_2232_001.jpg
    │   │   │   ├── 20220219_1852_001.jpg
    │   │   │   ├── 22020212_0015_000.jpg
    │   │   │   ├── 79187781_3231065063573219_6068652454101123072_n.jpg
    │   │   │   ├── Titul.jpg
    │   │   │   ├── annie-spratt-553038-unsplash.jpg
    │   │   │   ├── fol__170v.jpg
    │   │   │   ├── na_desert_920560.jpg
    │   │   │   ├── news_and_announcements.jpg
    │   │   │   ├── news_and_announcements1.jpg
    │   │   │   ├── news_and_announcements2.jpg
    │   │   │   ├── news_and_announcements21.jpg
    │   │   │   ├── news_and_announcements212.jpg
    │   │   │   ├── news_and_announcements2121.jpg
    │   │   │   ├── news_and_announcements2122.jpg
    │   │   │   ├── news_and_announcements2123.jpg
    │   │   │   └── photo_2020-10-12_19-32-18.jpg
    │   │   ├── medium
    │   │   │   ├── 20180806_0011.jpgw=600
    │   │   │   ├── 20180813_001.jpgw=600
    │   │   │   ├── 20180823_001.jpgw=600
    │   │   │   ├── 20180905_001.jpgw=600
    │   │   │   ├── 20180918_001.jpgw=600
    │   │   │   ├── 20180929_001.jpgw=600
    │   │   │   ├── 20181005_001.jpgw=600
    │   │   │   ├── 20181011_001.jpgw=600
    │   │   │   ├── 20181105_001.jpgw=600
    │   │   │   ├── 20181112_001.jpgw=600
    │   │   │   ├── 20181125_001.jpgw=600
    │   │   │   ├── 20181218_001.jpgw=600
    │   │   │   ├── 20181227_001.jpgw=600
    │   │   │   ├── 20190101_001.jpgw=600
    │   │   │   ├── 20190104_001.jpgw=600
    │   │   │   ├── 20190111_001.jpgw=600
    │   │   │   ├── 20190117_001.jpgw=600
    │   │   │   ├── 20190125_001.jpgw=600
    │   │   │   ├── 20190131_001.jpgw=600
    │   │   │   ├── 20190210_001.jpgw=600
    │   │   │   ├── 20190222_001.jpgw=600
    │   │   │   ├── 20190307_001.jpgw=600
    │   │   │   ├── 20190308_001.jpgw=600
    │   │   │   ├── 20190323_0011.jpgw=600
    │   │   │   ├── 20190403_001.jpgw=600
    │   │   │   ├── 20190430_001.jpgw=600
    │   │   │   ├── 20190509_ano_xxx_920x560.jpgw=600
    │   │   │   ├── 20190511_001.jpgw=600
    │   │   │   ├── 20190531_001.jpgw=600
    │   │   │   ├── 20190617_001.jpgw=600
    │   │   │   ├── 20190618_001.jpgw=600
    │   │   │   ├── 20190623_001.jpgw=600
    │   │   │   ├── 20190624_001.jpgw=600
    │   │   │   ├── 20190705_001.jpgw=600
    │   │   │   ├── 20190715_001.jpgw=600
    │   │   │   ├── 20190722_0011.jpgw=600
    │   │   │   ├── 20190729_xxx_000_920x56011.jpgw=600
    │   │   │   ├── 20190814_001.jpgw=600
    │   │   │   ├── 20190820_001.jpgw=600
    │   │   │   ├── 20190826_0011.jpgw=600
    │   │   │   ├── 20190918_001.jpgw=600
    │   │   │   ├── 20191010_0011.jpgw=600
    │   │   │   ├── 20191107_aps_001_920560.jpgw=600
    │   │   │   ├── 20191108_001.jpgw=600
    │   │   │   ├── 20191115_0011.jpgw=600
    │   │   │   ├── 20191213_001.jpgw=600
    │   │   │   ├── 20191227_001.jpgw=600
    │   │   │   ├── 20191231_001.jpgw=600
    │   │   │   ├── 20192816_001.jpgw=600
    │   │   │   ├── 20200124_001.jpgw=600
    │   │   │   ├── 20200219_000.jpgw=600
    │   │   │   ├── 20200229_001.jpgw=600
    │   │   │   ├── 20200320_001.jpgw=600
    │   │   │   ├── 20200328_001.jpgw=600
    │   │   │   ├── 20200424_001.jpgw=600
    │   │   │   ├── 20200513_0001.jpgw=600
    │   │   │   ├── 20200520_ril_001_9205601.jpgw=600
    │   │   │   ├── 20200605_000.jpgw=600
    │   │   │   ├── 20200623_000.jpgw=600
    │   │   │   ├── 20200623_0001.jpgw=600
    │   │   │   ├── 20200627_001.jpgw=600
    │   │   │   ├── 20200707_001.jpgw=600
    │   │   │   ├── 20200727_bmi_001_9205601.jpgw=600
    │   │   │   ├── 20200730_000.jpgw=600
    │   │   │   ├── 20200823_zog_0011.jpgw=600
    │   │   │   ├── 20201008_001.jpgw=600
    │   │   │   ├── 20201026_001.jpgw=600
    │   │   │   ├── 20201103_001.jpgw=600
    │   │   │   ├── 20201105_001.jpgw=600
    │   │   │   ├── 20201110_001.jpgw=600
    │   │   │   ├── 20201111_001.jpgw=600
    │   │   │   ├── 20201115_0132_001.jpgw=600
    │   │   │   ├── 20201121_001.jpgw=600
    │   │   │   ├── 20201124_001.jpgw=600
    │   │   │   ├── 20201125_001.jpgw=600
    │   │   │   ├── 20201128_0011.jpgw=600
    │   │   │   ├── 20201202_001.jpgw=600
    │   │   │   ├── 20201202_1343_001.jpgw=600
    │   │   │   ├── 20201206_001.jpgw=600
    │   │   │   ├── 20201217_001.jpgw=600
    │   │   │   ├── 20201221_001.jpgw=600
    │   │   │   ├── 20201223_0011.jpgw=600
    │   │   │   ├── 20201228_1115_001.jpgw=600
    │   │   │   ├── 20201230_001.jpgw=600
    │   │   │   ├── 20201230_0011.jpgw=600
    │   │   │   ├── 20201230_0012.jpgw=600
    │   │   │   ├── 20201230_0013.jpgw=600
    │   │   │   ├── 20201230_0014.jpgw=600
    │   │   │   ├── 20201230_003.jpgw=600
    │   │   │   ├── 2020314_001.jpgw=600
    │   │   │   ├── 2020405_001.jpgw=600
    │   │   │   ├── 20210105_001.jpgw=600
    │   │   │   ├── 20210119_001.jpgw=600
    │   │   │   ├── 20210126_001.jpgw=600
    │   │   │   ├── 20210127_001.jpgw=600
    │   │   │   ├── 20210202_001.jpgw=600
    │   │   │   ├── 20210210_001.jpgw=600
    │   │   │   ├── 20210219_001.jpgw=600
    │   │   │   ├── 20210225_0001.jpgw=600
    │   │   │   ├── 20210225_001.jpgw=600
    │   │   │   ├── 20210303_2031_001.jpgw=600
    │   │   │   ├── 20210310_1833_001.jpgw=600
    │   │   │   ├── 20210317_1737_001.jpgw=600
    │   │   │   ├── 20210324_1501_001.jpgw=600
    │   │   │   ├── 20210326_2052_001.jpgw=600
    │   │   │   ├── 20210328_2215_001.jpgw=600
    │   │   │   ├── 20210401_2206_001.jpgw=600
    │   │   │   ├── 20210402_1805_001.jpgw=600
    │   │   │   ├── 20210403_0217_001.jpgw=600
    │   │   │   ├── 20210408_1614_001.jpgw=600
    │   │   │   ├── 20210411_0156_001.jpgw=600
    │   │   │   ├── 20210415_1220_001.jpgw=600
    │   │   │   ├── 20210418_1649_001.jpgw=600
    │   │   │   ├── 20210426_0209_001.jpgw=600
    │   │   │   ├── 20210430_1044_001.jpgw=600
    │   │   │   ├── 20210516_1143_001.jpgw=600
    │   │   │   ├── 20210611_0015_0011.jpgw=600
    │   │   │   ├── 20210622_1108_001.jpegw=600
    │   │   │   ├── 20210702_1936_001.jpgw=600
    │   │   │   ├── 20210709_0049_001.jpgw=600
    │   │   │   ├── 20210715_2025_001.jpgw=600
    │   │   │   ├── 20210724_2249_001.jpgw=600
    │   │   │   ├── 20210725_2300_0011.jpgw=600
    │   │   │   ├── 20210729_1507_000.jpgw=600
    │   │   │   ├── 20210811_0829_001.jpgw=600
    │   │   │   ├── 20210812_0904_001.jpgw=600
    │   │   │   ├── 20210901_0744_001.jpgw=600
    │   │   │   ├── 20210918_1211_001.jpgw=600
    │   │   │   ├── 20210920_1332_0001.jpgw=600
    │   │   │   ├── 20210925_0220_0011.jpgw=600
    │   │   │   ├── 20210929_1443_001.jpgw=600
    │   │   │   ├── 20211008_2050_001.jpgw=600
    │   │   │   ├── 20211022_1521_001.jpgw=600
    │   │   │   ├── 20211025_1044_001.jpgw=600
    │   │   │   ├── 20211028_0317_001.jpgw=600
    │   │   │   ├── 20211028_1745_001.jpgw=600
    │   │   │   ├── 20211029_0928_001.jpgw=600
    │   │   │   ├── 20211031_0240_001.jpgw=600
    │   │   │   ├── 20211031_0305_001.jpgw=600
    │   │   │   ├── 20211106_1142_001.jpgw=600
    │   │   │   ├── 20211106_1256_001.jpgw=600
    │   │   │   ├── 20211112_1112_001.jpgw=600
    │   │   │   ├── 20211114_1221_001.jpgw=600
    │   │   │   ├── 20211120_1046_001.jpgw=600
    │   │   │   ├── 20211120_1113_001.jpgw=600
    │   │   │   ├── 20211124_1400_001.jpgw=600
    │   │   │   ├── 20211125_0213_001.jpgw=600
    │   │   │   ├── 20211201_0855_001.jpgw=600
    │   │   │   ├── 20211208_1034_001.jpgw=600
    │   │   │   ├── 20211211_2024_001.jpgw=600
    │   │   │   ├── 20211215_2011_001.jpgw=600
    │   │   │   ├── 20211220_2035_001.jpgw=600
    │   │   │   ├── 20211228_1817_001.jpgw=600
    │   │   │   ├── 20211229_1333_0011.jpgw=600
    │   │   │   ├── 20220105_0111_001.jpgw=600
    │   │   │   ├── 20220107_1501_001.jpgw=600
    │   │   │   ├── 20220114_0206_001.jpgw=600
    │   │   │   ├── 20220202_1530_001.jpgw=600
    │   │   │   ├── 20220205_2125_000.jpgw=600
    │   │   │   ├── 20220209_1110_000.jpgw=600
    │   │   │   ├── 20220216_2232_001.jpgw=600
    │   │   │   ├── 20220219_1852_001.jpgw=600
    │   │   │   ├── 22020212_0015_000.jpgw=600
    │   │   │   ├── Titul.jpgw=600
    │   │   │   └── news_and_announcements2.jpgw=600
    │   │   └── small
    │   │       ├── 20180806_0011.jpg
    │   │       ├── 20180813_001.jpg
    │   │       ├── 20180823_001.jpg
    │   │       ├── 20180905_001.jpg
    │   │       ├── 20180918_001.jpg
    │   │       ├── 20180929_001.jpg
    │   │       ├── 20181005_001.jpg
    │   │       ├── 20181011_001.jpg
    │   │       ├── 20181105_001.jpg
    │   │       ├── 20181112_001.jpg
    │   │       ├── 20181125_001.jpg
    │   │       ├── 20181218_001.jpg
    │   │       ├── 20181227_001.jpg
    │   │       ├── 20190101_001.jpg
    │   │       ├── 20190104_001.jpg
    │   │       ├── 20190111_001.jpg
    │   │       ├── 20190117_001.jpg
    │   │       ├── 20190125_001.jpg
    │   │       ├── 20190131_001.jpg
    │   │       ├── 20190210_001.jpg
    │   │       ├── 20190222_001.jpg
    │   │       ├── 20190307_001.jpg
    │   │       ├── 20190308_001.jpg
    │   │       ├── 20190323_0011.jpg
    │   │       ├── 20190403_001.jpg
    │   │       ├── 20190430_001.jpg
    │   │       ├── 20190511_001.jpg
    │   │       ├── 20190531_001.jpg
    │   │       ├── 20190617_001.jpg
    │   │       ├── 20190618_001.jpg
    │   │       ├── 20190623_001.jpg
    │   │       ├── 20190624_001.jpg
    │   │       ├── 20190705_001.jpg
    │   │       ├── 20190715_001.jpg
    │   │       ├── 20190722_0011.jpg
    │   │       ├── 20190814_001.jpg
    │   │       ├── 20190820_001.jpg
    │   │       ├── 20190826_0011.jpg
    │   │       ├── 20190918_001.jpg
    │   │       ├── 20191010_0011.jpg
    │   │       ├── 20191108_001.jpg
    │   │       ├── 20191115_0011.jpg
    │   │       ├── 20191213_001.jpg
    │   │       ├── 20191227_001.jpg
    │   │       ├── 20191231_001.jpg
    │   │       ├── 20192816_001.jpg
    │   │       ├── 20200124_001.jpg
    │   │       ├── 20200219_000.jpg
    │   │       ├── 20200229_001.jpg
    │   │       ├── 20200320_001.jpg
    │   │       ├── 20200328_001.jpg
    │   │       ├── 20200424_001.jpg
    │   │       ├── 20200513_0001.jpg
    │   │       ├── 20200520_ril_001_9205601.jpg
    │   │       ├── 20200605_000.jpg
    │   │       ├── 20200623_000.jpg
    │   │       ├── 20200627_001.jpg
    │   │       ├── 20200707_001.jpg
    │   │       ├── 20200730_000.jpg
    │   │       ├── 20200823_zog_0011.jpg
    │   │       ├── 20201008_001.jpg
    │   │       ├── 20201026_001.jpg
    │   │       ├── 20201103_001.jpg
    │   │       ├── 20201105_001.jpg
    │   │       ├── 20201110_001.jpg
    │   │       ├── 20201111_001.jpg
    │   │       ├── 20201115_0132_001.jpg
    │   │       ├── 20201121_001.jpg
    │   │       ├── 20201124_001.jpg
    │   │       ├── 20201125_001.jpg
    │   │       ├── 20201128_0011.jpg
    │   │       ├── 20201202_001.jpg
    │   │       ├── 20201202_1343_001.jpg
    │   │       ├── 20201206_001.jpg
    │   │       ├── 20201217_001.jpg
    │   │       ├── 20201221_001.jpg
    │   │       ├── 20201223_0011.jpg
    │   │       ├── 20201228_1115_001.jpg
    │   │       ├── 20201230_001.jpg
    │   │       ├── 20201230_0011.jpg
    │   │       ├── 20201230_0012.jpg
    │   │       ├── 20201230_0013.jpg
    │   │       ├── 20201230_0014.jpg
    │   │       ├── 20201230_003.jpg
    │   │       ├── 2020314_001.jpg
    │   │       ├── 2020405_001.jpg
    │   │       ├── 20210105_001.jpg
    │   │       ├── 20210119_001.jpg
    │   │       ├── 20210127_001.jpg
    │   │       ├── 20210202_001.jpg
    │   │       ├── 20210210_001.jpg
    │   │       ├── 20210219_001.jpg
    │   │       ├── 20210225_001.jpg
    │   │       ├── 20210310_1833_001.jpg
    │   │       ├── 20210314_0919_001.jpg
    │   │       ├── 20210315_2204_001.jpg
    │   │       ├── 20210317_1737_001.jpg
    │   │       ├── 20210324_1501_001.jpg
    │   │       ├── 20210326_2052_001.jpg
    │   │       ├── 20210328_2215_001.jpg
    │   │       ├── 20210401_2206_001.jpg
    │   │       ├── 20210402_1805_001.jpg
    │   │       ├── 20210403_0217_001.jpg
    │   │       ├── 20210408_1614_001.jpg
    │   │       ├── 20210411_0156_001.jpg
    │   │       ├── 20210415_1220_001.jpg
    │   │       ├── 20210426_0209_001.jpg
    │   │       ├── 20210430_1044_001.jpg
    │   │       ├── 20210516_1143_001.jpg
    │   │       ├── 20210602_1703_001.jpg
    │   │       ├── 20210607_0146_001.jpg
    │   │       ├── 20210611_0015_0011.jpg
    │   │       ├── 20210622_1108_001.jpeg
    │   │       ├── 20210702_1936_001.jpg
    │   │       ├── 20210709_0049_001.jpg
    │   │       ├── 20210715_2025_001.jpg
    │   │       ├── 20210724_2249_001.jpg
    │   │       ├── 20210729_1507_000.jpg
    │   │       ├── 20210812_0904_001.jpg
    │   │       ├── 20210901_0744_001.jpg
    │   │       ├── 20210918_1211_001.jpg
    │   │       ├── 20210920_1332_0001.jpg
    │   │       ├── 20210925_0220_0011.jpg
    │   │       ├── 20211008_2050_001.jpg
    │   │       ├── 20211022_1521_001.jpg
    │   │       ├── 20211025_1044_001.jpg
    │   │       ├── 20211028_0317_001.jpg
    │   │       ├── 20211028_1745_001.jpg
    │   │       ├── 20211029_0928_001.jpg
    │   │       ├── 20211031_0240_001.jpg
    │   │       ├── 20211031_0305_001.jpg
    │   │       ├── 20211106_1142_001.jpg
    │   │       ├── 20211106_1256_001.jpg
    │   │       ├── 20211112_1112_001.jpg
    │   │       ├── 20211114_1221_001.jpg
    │   │       ├── 20211120_1046_001.jpg
    │   │       ├── 20211120_1113_001.jpg
    │   │       ├── 20211124_1400_001.jpg
    │   │       ├── 20211125_0213_001.jpg
    │   │       ├── 20211201_0855_001.jpg
    │   │       ├── 20211208_1034_001.jpg
    │   │       ├── 20211211_2024_001.jpg
    │   │       ├── 20211215_2011_001.jpg
    │   │       ├── 20211220_2035_001.jpg
    │   │       ├── 20211228_1817_001.jpg
    │   │       ├── 20211229_1333_0011.jpg
    │   │       ├── 20220105_0111_001.jpg
    │   │       ├── 20220107_1501_001.jpg
    │   │       ├── 20220202_1530_001.jpg
    │   │       ├── 20220205_2125_000.jpg
    │   │       ├── 20220209_1110_000.jpg
    │   │       ├── 20220216_2232_001.jpg
    │   │       ├── 20220219_1852_001.jpg
    │   │       ├── 22020212_0015_000.jpg
    │   │       ├── news_and_announcements.jpg
    │   │       ├── news_and_announcements2.jpg
    │   │       ├── news_and_announcements21.jpg
    │   │       ├── news_and_announcements212.jpg
    │   │       ├── news_and_announcements2121.jpg
    │   │       ├── news_and_announcements2122.jpg
    │   │       └── news_and_announcements2123.jpg
    │   ├── products
    │   │   ├── full
    │   │   │   ├── 010.jpg
    │   │   │   ├── 042.jpg
    │   │   │   ├── 084.jpg
    │   │   │   ├── 118.jpg
    │   │   │   ├── 174.jpg
    │   │   │   ├── 218.jpg
    │   │   │   ├── 262.jpg
    │   │   │   ├── Krimean_Tatar_Cuisine_Book_UA.jpg
    │   │   │   ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_01_%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F.jpg
    │   │   │   ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_03.jpg
    │   │   │   ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_07.jpg
    │   │   │   ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_09.jpg
    │   │   │   ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_11.jpg
    │   │   │   ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_13.jpg
    │   │   │   ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_15.jpg
    │   │   │   ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_19.jpg
    │   │   │   ├── Pages_from_SMACHNA_185_255_MM_08_11-2_Page_1.jpg
    │   │   │   ├── Pages_from_SMACHNA_185_255_MM_08_11-2_Page_2.jpg
    │   │   │   ├── Pages_from_SMACHNA_185_255_MM_08_11-2_Page_3.jpg
    │   │   │   ├── Pages_from_SMACHNA_185_255_MM_08_11-2_Page_4.jpg
    │   │   │   ├── Pages_from_SMACHNA_185_255_MM_08_11-2_Page_5.jpg
    │   │   │   ├── Pages_from_SMACHNA_185_255_MM_08_11_Page_1.jpg
    │   │   │   ├── Pages_from_SMACHNA_185_255_MM_08_11_Page_2.jpg
    │   │   │   ├── Pages_from_SMACHNA_185_255_MM_08_11_Page_3.jpg
    │   │   │   ├── Pages_from_Ukraine__Food_and_History_04.jpg
    │   │   │   ├── Pages_from_Ukraine__Food_and_History_06.jpg
    │   │   │   ├── Pages_from_Ukraine__Food_and_History_08.jpg
    │   │   │   ├── Pages_from_Ukraine__Food_and_History_09.jpg
    │   │   │   ├── Pages_from_Ukraine__Food_and_History_14.jpg
    │   │   │   ├── Pages_from_Ukraine__Food_and_History_17.jpg
    │   │   │   ├── Pages_from_Ukraine__Food_and_History_18.jpg
    │   │   │   ├── Pages_from_Ukraine__Food_and_History_20.jpg
    │   │   │   ├── Roman_Toder_Vysoka_Kuhnia_UA.jpg
    │   │   │   ├── Smachna_Kropyvnychchyna.jpg
    │   │   │   ├── Ukraine_Food_and_History_Book_UA.jpg
    │   │   │   ├── Ukraine_Food_and_History_Book_UA_new1.jpg
    │   │   │   ├── Ukraine_Food_and_History_EN.jpg
    │   │   │   ├── cook_book_15042019_14.jpg
    │   │   │   ├── cook_book_15042019_16.jpg
    │   │   │   ├── cook_book_15042019_25.jpg
    │   │   │   ├── cook_book_15042019_48.jpg
    │   │   │   └── food_book_demo_013.png
    │   │   ├── medium
    │   │   │   ├── Krimean_Tatar_Cuisine_Book_UA.jpg
    │   │   │   ├── Roman_Toder_Vysoka_Kuhnia_UA.jpg
    │   │   │   ├── Smachna_Kropyvnychchyna.jpg
    │   │   │   ├── Ukraine_Food_and_History_Book_UA_new1.jpg
    │   │   │   ├── Ukraine_Food_and_History_EN.jpg
    │   │   │   └── food_book_demo_013.png
    │   │   └── thumbnails
    │   │       ├── 010.jpg
    │   │       ├── 042.jpg
    │   │       ├── 084.jpg
    │   │       ├── 118.jpg
    │   │       ├── 174.jpg
    │   │       ├── 218.jpg
    │   │       ├── 262.jpg
    │   │       ├── Krimean_Tatar_Cuisine_Book_UA.jpg
    │   │       ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_01_%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F.jpg
    │   │       ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_03.jpg
    │   │       ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_07.jpg
    │   │       ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_09.jpg
    │   │       ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_11.jpg
    │   │       ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_13.jpg
    │   │       ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_15.jpg
    │   │       ├── Pages_from_20211101-beaver_v2_p_sm-edit_Page_19.jpg
    │   │       ├── Pages_from_SMACHNA_185_255_MM_08_11-2_Page_1.jpg
    │   │       ├── Pages_from_SMACHNA_185_255_MM_08_11-2_Page_2.jpg
    │   │       ├── Pages_from_SMACHNA_185_255_MM_08_11-2_Page_3.jpg
    │   │       ├── Pages_from_SMACHNA_185_255_MM_08_11-2_Page_4.jpg
    │   │       ├── Pages_from_SMACHNA_185_255_MM_08_11-2_Page_5.jpg
    │   │       ├── Pages_from_SMACHNA_185_255_MM_08_11_Page_1.jpg
    │   │       ├── Pages_from_SMACHNA_185_255_MM_08_11_Page_2.jpg
    │   │       ├── Pages_from_SMACHNA_185_255_MM_08_11_Page_3.jpg
    │   │       ├── Pages_from_Ukraine__Food_and_History_04.jpg
    │   │       ├── Pages_from_Ukraine__Food_and_History_06.jpg
    │   │       ├── Pages_from_Ukraine__Food_and_History_08.jpg
    │   │       ├── Pages_from_Ukraine__Food_and_History_09.jpg
    │   │       ├── Pages_from_Ukraine__Food_and_History_14.jpg
    │   │       ├── Pages_from_Ukraine__Food_and_History_17.jpg
    │   │       ├── Pages_from_Ukraine__Food_and_History_18.jpg
    │   │       ├── Pages_from_Ukraine__Food_and_History_20.jpg
    │   │       ├── Smachna_Kropyvnychchyna.jpg
    │   │       ├── Ukraine_Food_and_History_Book_UA.jpg
    │   │       ├── Ukraine_Food_and_History_Book_UA_new1.jpg
    │   │       ├── Ukraine_Food_and_History_EN.jpg
    │   │       ├── cook_book_15042019_14.jpg
    │   │       ├── cook_book_15042019_16.jpg
    │   │       ├── cook_book_15042019_25.jpg
    │   │       ├── cook_book_15042019_48.jpg
    │   │       └── food_book_demo_013.png
    │   ├── projects
    │   │   ├── full
    │   │   │   ├── 100.jpg
    │   │   │   ├── 20181218_001.jpg
    │   │   │   ├── 20190503_001.jpg
    │   │   │   ├── 20190511_001.jpg
    │   │   │   ├── 20191107_aps_001_920560.jpg
    │   │   │   ├── 20200219_005.jpg
    │   │   │   ├── 20201026_001.jpg
    │   │   │   ├── 20210611_0015_0011.jpg
    │   │   │   ├── 20210708_2002_001.jpg
    │   │   │   ├── 20210729_1507_0001.jpg
    │   │   │   └── Ukraine__Food_and_History_Cover.jpg
    │   │   └── medium
    │   │       ├── 100.jpgw=600
    │   │       ├── 20181218_001.jpgw=600
    │   │       ├── 20190503_001.jpgw=600
    │   │       ├── 20190511_001.jpgw=600
    │   │       ├── 20191107_aps_001_920560.jpgw=600
    │   │       ├── 20200219_005.jpgw=600
    │   │       ├── 20201026_001.jpgw=600
    │   │       ├── 20210611_0015_0011.jpgw=600
    │   │       ├── 20210708_2002_001.jpgw=600
    │   │       ├── 20210729_1507_0001.jpgw=600
    │   │       └── Ukraine__Food_and_History_Cover.jpgw=600
    │   ├── publications
    │   │   ├── full
    │   │   │   ├── Krimean_Tatar_Cuisine_Book.jpg
    │   │   │   └── Ukraine_Food_and_History.jpg
    │   │   └── small
    │   │       ├── Krimean_Tatar_Cuisine_Book.jpg
    │   │       └── Ukraine_Food_and_History.jpg
    │   └── videos
    │       ├── medium
    │       │   ├── %D0%A3%D0%BA%D1%80%D0%B0%D1%97%D0%BD%D0%B0-%D0%87%D0%B6%D0%B0-%D1%82%D0%B0-%D0%86%D1%81%D1%82%D0%BE%D1%80%D1%96%D1%8F.jpgw=600
    │       │   ├── 1st_event_v2.jpgw=600
    │       │   ├── 20200629_hrn_000_19201080.jpgw=600
    │       │   ├── 20210225_0001.jpgw=600
    │       │   ├── 2nd_event_v2.jpgw=600
    │       │   ├── Cook_diplom_UA_2-01.jpgw=600
    │       │   ├── USTYT.jpgw=600
    │       │   ├── USTYT1.jpgw=600
    │       │   ├── dtMDcD7zRCM.jpgw=600
    │       │   ├── jCxypraDXXs.jpgw=600
    │       │   ├── maxresdefault.jpgw=600
    │       │   ├── maxresdefault_(1).jpgw=600
    │       │   └── maxresdefault_(2).jpgw=600
    │       └── small
    │           ├── %D0%A3%D0%BA%D1%80%D0%B0%D1%97%D0%BD%D0%B0-%D0%87%D0%B6%D0%B0-%D1%82%D0%B0-%D0%86%D1%81%D1%82%D0%BE%D1%80%D1%96%D1%8F.jpg
    │           ├── 1st_event_v2.jpg
    │           ├── 20200629_hrn_000_19201080.jpg
    │           ├── 20210225_0001.jpg
    │           ├── 2nd_event_v2.jpg
    │           ├── Cook_diplom_UA_2-01.jpg
    │           ├── UST001YT.jpg
    │           ├── UST003YT.jpg
    │           ├── UST004YT.jpg
    │           ├── UST005YT.jpg
    │           ├── UST006YT.jpg
    │           ├── UST007YT.jpg
    │           ├── UST008YT.jpg
    │           ├── UST008YT1.jpg
    │           ├── UST009YT.jpg
    │           ├── UST010YT.jpg
    │           ├── UST012YT.jpg
    │           ├── UST013YT.jpg
    │           ├── UST014YT.jpg
    │           ├── UST015YT.jpg
    │           ├── UST016YTT.jpg
    │           ├── UST017YT.jpg
    │           ├── USTYT.jpg
    │           ├── USTYT1.jpg
    │           ├── dtMDcD7zRCM.jpg
    │           ├── hqdefault.jpg
    │           ├── hqdefault_(2).jpg
    │           ├── hqdefault_(3).jpg
    │           ├── jCxypraDXXs.jpg
    │           ├── maxresdefault.jpg
    │           ├── maxresdefault1.jpg
    │           ├── maxresdefault_(1).jpg
    │           ├── maxresdefault_(2).jpg
    │           ├── maxresdefault_(3).jpg
    │           ├── maxresdefault_(4).jpg
    │           └── maxresdefault_(5).jpg
    └── wysiwyg
        └── images
            ├── %D0%93%D0%B0%D0%BB%D0%B8%D1%87%D0%B8%D0%BD%D0%B0.png
            ├── %D0%94%D0%B0%D1%80%D1%82.jpg
            ├── %D0%A3%D0%9A%D0%A4jpg.jpg
            ├── %D0%A3%D0%BA%D1%80%D0%B0%D1%97%D0%BD%D0%B0_pdf2.jpg
            ├── %D0%A6%D0%93%D0%94.jpg
            ├── %D0%B2%D1%96%D1%85%D0%BE%D0%BB%D0%B0.jpg
            ├── 01.jpg
            ├── 02.jpg
            ├── 03.jpg
            ├── 04.jpg
            ├── 04_%D0%BC%D0%B0%D0%BF%D0%B0_%D0%BB%D0%BE%D0%BA%D0%B0%D1%86%D1%96%D1%97_lq22.jpg
            ├── 05.jpg
            ├── 06.jpg
            ├── 07.jpg
            ├── 08.jpg
            ├── 09.jpg
            ├── 10.jpg
            ├── 20180813_002.jpg
            ├── 20180813_003.jpg
            ├── 20180813_004.jpg
            ├── 20180823_002.jpg
            ├── 20180823_003.jpg
            ├── 20180823_004.jpg
            ├── 20180823_005.jpg
            ├── 20180918_002.jpg
            ├── 20180918_003.jpg
            ├── 20180918_005.jpg
            ├── 20181005_002.jpg
            ├── 20181005_003.jpg
            ├── 20181005_004.jpg
            ├── 20181005_005.jpg
            ├── 20181005_006.jpg
            ├── 20181112_002.jpg
            ├── 20181112_003.jpg
            ├── 20190125_004.jpg
            ├── 20190125_005.jpg
            ├── 20190125_007.jpg
            ├── 20190131_002.jpg
            ├── 20190131_003.jpg
            ├── 20190131_004.jpg
            ├── 20190131_005.jpg
            ├── 20190131_006.jpg
            ├── 20190131_007.jpg
            ├── 20190210_002.jpg
            ├── 20190210_003.jpg
            ├── 20190210_004.jpg
            ├── 20190210_005.jpg
            ├── 20190210_006.jpg
            ├── 20190210_007.jpg
            ├── 20190210_008.jpg
            ├── 20190210_009.jpg
            ├── 20190222_002.jpg
            ├── 20190222_003.jpg
            ├── 20190222_004.jpg
            ├── 20190222_005.jpg
            ├── 20190222_006.jpg
            ├── 20190307_0022.jpg
            ├── 20190307_0031.jpg
            ├── 20190307_004.jpg
            ├── 20190310_005.jpg
            ├── 20190403_002.jpg
            ├── 20190403_0032.jpg
            ├── 20190403_004.jpg
            ├── 20190403_005.jpg
            ├── 20190403_006.jpg
            ├── 20190403_007.jpg
            ├── 20190403_008.jpg
            ├── 20190403_009.jpg
            ├── 20190430_002.jpg
            ├── 20190430_003.jpg
            ├── 20190511_002.jpg
            ├── 20190511_003.jpg
            ├── 20190511_004.jpg
            ├── 20190511_005.jpg
            ├── 20190511_006.jpg
            ├── 20190531_002.jpg
            ├── 20190531_0031.jpg
            ├── 20190531_004.jpg
            ├── 20190617_002.jpg
            ├── 20190617_003.jpg
            ├── 20190617_004.jpg
            ├── 20190617_005.jpg
            ├── 20190617_006.jpg
            ├── 20190617_007.jpg
            ├── 20190618_0022.jpg
            ├── 20190618_0032.jpg
            ├── 20190618_0042.jpg
            ├── 20190618_0052.jpg
            ├── 20190623_002.jpg
            ├── 20190623_003.jpg
            ├── 20190623_004.jpg
            ├── 20190623_005.jpg
            ├── 20190623_006.jpg
            ├── 20190705_0021.jpg
            ├── 20190705_003.jpg
            ├── 20190705_004.jpg
            ├── 20190705_005.jpg
            ├── 20190705_006.jpg
            ├── 20190705_007.jpg
            ├── 20190705_008.jpg
            ├── 20190715_0021.jpg
            ├── 20190715_0031.jpg
            ├── 20190715_0041.jpg
            ├── 20190715_0051.jpg
            ├── 20190715_0061.jpg
            ├── 20190722_002.jpg
            ├── 20190722_003.jpg
            ├── 20190722_004.jpg
            ├── 20190722_005.jpg
            ├── 20190722_006.jpg
            ├── 20190814_002.jpg
            ├── 20190814_003.jpg
            ├── 20190814_004.jpg
            ├── 20190814_005.jpg
            ├── 20190814_006.jpg
            ├── 20190814_007.jpg
            ├── 20190820_002.jpg
            ├── 20190820_003.jpg
            ├── 20190820_004.jpg
            ├── 20190820_005.jpg
            ├── 20191108_003.jpg
            ├── 20191108_004.jpg
            ├── 20191108_005.jpg
            ├── 20191115_002.jpg
            ├── 20191115_004.jpg
            ├── 20191231_002.jpg
            ├── 20191231_003.jpg
            ├── 20191231_004.jpg
            ├── 20191231_005.jpg
            ├── 20191231_006.jpg
            ├── 20191231_007.jpg
            ├── 20191231_008.jpg
            ├── 20191231_009.jpg
            ├── 20191231_010.jpg
            ├── 20191231_011.jpg
            ├── 20191231_012.jpg
            ├── 20191231_013.jpg
            ├── 20191231_014.jpg
            ├── 20191231_015.jpg
            ├── 20191231_016.jpg
            ├── 20191231_017.jpg
            ├── 20191231_018.jpg
            ├── 20191231_019.jpg
            ├── 20191231_020.jpg
            ├── 20191231_021.jpg
            ├── 20191231_022.jpg
            ├── 20191231_023.jpg
            ├── 20192816_002.jpg
            ├── 20192816_003.jpg
            ├── 20192816_004.jpg
            ├── 20192816_005.jpg
            ├── 20192816_006.jpg
            ├── 20200219_0012.jpg
            ├── 20200219_0022.jpg
            ├── 20200219_0032.jpg
            ├── 20200219_0042.jpg
            ├── 20200229_002.jpg
            ├── 20200229_003.jpg
            ├── 20200229_004.jpg
            ├── 20200328_002.jpg
            ├── 20200513_001.jpg
            ├── 20200513_002.jpg
            ├── 20200513_003.jpg
            ├── 20200513_004.jpg
            ├── 20200707_002.jpg
            ├── 20200730_0011.jpg
            ├── 20200730_002.jpg
            ├── 20200730_003.jpg
            ├── 20200730_004.jpg
            ├── 20200823_001.jpg
            ├── 20201026_002.jpg
            ├── 20201026_003.jpg
            ├── 20201026_004.jpg
            ├── 20201026_005.jpg
            ├── 20201026_006.jpg
            ├── 20201105_002.jpg
            ├── 20201105_003.jpg
            ├── 20201111_002.jpg
            ├── 20201111_003.jpg
            ├── 20201111_004.jpg
            ├── 20201111_005.jpg
            ├── 20201125_002.jpg
            ├── 20201128_002.jpg
            ├── 20201202_002.jpg
            ├── 20201202_003.jpg
            ├── 20201221_002s.jpg
            ├── 20201221_003s.jpg
            ├── 2020314_0021.jpg
            ├── 2020314_003.jpg
            ├── 2020314_004.jpg
            ├── 2020314_005.jpg
            ├── 2020314_006.jpg
            ├── 2020314_007.jpg
            ├── 2020405_002.jpg
            ├── 20210126_0021.jpg
            ├── 20210126_0031.jpg
            ├── 20210126_0042.jpg
            ├── 20210126_0051.jpg
            ├── 20210202_002.jpg
            ├── 20210210_002.jpg
            ├── 20210219_002.jpg
            ├── 20210310_1833_002.jpg
            ├── 20210314_0919_002.jpg
            ├── 20210314_0919_003.jpg
            ├── 20210324_1501_002.jpg
            ├── 20210326_2052_002.jpg
            ├── 20210326_2052_003.jpg
            ├── 20210326_2052_004.jpg
            ├── 20210326_2052_005.jpg
            ├── 20210401_2206_002.jpg
            ├── 20210402_1805_002.jpg
            ├── 20210411_0156_0022.jpg
            ├── 20210411_0156_003.jpg
            ├── 20210602_1703_002.jpg
            ├── 20210622_1108_003.jpg
            ├── 20210702_1936_0021.jpg
            ├── 20210702_1936_003.jpg
            ├── 20210702_1936_004.jpg
            ├── 20210702_1936_005.jpg
            ├── 20210709_0049_002.jpg
            ├── 20210709_0049_003.jpg
            ├── 20210709_0049_004.jpg
            ├── 20210709_0049_0051.jpg
            ├── 20210729_1507_0011.jpg
            ├── 20210729_1507_002.jpg
            ├── 20210729_1507_003.jpg
            ├── 20210729_1507_004.jpg
            ├── 20210729_1507_005.jpg
            ├── 20210729_1507_006.jpg
            ├── 20210729_1507_007.jpg
            ├── 20210729_1507_008.jpg
            ├── 20210729_1507_009.jpg
            ├── 20210729_1507_010.jpg
            ├── 20210729_1507_011.jpg
            ├── 20210729_1507_012.jpg
            ├── 20210811_0829_002.jpg
            ├── 20210901_0744_002.jpg
            ├── 20210918_1211_002.jpg
            ├── 20210929_1443_002.jpg
            ├── 20211008_2050_002.jpg
            ├── 20211008_2050_003.jpg
            ├── 20211008_2050_004.jpg
            ├── 20211008_2050_005.jpg
            ├── 20211022_1521_0021.jpg
            ├── 20211022_1521_0032.jpg
            ├── 20211025_1044_002.jpg
            ├── 20211028_0317_002.jpg
            ├── 20211028_0317_003.jpg
            ├── 20211029_0928_002.jpg
            ├── 20211029_0928_003.jpg
            ├── 20211029_0928_004.jpg
            ├── 20211029_0928_005.jpg
            ├── 20211106_1256_002.jpg
            ├── 20211112_1112_002.png
            ├── 20211112_1112_0031.png
            ├── 20211124_1400_002.jpg
            ├── 20220105_0111_0022.jpg
            ├── 20220105_0111_0031.jpg
            ├── 20220105_0111_0041.jpg
            ├── 20220105_0111_0051.jpg
            ├── 20220105_0111_0061.jpg
            ├── 20220105_0111_0071.jpg
            ├── 20220105_0111_0081.jpg
            ├── 20220105_0111_0091.jpg
            ├── 20220107_1500_0022.jpg
            ├── 20220107_1500_0031.jpg
            ├── Big_Idea.jpg
            ├── CFS_logos_all_2020-04.png
            ├── FHKNU1.jpg
            ├── HBSlogo.png
            ├── Honchar_Museum.jpg
            ├── LSM_pdf.jpg
            ├── Logo_RGB-01.jpg
            ├── Magenta-art-books-Logo.jpg
            ├── Ukraine_pdf2.jpg
            ├── Yizhak_2_Logo.jpg
            ├── cfs.jpg
            ├── imagetools07.jpg
            ├── imagetools08.jpg
            ├── imagetools09.jpg
            ├── imagetools12.jpg
            ├── yizhak_logo.png
            └── yizhakultura_logo.png
```

Some image trackers use very long URL query strings that can exceed the
operating system's maximum file name size (depending on your file system). The
program above simply logs these errors and continues along, but depending on
what you are doing you could get fancier with the file name generation.

The program is also available in [this gist]. I wanted to write about it here because this seems like it might be a nice generalized feature to add to the [py-wacz] utility--to be able to extract content from a WACZ file to the file system. But there are details to work out, especially what to do with multiple crawls of the same URL, since those can occur in WARC data. If you have ideas please [let me know].

[SUCHO]: https://sucho.org
[warcio]: https://github.com/webrecorder/warcio
[WACZ]: https://specs.webrecorder.net/WACZ/latest/
[this listing]: https://www.sucho.org/archives
[this gist]: https://gist.github.com/edsu/b3b5195bd5c16f554017bac3cd90a53b 
[py-wacz]: https://github.com/webrecorder/py-wacz
[let me know]: mailto:ehs@pobox.com
[browsertrix-crawler]: https://github.com/webrecorder/browsertrix-crawler
[yizhakultura-com.wacz]: https://files.sucho.org/archives/yizhakultura-com.wacz
