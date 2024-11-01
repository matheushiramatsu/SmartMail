INSERT INTO User (name, email, password) VALUES ('Allan Bichler', 'allan.bichler@example.com', 'password123');
INSERT INTO User (name, email, password) VALUES ('Caio Henrique Gomes da Silva', 'caio.gomes@example.com', 'password123');
INSERT INTO User (name, email, password) VALUES ('Luis Felipe', 'luis.felipe@example.com', 'password123');
INSERT INTO User (name, email, password) VALUES ('Matheus Akira', 'matheus.akira@example.com', 'password123');

INSERT INTO Folder (user_id, name) VALUES (1, 'Trabalho');
INSERT INTO Folder (user_id, name) VALUES (1, 'Pessoal');
INSERT INTO Folder (user_id, name) VALUES (2, 'Projetos');
INSERT INTO Folder (user_id, name) VALUES (3, 'Lembretes');
INSERT INTO Folder (user_id, name) VALUES (4, 'Tarefas');

INSERT INTO Email (user_id, subject, content, sender, received_at, folder_id)
VALUES (1, 'Reunião de projeto', 'Agendar reunião para discutir o progresso do projeto.', 'colega@empresa.com', '2024-11-01 09:00:00', 1);
INSERT INTO Email (user_id, subject, content, sender, received_at, folder_id)
VALUES (2, 'Parabéns pelo trabalho', 'Gostei muito do seu último trabalho!', 'amigo@rede.com', '2024-11-01 10:30:00', 3);
INSERT INTO Email (user_id, subject, content, sender, received_at, folder_id)
VALUES (3, 'Entrega de documento', 'Enviar o relatório atualizado até o prazo final.', 'supervisor@empresa.com', '2024-11-01 11:15:00', 4);
INSERT INTO Email (user_id, subject, content, sender, received_at, folder_id)
VALUES (4, 'Convite para evento', 'Você foi convidado para o evento anual da empresa.', 'rh@empresa.com', '2024-11-01 14:00:00', 5);

INSERT INTO Event (user_id, email_id, title, date, time)
VALUES (1, 1, 'Reunião com equipe', '2024-11-02', '10:00:00');
INSERT INTO Event (user_id, email_id, title, date, time)
VALUES (2, 2, 'Apresentação de trabalho', '2024-11-05', '15:00:00');

INSERT INTO Task (user_id, email_id, description, due_date, status)
VALUES (3, 3, 'Enviar relatório final', '2024-11-10', 'pendente');
INSERT INTO Task (user_id, email_id, description, due_date, status)
VALUES (4, 4, 'Responder convite para evento', '2024-11-02', 'concluído');

INSERT INTO Reminder (user_id, task_id, reminder_time)
VALUES (3, 1, '2024-11-09 08:00:00');
INSERT INTO Reminder (user_id, task_id, reminder_time)
VALUES (4, 2, '2024-11-01 09:00:00');
