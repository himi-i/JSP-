Create table if not exists product (
	p_id varchar(10) not null,
	p_name varchar(100),
	p_unitPrice integer,
	p_description TEXT,
	p_category varchar(20),
	p_unitsInStock LONG,
	p_fileName varchar(64),
	PRIMARY KEY (p_id)
)default charset=utf8;

INSERT INTO product (p_id, p_name, p_unitPrice, p_description, p_category, p_unitsInStock, p_fileName)
VALUES 
('T1', 'vintage gold mini tree', 36000, '빈티지 골드 미니트리', 'Trees', 1000, 'Tree1.jpeg'),
('T2', 'teddy bear basket tree', 35900, '테디베어 바스켓 미니 트리 2 sizes', 'Trees', 1000, 'Tree2.jpeg'),
('T3', 'gold basket tree', 35900, '골드 바스켓 트리 2 sizes', 'Trees', 1000, 'Tree3.jpeg'),
('T4', 'gold basket tree', 35900, '진저브레드 미니트리', 'Trees', 1000, 'Tree4.jpg'),
('T5', 'Merry signature premium tree', 179000, '메리트리 크리스마스 트리', 'Trees', 1000, 'Tree5.jpeg'),
('W1', 'premium Belle wreath', 49000, '프리미엄 크리스마스 벨 리스', 'Wreath', 1000, 'wreath1.jpeg'),
('W2', 'christmas premium wreath', 49000, '프리미엄 크리스마스 리스', 'Wreath', 1000, 'wreath2.jpeg'),
('ORN1', 'teddy bear ornaments set', 19000, '테디베어 오너먼트 세트 구성', 'Ornaments', 1000, 'ornaments1.jpeg'),
('ORN2', 'tears glass ornaments', 29000, '티얼스 고드름 유리 오너먼트(6개입)', 'Ornaments', 1000, 'ornaments2.jpeg'),
('ORN3', 'Ball ornaments', 5500, '볼 오너먼트 8종', 'Ornaments', 1000, 'ornaments3.jpeg'),
('ORN4', 'RED velvet ribbon ornament', 2500, '벨벳 리본오너먼트 2sizes','Ornaments', 1000, 'ornaments4.jpeg'),
('ORN5', 'special tree ornaments', 16000, '스페셜 트리 오너먼트', 'Ornaments', 1000, 'ornaments5.jpeg'),
('ORG1', 'mini red brick house snowball', 14900, '미니 레드 브릭하우스 스노우볼 워터볼', 'Orgels', 1000, 'orgel1.jpeg'),
('ORG2', 'tree truck santa waterball orgel', 94000, '트리트럭 산타 워터볼 오르골', 'Orgels', 1000, 'orgel2.jpeg'),
('ORG3', 'candy shop waterball orgel', 69000, '캔디샵 워터볼 오르골', 'Orgels', 1000, 'orgel3.jpeg'),
('ORG4', 'fireplace house santa waterball orgel', 79000, '벽난로 산타 워터볼 오르골', 'Orgels', 1000, 'orgel4.jpeg'),
('ORG5', '2in1 train waterball orgel', 159000, '2단 기차 워터볼 오르골', 'Orgels', 1000, 'orgel5.jpeg'),
('L1', 'LED wire bulb',22900, '크리스마스 전구 지네전구 (200구)', 'Lights', 1000, 'light.jpeg'),
('L2', '[추천사이즈] LED wire bulb',36900, '크리스마스 전구 지네전구 (400구)', 'Lights', 1000, 'light.jpeg');

select * from product;
