INSERT INTO partner
  (partner_id, enterprise_name, contact_email, contact_phone, address)
VALUES
  ('p0001', 'MeFit', 'contact@mefit.ca', '6131234567', '123 Laurier Ave, Ottawa, ON K1R 123'),
  ('p0002', 'SportCo', 'info@sportco.com', '6139876543', '567 Rideau St, Ottawa, ON K1A 456');



INSERT INTO competition
  (competition_id, partner_id, name, venue_name, venue_address, start_date, end_date, duration, year, rules)
VALUES
  ('c0001', 'p0001', 'Fitness Competition', 'TD Place', '1015 Bank St, Ottawa, ON K1S 3W7', '2021-03-01 13:00:00', '2021-03-04 18:00:00', '3 days', 75, 'Every athlete must register on time to compete'),
  ('c0002', 'p0002', 'Track Meet', 'MNP Park', '1125 Colonel By Dr, Ottawa, ON K1S 5R1', '2021-05-20 6:00:00', '2021-05-20 20:00:00', '1 day', 3, '1. Athletes must show up on time'),
  ('c0003', 'p0001', 'Allstar Competition', 'RCGT Park', '302 Coventry Rd, Ottawa, ON K1K 4P5', '2021-05-02 07:00:00', '2021-05-04 19:00:00', '2 days', 4, 'Athletes must be over the age of 18'),
  ('c0004', 'p0002', 'Ottawa Fitness Competition', 'TD Place', '1015 Bank St, Ottawa, ON K1S 3W7', '2021-07-20 08:00:00', '2021-07-24 15:00:00', '4 days', 50, 'Athletes must pay a fee to participate'),
  ('c0005', 'p0002', 'Toronto Fitness Competition', 'Rogers Centre', '1 Blue Jays Way, Toronto, ON M5V 1J1', '2021-09-12 09:00:00', '2021-09-17 18:00:00', '5 days', 33, null);
