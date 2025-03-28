-- Inserting sample data
INSERT INTO Samochody (id_samochodu, marka, model, rocznik, cena_za_dobe, dostepny) VALUES
(1, 'Toyota', 'Corolla', 2020, 150.00, TRUE),
(2, 'BMW', 'X5', 2019, 300.00, TRUE),
(3, 'Ford', 'Focus', 2018, 120.00, FALSE);

INSERT INTO Klienci (id_klienta, imie, nazwisko, adres, telefon) VALUES
(1, 'Jan', 'Kowalski', 'ul. Warszawska 10, Kraków', '123456789'),
(2, 'Anna', 'Nowak', 'ul. Gdańska 5, Gdańsk', '987654321');

INSERT INTO Wypozyczenia (id_wypozyczenia, id_klienta, id_samochodu, data_wypozyczenia, data_zwrotu) VALUES
(1, 1, 2, '2024-03-01', '2024-03-05'),
(2, 2, 1, '2024-03-10', '2024-03-12');

INSERT INTO Przebiegi (id_przebiegu, id_samochodu, data, przebieg) VALUES
(1, 1, '2024-02-20', 50000),
(2, 2, '2024-02-25', 75000);

INSERT INTO Serwisy (id_serwisu, id_samochodu, data_serwisu, koszt, opis) VALUES
(1, 1, '2024-02-15', 500.00, 'Wymiana oleju'),
(2, 2, '2024-02-18', 1200.00, 'Naprawa silnika');
