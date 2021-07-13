USE MySqlGoItHomeWork;

ALTER TABLE developers
    ADD salary DECIMAL;

UPDATE developers
SET salary = 7600
WHERE name = 'Вася';

UPDATE developers
SET salary = 6660
WHERE name = 'Коля';

UPDATE developers
SET salary = 3600
WHERE name = 'Костя';

UPDATE developers
SET salary = 5600
WHERE name = 'Витя';

UPDATE developers
SET salary = 3600
WHERE name = 'Юра';

UPDATE developers
SET salary = 1750
WHERE name = 'Ира';

UPDATE developers
SET salary = 2750
WHERE name = 'Дима';

UPDATE developers
SET salary = 2550
WHERE name = 'Катя';

UPDATE developers
SET salary = 4750
WHERE name = 'Антон';

UPDATE developers
SET salary = 2250
WHERE name = 'Лена';

UPDATE developers
SET salary = 5550
WHERE name = 'Маша';

UPDATE developers
SET salary = 8750
WHERE name = 'Миша';
