-- TRIGGER: Updating the mileage date on change
CREATE TRIGGER update_data_przebiegu 
AFTER UPDATE OF przebieg ON Przebiegi
FOR EACH ROW
BEGIN
  UPDATE Przebiegi SET data = date('now') WHERE id_przebiegu = NEW.id_przebiegu;
END;

-- Example usage
UPDATE Przebiegi SET przebieg = 25000 WHERE id_przebiegu = 1;
SELECT data FROM Przebiegi WHERE id_przebiegu = 1;
