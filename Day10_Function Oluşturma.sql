-- FUNCTİON OLUŞTURMA -- 

-- 1. Örnek: İki parametre ile çalışıp bu parametreleri toplayarak return yapan bir fonksiyon oluşturun.
create or REPLACE function toplamaF(x numeric, y numeric)
returns NUMERIC
LANGUAGE plpgsql
as 
$$
BEGIN 

return x+y;

end 
$$

SELECT * FROM toplamaF(15,25) as toplam;









