

-- Esercizio 2 Hotel SQL

-- 1. Seleziona tutti gli ospiti che sono stati identificati con la carta di identità
-- RISPOSTA
SELECT * FROM `ospiti` WHERE `document_type` = 'CI';


-- 2. Seleziona tutti gli ospiti che sono nati dopo il 1988
-- RISPOSTA
SELECT * FROM `ospiti` WHERE `date_of_birth` > '1988';


-- 3. Seleziona tutti gli ospiti che hanno più di 20 anni (al momento dell’esecuzione della query)
-- RISPOSTA
SELECT * FROM `ospiti` WHERE `date_of_birth` < NOW() - INTERVAL 20 YEAR;


-- 4. Seleziona tutti gli ospiti il cui nome inizia con la D
-- RISPOSTA
SELECT * FROM `ospiti` WHERE `name` LIKE 'D%';


-- 5. Calcola il totale incassato degli ordini accepted
-- RISPOSTA
SELECT SUM(`price`) FROM `pagamenti` WHERE `status` = 'accepted';


-- 6. Qual è il prezzo massimo pagato?
-- RISPOSTA
SELECT MAX(`price`) FROM `pagamenti`;


-- 7. Seleziona gli ospiti riconosciuti con patente e nati nel 1975
-- RISPOSTA
SELECT * FROM `ospiti` WHERE `document_type` = 'Driver License' AND YEAR(`date_of_birth`) = '1975';


-- 8. Quanti paganti sono anche ospiti?
-- RISPOSTA
SELECT COUNT(`id`) FROM `paganti` WHERE `ospite_id` <> 'NULL';


-- 9. Quanti posti letto ha l’hotel in totale?
-- RISPOSTA
SELECT SUM(`beds`) FROM `stanze`;