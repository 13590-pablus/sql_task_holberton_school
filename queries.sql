-- ==========================================
-- 1. ESAS VE SADE SORGU BLOCKLARI
-- ==========================================

SELECT * FROM books;

SELECT title, retail_price FROM books;
 
SELECT * FROM readers;
 
SELECT DISTINCT genre FROM books;

SELECT * FROM books LIMIT 10;


-- ==========================================
-- 2. SERTLI FILTRLEME EMRLERI
-- ==========================================

-- Qiymeti 35-den baha olan kitablar
SELECT * FROM books WHERE retail_price > 35;

-- Şeheri Sumqayit olan oxucular
SELECT * FROM readers WHERE city = 'Sumqayit';

-- Sci-Fi janrında olan kitablar
SELECT * FROM books WHERE genre = 'Sci-Fi';

-- 2026-ci ilin fevralın 15-den sonra baş tutan satışlar
SELECT * FROM sales WHERE sale_date > '2026-02-15';

-- E-maili box.az olan istifadeçiler
SELECT * FROM readers WHERE email LIKE '%@box.az';

-- Qiymeti 15 ile 65 arasında olan kitablar
SELECT * FROM books WHERE retail_price BETWEEN 15 AND 65;

-- Janrı History (Tarix) olmayan kitablar
SELECT * FROM books WHERE genre != 'History';


-- ==========================================
-- 3. STATISTIK VE AQREQAT HESABLAMALARI
-- ==========================================

SELECT COUNT(*) FROM books;

SELECT AVG(retail_price) FROM books;

SELECT COUNT(*) FROM readers;

SELECT SUM(item_qty) FROM sale_items;

SELECT reader_id, COUNT(id) AS invoice_count FROM sales GROUP BY reader_id;

SELECT MAX(retail_price) FROM books;

SELECT genre, COUNT(id) AS quantity_per_genre FROM books GROUP BY genre;


-- ==========================================
-- 4. CADVELLERIN BIRLESDIRILMESI (JOIN)
-- ==========================================

-- Oxucu ve satış melumatlarinin eşleşdirilmesi
SELECT sales.id, readers.first_name, readers.last_name, sales.sale_date 
FROM sales 
INNER JOIN readers ON sales.reader_id = readers.id;

-- Satılan kitablarin analitik siyahisi
SELECT books.title, sale_items.item_qty, sales.sale_date 
FROM sale_items 
INNER JOIN books ON sale_items.book_id = books.id 
INNER JOIN sales ON sale_items.sale_id = sales.id;

-- Oxucularin ümumi aldiqlari kitab sayi
SELECT readers.id, readers.first_name, readers.last_name, SUM(sale_items.item_qty) AS items_total
FROM sales 
INNER JOIN readers ON sales.reader_id = readers.id
INNER JOIN sale_items ON sales.id = sale_items.sale_id
GROUP BY readers.id, readers.first_name, readers.last_name;

-- Alis-veris uzre yekun maliyye hesabbati (miqdar * qiymet)
SELECT readers.id, readers.first_name, readers.last_name, 
       SUM(sale_items.item_qty) AS qty_sum, 
       books.retail_price, 
       SUM(sale_items.item_qty) * books.retail_price AS final_price 
FROM sales 
INNER JOIN readers ON sales.reader_id = readers.id
INNER JOIN sale_items ON sales.id = sale_items.sale_id
INNER JOIN books ON books.id = sale_items.book_id
GROUP BY readers.id, readers.first_name, readers.last_name, books.retail_price;

-- 2026-cı il erzinde icra olunan satıslar
SELECT sales.id, sales.reader_id, sales.sale_date, books.title, books.genre, books.retail_price
FROM sales
INNER JOIN sale_items ON sale_items.sale_id = sales.id
INNER JOIN books ON books.id = sale_items.book_id 
WHERE sales.sale_date BETWEEN '2026-01-01' AND '2026-12-31';

-- En cox kitab alan ilk 5 VIP musteri
SELECT readers.id, readers.first_name, readers.last_name, SUM(sale_items.item_qty) AS top_buyer
FROM sales 
INNER JOIN readers ON sales.reader_id = readers.id
INNER JOIN sale_items ON sales.id = sale_items.sale_id
GROUP BY readers.id, readers.first_name, readers.last_name
ORDER BY top_buyer DESC
LIMIT 5;
