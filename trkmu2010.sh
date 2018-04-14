#!/bin/bash
#
# транслітерація відповідно до Постанови КМУ
# "Про впорядкування транслітерації українського алфавіту латиницею"
# від 27 січня 2010 р. N 55
# http://zakon5.rada.gov.ua/laws/show/55-2010-%D0%BF
#
# Sed Translator KMU2010
# (C) 2018 Ihor P. Sokorchuk
#
sed -e "\
s/[ьЬ']//g;\
\
s/зг/zgh/g;s/Зг/Zgh/g;s/ЗГ/ZGH/g;s/зГ/zgH/g;\
\
s/^й/y/g;s/^Й/Y/g;s/\ й/\ y/g;s/\ Й/\ Y/g;s/й/i/g;s/Й/I/g;\
\
s/^є/ye/g;s/^Є/Ye/g;s/\ є/\ ye/g;s/\ Є/\ Ye/g;s/є/ie/g;s/Є/Ie/g;\
\
s/^ї/yi/g;s/^Ї/Yi/g;s/\ ї/\ yi/g;s/\ Ї/\ Yi/g;s/ї/i/g;s/Ї/I/g;\
\
s/^я/ya/g;s/^Я/Ya/g;s/\ я/\ ya/g;s/\ Я/\ Ya/g;s/я/ia/g;s/Я/Ia/g;\
\
s/^ю/yu/g;s/^Ю/Yu/g;s/\ ю/\ yu/g;s/\ Ю/\ Yu/g;s/ю/iu/g;s/Ю/Iu/g;\
\
s/щ/shch/g;s/Щ/Shch/g;\
s/х/kh/g;s/Х/Kh/g;\
s/ш/sh/g;s/Ш/Sh/g;\
s/ж/zh/g;s/Ж/Zh/g;\
s/ч/ch/g;s/Ч/Ch/g;\
s/ц/ts/g;s/Ц/Ts/g;\
\
y/\
уУкКеЕнНгГзЗфФіІвВаАпПрРоОлЛдДґҐсСмМиИтТбБ/\
uUkKeEnNhHzZfFiIvVaApPrRoOlLdDgGsSmMyYtTbB/"
