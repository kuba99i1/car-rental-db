CREATE TABLE Samochody (
    id_samochodu INTEGER PRIMARY KEY,
    marka TEXT NOT NULL,
    model TEXT NOT NULL,
    rocznik INTEGER NOT NULL,
    cena_za_dobe DOUBLE NOT NULL,
    dostepny BOOLEAN NOT NULL
);

CREATE TABLE Klienci (
    id_klienta INTEGER PRIMARY KEY,
    imie TEXT NOT NULL,
    nazwisko TEXT NOT NULL,
    adres TEXT,
    telefon TEXT
);

CREATE TABLE Wypozyczenia (
    id_wypozyczenia INTEGER PRIMARY KEY,
    id_klienta INTEGER,
    id_samochodu INTEGER,
    data_wypozyczenia DATE NOT NULL,
    data_zwrotu DATE,
    FOREIGN KEY (id_klienta) REFERENCES Klienci(id_klienta),
    FOREIGN KEY (id_samochodu) REFERENCES Samochody(id_samochodu)
);

CREATE TABLE Przebiegi (
    id_przebiegu INTEGER PRIMARY KEY,
    id_samochodu INTEGER,
    data DATE NOT NULL,
    przebieg INTEGER NOT NULL,
    FOREIGN KEY (id_samochodu) REFERENCES Samochody(id_samochodu)
);

CREATE TABLE Serwisy (
    id_serwisu INTEGER PRIMARY KEY,
    id_samochodu INTEGER,
    data_serwisu DATE NOT NULL,
    koszt DECIMAL NOT NULL,
    opis TEXT,
    FOREIGN KEY (id_samochodu) REFERENCES Samochody(id_samochodu)
);
