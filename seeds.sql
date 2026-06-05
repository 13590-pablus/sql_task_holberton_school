-- ==========================================
-- OXUCULAR (READERS) CADVELINE MELUMATLARIN ELAVE EDILMESI
-- ==========================================
INSERT INTO readers (id, first_name, last_name, email, city) VALUES
(1, 'kamil', 'mammadov', 'kamil.m@box.az', 'Sumqayit'),
(2, 'sevinj', 'quliyeva', 'sevinj_q@gmail.com', 'Baku'),
(3, 'farid', 'abbasov', 'farid.a@yahoo.com', 'Ganja'),
(4, 'aynur', 'rzayeva', 'aynur99@box.az', 'Shirvan'),
(5, 'vuqar', 'huseynov', 'vuqar.h@gmail.com', 'Sumqayit'),
(6, 'nermin', 'aliyeva', 'nermin_a@box.az', 'Baku'),
(7, 'jalal', 'qasimov', 'jalalq@gmail.com', 'Mingecevir'),
(8, 'lala', 'mustafayeva', 'lala.m@box.az', 'Quba'),
(9, 'rustam', 'zeynalov', 'rustamz@gmail.com', 'Baku'),
(10, 'ziba', 'novruzova', 'ziba.n@box.az', 'Sumqayit');


-- ==========================================
-- KITABLAR (BOOKS) CADVELINE MELUMATLARIN ELAVE EDILMESI
-- ==========================================
INSERT INTO books (id, title, genre, retail_price) VALUES
(1, 'The Martian', 'Sci-Fi', 22.50),
(2, 'A Brief History of Time', 'Science', 40.00),
(3, 'Foundation', 'Sci-Fi', 18.00),
(4, 'The Hobbit', 'Fantasy', 30.00),
(5, 'Guns, Germs, and Steel', 'History', 55.00),
(6, 'Atomic Habits', 'Self-Help', 25.00),
(7, 'Neuromancer', 'Sci-Fi', 19.99),
(8, 'Becoming', 'Biography', 38.00),
(9, 'Thinking, Fast and Slow', 'Psychology', 42.00),
(10, 'The Alchemist', 'Novel', 14.50),
(11, 'Dune Messiah', 'Sci-Fi', 28.00),
(12, 'Sapiens', 'History', 48.00);


-- ==========================================
-- SATISLAR (SALES) CADVELINE MELUMATLARIN ELAVE EDILMESI
-- ==========================================
INSERT INTO sales (id, reader_id, sale_date) VALUES
(1, 3, '2026-01-10'),
(2, 1, '2026-02-18'),
(3, 5, '2026-02-20'),
(4, 7, '2026-03-05'),
(5, 2, '2026-03-12'),
(6, 10, '2026-03-15'),
(7, 4, '2026-04-02'),
(8, 8, '2026-04-10'),
(9, 6, '2026-05-22'),
(10, 9, '2026-06-01'),
(11, 2, '2026-06-18'),
(12, 1, '2026-07-05'),
(13, 5, '2026-08-14'),
(14, 3, '2026-09-09'),
(15, 8, '2026-10-21'),
(16, 7, '2026-11-11'),
(17, 10, '2026-11-25'),
(18, 4, '2026-12-05');


-- ==========================================
-- SATIS DETALLARI (SALE_ITEMS) CADVELINE MELUMATLARIN ELAVE EDILMESI
-- ==========================================
INSERT INTO sale_items (id, sale_id, book_id, item_qty) VALUES
(1, 1, 5, 1),
(2, 1, 10, 2),
(3, 2, 1, 1),
(4, 3, 3, 3),
(5, 3, 7, 1),
(6, 4, 12, 1),
(7, 5, 2, 2),
(8, 5, 8, 1),
(9, 6, 4, 1),
(10, 7, 6, 4),
(11, 7, 9, 1),
(12, 8, 11, 2),
(13, 9, 1, 1),
(14, 10, 5, 1),
(15, 10, 2, 1),
(16, 11, 10, 3),
(17, 12, 3, 2),
(18, 13, 7, 1),
(19, 13, 12, 1),
(20, 14, 8, 2),
(21, 15, 4, 1),
(22, 15, 6, 2),
(23, 16, 9, 1),
(24, 17, 11, 1),
(25, 18, 1, 3);
