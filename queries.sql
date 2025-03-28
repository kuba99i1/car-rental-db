-- Who rented a car and for how long?
SELECT k.imie, k.nazwisko, s.marka, s.model, w.data_wypożyczenia, w.data_zwrotu
FROM Klienci k
JOIN Wypożyczenia w ON k.id_klienta = w.id_klienta
JOIN Samochody s ON w.id_samochodu = s.id_samochodu;

-- Average mileage per car
SELECT s.marka, s.model, AVG(p.przebieg) as sredni_przebieg
FROM Samochody s
LEFT JOIN Przebiegi p ON s.id_samochodu = p.id_samochodu
GROUP BY s.id_samochodu;
