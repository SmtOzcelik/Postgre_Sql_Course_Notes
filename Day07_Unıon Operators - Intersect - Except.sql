-- UNION OPERATOR -- 

/*
	UNION OPERATOR : 

1-) İki sorgu(query) sonucunu birleştirmek için kullanılır.
2-) Tekrarsız(unique) recordlari verir.
3-) Tek bir sütuna çok sütun koyabiliriz.
4-) Tek bir sütuna çok sütun koyarken mevcut data durumuna dikkat etmek gerekir.

*/

-- Salary değeri 3000'den yüksek olan state değerlerini ve salary değeri 2000'den küçük olan name değerlerini tekarsız olarak bulunuz.
select state AS "Name and State", salary
from workers
where salary > 3000

UNION

select name, salary
from workers
where salary < 2000;

--salary değeri 3000'den yüksek olan state değerlerini ve 2000'den küçük olan name değerlerini tekrarlı olarak bulun.
select state AS "Name and State", salary
from workers
where salary > 3000

UNION ALL -- > UNION ile aynı işi yapar. Ancak tekrarlı değerleri de verir.

select name, salary
from workers
where salary < 2000;

--salary değeri 1000'den yüksek, 2000'den az olan "ortak" name değerlerini bulun.
select name, salary
from workers
where salary>1000

INTERSECT --> INTERSECT operator : iki sorgu (query) sonucunun ortak (common) değerlerini verir, unique(tekrarsiz)  recordlari verir.

select name, salary
from workers
where salary<2000;

--salary değeri 2000'den az olan ve company değeri  IBM, APPLE yada MICROSOFT olan ortak "name" değerlerini bulun.
select name
from workers
WHERE salary<2000

INTERSECT

select name
from workers 
where company in ('IBM', 'APPLE', 'MICROSOFT');

--> EXCEPT Operator : Bir sorgu sonucundan başka bir sorgu sonucunu çıkarmak için kullanılır. Unique(tekrarsız) recordları verir.

--salary değeri 3000'den az ve GOOGLE'da çalışmayan  name değerlerini bulun.
SELECT name
from workers
where salary<3000

except --> EXCEPT Operator : Bir sorgu sonucundan başka bir sorgu sonucunu çıkarmak için kullanılır. Unique(tekrarsız) recordları verir.

select NAME
from workers
where company = 'GOOGLE'

