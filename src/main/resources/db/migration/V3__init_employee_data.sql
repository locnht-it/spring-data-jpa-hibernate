insert into employee (id, birthdate, email, firstname, identifier, lastname, role)
values (
    nextVal('hibernate_sequence'),
    current_date,
    'locnht.it@gmail.com',
    'loc',
    '123123',
    'ngo',
    'ROLE_ADMIN'
);