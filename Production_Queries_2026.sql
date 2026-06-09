--- Tüm hatların adını ve ürün grubunu listeleyen, hat adına göre alfabetik sıralayan sorgu;

select Hat_Adi, Urun_Grubu from production_lines order by Hat_Adi;


---Tüm zamanların toplam üretimini ve toplam hatalı ürünü getiren sorgu;

select SUM(Uretilen_Miktar) as Toplam_Uretim,SUM(Hatali_Urun_Miktari) as Toplam_Hata from production_logs;


---Her bir HatID'si için toplam üretilen miktar;

select Hat_ID, SUM(Uretilen_Miktar) as toplam_uretilen_miktar from production_logs group by Hat_ID;


---Hatalı ürün miktarı 50'den büyük olan üretim loglarını getiren sorgu;

select * from production_logs where Hatali_Urun_Miktari > 50;


---Hat adı ile o hatta ait toplam üretim miktarını getiren sorgu;

select production_lines.Hat_Adi, SUM(Uretilen_Miktar) as toplam_uretilen_miktar from production_lines inner join production_logs on production_lines.Hat_ID = production_logs.Hat_ID group by production_lines.Hat_Adi;


---Toplam üretimi 10000 adetten az olan hatları getiren sorgu;

select production_logs.Hat_ID, SUM(Uretilen_Miktar) as toplam_uretilen_miktar from production_logs group by production_logs.Hat_ID having SUM(Uretilen_Miktar) < 10000 order by toplam_uretilen_miktar DESC;