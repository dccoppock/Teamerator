INSERT INTO department (name)
VALUES ("Pataphysics"),                     --1
       ("Etymology"),                       --2
       ("VHS Sales"),                       --3
       ("TV and Microwave Programming"),    --4
       ("VHS Acquisitions");                --5

INSERT INTO role (department_id, title, salary)
VALUES  (1, "Absurdist I", 999999),         --1
        (2, "Junior Wordsearcher", 48000),  --2
        (1, "Surrealist I",31415),          --3
        (3, "VHS Salesman I", 20),          --4
        (5, "VHS Curator", 42),             --5
        (1, "Surrealist II",60203),         --6
        (4, "Director", 1000000);           --7

INSERT INTO role (role_id, manager_id, first_name, last_name)
VALUES  (7, null, "Jack", "Donaghy"),
        (6, null, "Diane", "Smith"),
        (7, null, "Dave", "Barry"),
        (7, null, "John", "Locke"),
        (7, null, "Richard", "Feynman"),
        (1, null, "Paul", "McCarty"),
        (7, null, "Melissa", "Green"),
        (7, null, "Boba", "Fett"),
        (7, null, "Django", "Reinhardt"),
        