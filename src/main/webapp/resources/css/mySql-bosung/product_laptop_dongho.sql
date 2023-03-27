create database iviettech;

create table categorys (
id int primary key auto_increment,
name varchar (1000)
);

create table products (
id int primary key auto_increment,
description varchar(5000),
image varchar(5000),
name varchar(5000),
price double,
productDate date,
quantity int,
categoryId int not null, foreign key (categoryId) references categorys(id)
);

insert into categorys (name) values
('Điện Thoại'),
('Laptop'),
('Đồng Hồ'),
('Tablet'),
('AUDIO');

insert into products (description, image, name, price, productDate, quantity, categoryId) values
('Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.','../','Laptop Apple MacBook Air M1 2020 8GB/256GB/7-core GPU (MGND3SA/A)', 19990000, '2020-01-02', 200, 2),
('Apple đã giới thiệu MacBook Pro 14 inch vào tháng 10/2021, mang một diện mạo mới cùng bộ vi xử lý do hãng tự phát triển, không chỉ cho hiệu năng vượt trội mà còn sở hữu màn hình với khả năng hiển thị thực sự ấn tượng, khiến mình mê mẩn khi cầm trên tay trải nghiệm.','../','Laptop MacBook Pro 14 M1 Pro 2021 8-core CPU/16GB/512GB/14-core GPU (MKGR3SA/A) ',43990000,'2021-10-02',156,2),
('Sau 14 năm, ba lần sửa đổi và hai kiến trúc bộ vi xử lý khác nhau, kiểu dáng mỏng dần mang tính biểu tượng của MacBook Air đã đi vào lịch sử. Thay vào đó là một chiếc MacBook Air M2 với thiết kế hoàn toàn mới, độ dày không thay đổi tương tự như MacBook Pro, đánh bật mọi rào cản với con chip Apple M2 đầy mạnh mẽ.','../','Laptop Apple MacBook Air M2 2022 8GB/256GB/8-core GPU (MLXW3SA/A)',28090000,'2020-08-01',241,2),
('Sở hữu thiết kế thanh lịch, sang trọng cùng hiệu năng vượt trội đến từ bộ vi xử lý Apple M2 tân tiến, Macbook Pro M2 hứa hẹn sẽ đáp ứng hoàn hảo cho người dùng sáng tạo, phục vụ tốt cho các nhu cầu thiết kế đồ họa nâng cao.','../','Laptop Apple MacBook Pro M2 2022 8GB/256GB/10-core GPU (MNEH3SA/A)',30590000,'2022-07-17',223,2),
('MacBook Pro 16 M1 Pro 2021 không chỉ sở hữu thiết kế mới trông vuông vức hơn mà còn mang trong mình sức mạnh hiệu năng vượt trội đến từ bộ vi xử lý M1 Pro, cho mình trải nghiệm sử dụng mượt mà và ấn tượng như một dân chuyên đúng nghĩa.','../','Laptop Apple MacBook Pro 16 M1 Pro 2021 10 core-CPU/16GB/512GB/16 core-GPU (MK183SA/A) ',49990000,'2021-03-03',342,2),
('MacBook Air M2 2022 một lần nữa đã khẳng định vị thế hàng đầu của Apple trong phân khúc laptop cao cấp - sang trọng vào giữa năm 2022 khi sở hữu phong cách thiết kế thời thượng, đẳng cấp cùng sức mạnh bộc phá đến từ bộ vi xử lý Apple M2 mạnh mẽ.','../','Laptop Apple MacBook Air M2 2022 16GB/512GB/10-core GPU (Z15Z0003L) ',39990000,'2021-01-02',178,2),
('Sự đẳng cấp của nhà Apple là điều không thể phủ nhận khi nó luôn có những bước cải tiến nổi bật qua từng năm. Và đến năm 2022, sự xuất hiện của con chip M2 trên MacBook Pro M2 16GB là một dấu ấn mạnh mẽ khẳng định vị thế của "nhà Táo" trong phân khúc laptop đồ họa - kỹ thuật.  ','../','Laptop Apple MacBook Pro 13 inch M2 2022 16GB/512GB/10-core GPU (Z16U) ',39090000,'2022-10-27',156,2),
('Macbook Pro M1 2020 được nâng cấp với bộ vi xử lý mới cực kỳ mạnh mẽ, chiếc laptop này sẽ phục vụ tốt cho công việc của bạn, đặc biệt cho lĩnh vực đồ họa, kỹ thuật.','../','Laptop Apple MacBook Pro M1 2020 16GB/512GB (Z11C)',36490000,'2020-11-11',226,2),
('Apple MacBook Air M1 2020 với vẻ ngoài hiện đại cùng cấu hình mạnh mẽ vượt trội đến từ con chip M1 được sản xuất trên quy trình tân tiến, là người bạn đồng hành lý tưởng cho bất kỳ ai trong cả những công việc văn phòng hay thiết kế đồ họa.','../','Laptop Apple MacBook Air M1 2020 16GB/512GB/8-core GPU',31590000,'2020-05-05',99,2),
('Laptop Apple Air M1 2020 có thiết kế đẹp, sang trọng với CPU M1 độc quyền từ Apple cho hiệu năng đồ họa cao, màn hình Retina hiển thị siêu nét cùng với hệ thống bảo mật tối ưu.','../','Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU (Z12A0004Z)',25990000,'2020-01-01',87,2),
('Apple đã âm thầm tung ra thế hệ MacBook Pro 14 inch M2 Pro 2023 hoàn toàn mới, hứa hẹn hiệu suất cao hơn so với MacBook Pro đợt trước, xử lý mượt mà các tác vụ khắt khe của người dùng chuyên nghiệp.','../','Laptop MacBook Pro 14 inch M2 Pro 2023 10-core CPU/16GB/512GB/16-core GPU',53990000,'2023-04-16',101,2),
('Apple vừa giới thiệu đến người dùng chiếc MacBook Pro 16 inch M2 Pro 2023 có kiểu dáng mỏng nhẹ nhưng bên trong là một hiệu năng vô cùng mạnh mẽ đáp ứng được mọi tác vụ, hứa hẹn sẽ trở thành một người bạn đồng hành tuyệt vời trong công việc, học tập và giải trí. ','../','Laptop MacBook Pro 16 inch M2 Pro 2023 12-core CPU/16GB/512GB/19-core GPU',66990000,'2023-05-02',156,2);

insert into products (description, image, name, price, productDate, quantity, categoryId) values
('Đồng hồ thông minh HAYLOU GST với mức giá chưa đến 2 triệu, sở hữu phong cách thiết kế hiện đại, màn hình chất lượng và đa dạng tính năng nên được rất nhiều người dùng lựa chọn. ', '../', 'Đồng hồ thông minh HAYLOU GST 45.1mm Đen', 550000, '2022-03-03', 99,3),
('Màn hình AMOLED sắc nét, dây đeo silicone êm ái Đồng hồ thông minh Suunto 7 Dây silicone phiên bản màu đen trang bị mặt kính cường lực chống va đập, màn hình AMOLED 1.97 inch (454 x 454 pixels) cùng độ sáng lên tới 1000 nits, vì thế có thể hiển thị sắc nét ngay cả khi ở điều kiện có ánh sáng mặt trời. Đặc biệt, với thiết kế dây đeo silicone tạo cảm giác mềm mại và dễ chịu khi đeo trong thời gian dài.', '../', 'Đồng hồ thông minh Suunto 7 50mm', 5800000, '2023-05-05', 158,3),
('Kiểu dáng hiện đại, thời thượng Thiết kế của Apple Watch S7 GPS 41 mm thừa hưởng nhiều nét tương đồng với "người anh" Apple Watch S6 nhưng các góc cạnh được vát tròn mềm mại hơn mang đến cho người đeo cảm giác thanh lịch nhưng không kém phần năng động. Chiếc smartwatch thế hệ thứ 7 được nhà Táo trang bị màn hình OLED 1.61 inch với viền màn hình mỏng hơn 40%, nâng diện tích màn hình lên 20% và nội dung hiển thị trên màn hình cũng nhiều hơn 50% so với thế hệ cũ.', '../', 'Apple Watch Series 7 GPS 41mm', 9490000, '2022-03-03', 70,3),
('Thiết kế năng động, thể thao Đồng hồ thông minh BeU PT2 Đen được trang bị màn hình 1.4 inch cùng độ phân giải 240 x 240 pixels hiển thị hình ảnh và thông tin được rõ ràng, chi tiết. Dây đeo làm bằng silicone êm nhẹ, bền bỉ, thiết kế dạng rãnh giúp ngăn sự tích tụ mồ hôi, tạo cảm giác dễ chịu trong thời gian dài làm việc và luyện tập.', '../', 'Đồng hồ thông minh BeU PT2 51mm Đen', 890000, '2023-05-01', 70,3),
('Phong cách năng động, thời thượng Phiên bản đồng hồ Samsung Galaxy Watch 4 này được thiết kế đơn giản với mặt đồng hồ dạng tròn có đường kính 40 mm thường thấy ở đồng hồ thông minh tạo nên phong cách năng động, cuốn hút. Khung viền đồng hồ được làm từ chất liệu nhôm bền chắc, khối lượng nhẹ. Bên cạnh đó dây đeo silicone êm ái, không gây khó chịu khi đeo suốt ngày dài, kể cả khi người dùng vận động, tập thể thao ra nhiều mồ hôi tay.', '../', 'Đồng hồ thông minh Samsung Galaxy Watch 4 40mm', 3990000, '2020-09-21', 271,3),
('Hãng đồng hồ thông minh BeFit đã cho ra mắt BeFit Sporty 2 dây da với kiểu dáng thời thượng, đa dạng tính năng từ sức khỏe để tập luyện, thời gian sử dụng kéo dài và trang bị nhiều tiện ích phục vụ tốt hơn cho người dùng trong cả công việc lẫn cuộc sống.', '../', 'Đồng hồ thông minh BeFit Sporty 2 44.5mm Nâu', 1390000, '2023-10-11', 69,3),
('Để được người tiêu dùng lựa chọn giữa hàng nghìn sản phẩm ngoài kia thì kiểu dáng đẹp mắt thôi là chưa đủ, mà cần phải trang bị đủ các tính năng theo dõi sức khỏe, luyện tập thể thao,... Befit Sporty 2 Pro không chỉ sở hữu vẻ ngoài bắt mắt mà còn được tích hợp nhiều tính năng thông minh hỗ trợ người dùng một cách tốt nhất.', '../', 'Đồng hồ thông minh BeFit Sporty 2 Pro 44.8mm Đen ', 1890000, '2023-10-10', 76,3),
('Vòng đeo tay thông minh Xiaomi Redmi Band 2 một thiết bị đeo nhỏ gọn, bất kỳ ai cũng có thể sử dụng. Sản phẩm sở hữu thiết kế hiện đại, đa dạng các tính năng sức khỏe, chế độ luyện tập, khả năng kết nối ổn định, thời lượng pin kéo dài,... sẵn sàng đồng hành cùng người dùng trong mọi trường hợp.', '../', 'Vòng đeo tay thông minh Xiaomi Redmi Band 2 ', 790000, '2023-11-11', 67,3),
('Đồng hồ định vị trẻ em Masstel Smart Hero 20 sở hữu kiểu dáng nhỏ gọn, cùng nhiều tính năng như: Gọi Videocall, định vị, ghi lại lộ trình, hạn chế cuộc gọi từ số lạ, tính năng SOS,... giúp phụ huynh bảo vệ các bé tốt hơn.', '../', 'Đồng hồ định vị trẻ em Masstel Smart Hero 20 42mm', 1790000, '2023-09-10', 19,3),
('Vòng đeo tay thông minh Realme Band 2 được thiết kế nhỏ gọn phù hợp với đa dạng người dùng, tính năng bên trong cũng có nhiều cải tiến so với thế hệ trước. Mức giá của sản phẩm vẫn nằm trong phân khúc bình dân nên người dùng có thể dễ dàng tiếp cận và trải nghiệm. ', '../', 'Vòng đeo tay thông minh Realme Band 2 Đen', 590000, '2023-03-03', 96,3),
('Sau thành công của dòng Galaxy Watch4, tháng 8/2022 ông lớn công nghệ Samsung đã cho ra mắt thế hệ smartwatch tiếp theo của hãng mang tên Samsung Galaxy Watch5 40 mm.', '../', 'Đồng hồ thông minh Samsung Galaxy Watch5 40mm', 6490000, '2023-01-03', 167,3),
('Apple Watch S7 LTE 45 mm dây silicone có thiết kế được nâng cấp hơn so với phiên bản S6. Khung viền bằng nhôm tái chế 100% giúp bảo vệ môi trường, các góc bo tròn mềm mại, viền đồng hồ chỉ mỏng 10.7 mm (mỏng hơn 40% phần viền so với Apple Watch S6). Mặt đồng hồ có kích thước 1.77 inch được vác cong tạo cảm giác liền mạch hơn với khung viền, diện tích màn hình tăng 20% so với phiên bản cũ. ', '../', 'Apple Watch Series 7 LTE 45mm', 10190000, '2022-11-11', 89,3),
('Tháng 6/2022, Huami đã cho ra mắt thế hệ tiếp theo của smartwatch Amazfit phổ thông của mình mang tên Amazfit Bip 3, sở hữu thiết kế năng động đi kèm nhiều tính năng thể thao, sức khoẻ với mức giá rất dễ tiếp cận.', '../', 'Đồng hồ thông minh Amazfit Bip 3 44.12mm', 1190000, '2023-04-04', 77,3),
('Xiaomi Watch S1 là chiếc smartwatch mới nhất được nhà Xiaomi cho ra mắt, với diện mạo vô cùng thanh lịch được nâng cấp về mặt thiết kế cũng như tính năng so với thế hệ trước.', '../', 'Đồng hồ thông minh Xiaomi Watch S1 46.5mm', 4790000, '2019-01-02', 89,3),
('Đồng hồ HONOR Watch GS3 là chiếc smartwatch sở hữu diện mạo thanh lịch, được trang bị các tính năng theo dõi sức khỏe, chế độ tập luyện cùng nhiều tiện ích hằng ngày cho người dùng thoả sức khám phá, trải nghiệm.', '../', 'Đồng hồ thông minh HONOR Watch GS3 45.9mm Xanh dương', 5990000, '2021-12-12', 56,3),
('Mang ngôn ngữ thiết kế năng động và thời thượng cùng việc trang bị nhiều tính năng hữu ích, BeFit BeU B3 sẽ là một sản phẩm phù hợp cho người dùng muốn trải nghiệm các tính năng của một chiếc smartwatch, với một mức giá dễ tiếp cận cho thị trường Việt Nam.', '../', 'Đồng hồ thông minh BeFit BeU B3 44mm', 790000, '2023-09-09', 123,3),
('HAYLOU RT2 mẫu đồng hồ thông minh ngon - bổ - rẻ đối với người tiêu dùng bởi mức giá chưa đến 2 triệu đồng mà được trang bị rất nhiều tính năng sức khỏe, thể thao, thông báo tin nhắn, cuộc gọi,... đáp ứng nhu cầu của phần lớn người dùng.', '../', 'Đồng hồ thông minh HAYLOU RT2 45.7mm Đen', 710000, '2023-05-16', 101,3),
('Vòng đeo tay thông minh Mi Band 6 được nhà Xiaomi giới thiệu đến người tiêu dùng với mức giá vô cùng hợp lý, màn hình và tính năng thông minh đều được nâng cấp. Chắc chắn sản phẩm này sẽ làm hài lòng rất nhiều người tiêu dùng hiện nay.', '../', 'Vòng đeo tay thông minh Mi Band 6 Đen ', 1290000, '2023-07-17', 36,3),
('Vòng đeo tay thông minh Realme Band 2 được thiết kế nhỏ gọn phù hợp với đa dạng người dùng, tính năng bên trong cũng có nhiều cải tiến so với thế hệ trước. Mức giá của sản phẩm vẫn nằm trong phân khúc bình dân nên người dùng có thể dễ dàng tiếp cận và trải nghiệm.', '../', 'Vòng đeo tay thông minh Realme Band 2 Đen', 590000, '2022-06-28', 54,3),
('Thương hiệu Itel đang dần trở thành cái tên quen thuộc với người dùng Việt Nam nhờ những sản phẩm điện thoại, laptop,... Tháng 5/2022, Itel vừa cho ra mắt sản phẩm smartwatch đầu tiên của mình mang tên Itel ISW-41, trang bị nhiều tính năng hữu ích với mức giá vô cùng hợp lý.', '../', 'Đồng hồ thông minh Itel ISW-41 ', 690000, '2022-11-01', 57,3);



