-- 1.Come si chiamano gli ospiti che hanno fatto più di due prenotazioni?
-- RISPOSTA
SELECT COUNT(prenotazioni_has_ospiti.ospite_id) AS 'Numero prenotazioni' , ospiti.name , ospiti.lastname 
FROM prenotazioni_has_ospiti 
INNER JOIN ospiti 
ON prenotazioni_has_ospiti.ospite_id = ospiti.id
GROUP BY ospite_id
HAVING COUNT(ospite_id) > 2;


-- 2.Stampare tutti gli ospiti per ogni prenotazione
-- RISPOSTA
SELECT `prenotazioni_has_ospiti`.`prenotazione_id` AS 'Numero Prenotazione', `ospiti`.`name` AS 'Nome',`ospiti`.`lastname` AS 'Cognome'
FROM `ospiti`
INNER JOIN `prenotazioni_has_ospiti`
ON `prenotazioni_has_ospiti`.`ospite_id` = `ospiti`.`id`


-- 3.Stampare Nome, Cognome, Prezzo e Pagante per tutte le prenotazioni fatte a Maggio 2018 
-- RISPOSTA
SELECT `paganti`.`name`,`paganti`.`lastname`,`pagamenti`.`price`,`pagamenti`.`status`
FROM `paganti` 
INNER JOIN `pagamenti`
ON `paganti`.`id` = `pagamenti`.`pagante_id`
WHERE `pagamenti`.`created_at` >= '2018-05-01'
AND `pagamenti`.`created_at` <= '2018-05-31'



-- 4.Fai la somma di tutti i prezzi delle prenotazioni per le stanze del primo piano
-- RISPOSTA


-- 5.Prendi i dati di fatturazione per la prenotazionecon id=7
-- RISPOSTA



-- 6.Le stanze sono state tutte prenotate almeno una volta? (Visualizzare le stanze non ancora prenotate)
-- RISPOSTA