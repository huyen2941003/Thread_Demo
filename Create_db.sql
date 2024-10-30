use DB_HCG
-- Thêm dữ liệu vào bảng Result
INSERT INTO Majors (name, description) VALUES (N'Công nghệ phần mềm', N'Chuyên ngành nghiên cứu về thiết kế, phát triển, và bảo trì phần mềm. Sinh viên sẽ được đào tạo các kỹ năng lập trình, phân tích yêu cầu, và kiểm thử phần mềm. Chương trình cũng bao gồm các phương pháp phát triển phần mềm Agile, DevOps và quản lý dự án, giúp sinh viên nắm vững quy trình phát triển sản phẩm và khả năng làm việc nhóm trong môi trường công nghệ hiện đại.')
INSERT INTO Majors (name, description) VALUES (N'Hệ thống thương mại điện tử', N'Chuyên ngành tập trung vào việc sử dụng công nghệ thông tin để tạo ra và quản lý các giao dịch thương mại trực tuyến. Sinh viên sẽ được tìm hiểu về các mô hình kinh doanh điện tử, thiết kế website thương mại, và các công nghệ thanh toán trực tuyến. Chương trình cũng đề cập đến các vấn đề về quản lý chuỗi cung ứng, marketing trực tuyến, và bảo mật thông tin trong thương mại điện tử, nhằm giúp sinh viên hiểu rõ hơn về cách thức hoạt động của thị trường điện tử toàn cầu.')
INSERT INTO Majors (name, description) VALUES (N'Quản trị an ninh mạng', N'Chuyên ngành nghiên cứu về các biện pháp bảo mật thông tin và phòng ngừa các cuộc tấn công mạng. Sinh viên sẽ được đào tạo về các nguyên tắc cơ bản của an ninh mạng, bao gồm quản lý rủi ro, mã hóa thông tin, và phân tích mã độc. Chương trình cũng bao gồm các khía cạnh pháp lý và đạo đức liên quan đến an ninh mạng, giúp sinh viên phát triển khả năng ứng phó với các sự cố an ninh và xây dựng hệ thống bảo mật cho các tổ chức, doanh nghiệp.')

-- Thêm dữ liệu vào bảng Preference
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích lập trình phần mềm', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng phân tích hệ thống', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên quan tâm đến thương mại điện tử', 'P2');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có năng lực về bảo mật và an ninh mạng', 'P3');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích làm việc với dữ liệu lớn', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích giao diện người dùng và thiết kế UI/UX', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng làm việc nhóm và quản lý dự án', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng phát triển phần mềm web', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng quản lý cơ sở dữ liệu', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích phát triển ứng dụng di động', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có đam mê nghiên cứu và phát triển công nghệ mới', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có kinh nghiệm làm việc với các công cụ mã nguồn mở', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích công việc nghiên cứu bảo mật và phòng chống tấn công mạng', 'P3');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng tự học và cập nhật công nghệ mới', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có kỹ năng lãnh đạo và tổ chức nhóm', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có tư duy logic và khả năng giải quyết vấn đề', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích công việc liên quan đến quản trị hệ thống', 'P3');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng lập trình với các ngôn ngữ lập trình phổ biến (Python, Java, C++, …)', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có sở thích làm việc với hệ thống phân tán và cloud', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có năng lực sử dụng các công cụ phân tích và xử lý dữ liệu', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích xây dựng phần mềm cho doanh nghiệp', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có kinh nghiệm làm việc với các hệ thống ERP', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng phát triển phần mềm quản lý doanh nghiệp', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích phân tích và xử lý các dự án dữ liệu lớn', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích thiết kế giao diện người dùng (UI)', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng quản lý và bảo trì hệ thống mạng', 'P3');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích làm việc với công nghệ blockchain', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng lập trình game hoặc phần mềm đồ họa', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích làm việc với các công cụ phần mềm nguồn mở', 'P1');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có kinh nghiệm làm việc với các hệ thống phân tích dữ liệu', 'P1');

INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích thiết kế website thương mại điện tử', 'P2');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có năng lực về thanh toán trực tuyến và hệ thống quản lý giao dịch', 'P2');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng phân tích dữ liệu khách hàng và tối ưu hóa tiếp thị trực tuyến', 'P2');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích quản lý chuỗi cung ứng trong thương mại điện tử', 'P2');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng quản lý website và hệ thống mua sắm trực tuyến', 'P2');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có kỹ năng xử lý giao dịch quốc tế và quản lý xuất nhập khẩu', 'P2');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích quản lý quan hệ khách hàng trực tuyến (CRM)', 'P2');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có kiến thức về các mô hình kinh doanh điện tử', 'P2');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng phát triển và quản lý hệ thống thanh toán bảo mật', 'P2');

INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có kỹ năng mã hóa và giải mã thông tin', 'P3');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích xây dựng hệ thống phòng chống các cuộc tấn công mạng', 'P3');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có năng lực về phân tích mã độc và ứng phó sự cố an ninh', 'P3');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng lập kế hoạch và quản lý các chính sách bảo mật thông tin', 'P3');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên có khả năng quản lý rủi ro và ứng phó sự cố an ninh mạng', 'P3');
INSERT INTO Preferences (description, id_majors) VALUES (N'Sinh viên yêu thích làm việc với các hệ thống bảo mật cao cấp', 'P3');

INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'', 'P1', N'Nếu sinh viên yêu thích lập trình phần mềm, thích làm việc với dữ liệu lớn và không quan tâm đến nghiên cứu bảo mật, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S2 ∧ S9 ∧ ¬S12 → P2', 'P2', N'Nếu sinh viên có khả năng phân tích hệ thống, quản lý cơ sở dữ liệu và không có kinh nghiệm với công cụ mã nguồn mở, thì họ chọn chuyên ngành Hệ thống thương mại điện tử.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S3 ∧ S5 ∧ ¬S19 → P2', 'P2', N'Nếu sinh viên quan tâm đến thương mại điện tử, thích làm việc với dữ liệu lớn và không thích làm việc với hệ thống phân tán, thì họ chọn chuyên ngành Hệ thống thương mại điện tử.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S4 ∧ S6 ∧ ¬S11 → P3', 'P3', N'Nếu sinh viên có năng lực bảo mật, thích thiết kế UI/UX và không đam mê nghiên cứu công nghệ mới, thì họ chọn chuyên ngành Quản trị an ninh mạng.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S11 ∧ ¬S14 ∧ S15 → P1', 'P1', N'Nếu sinh viên đam mê nghiên cứu công nghệ mới, không tự học và có kỹ năng lãnh đạo, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S1 ∧ S7 ∧ ¬S18 → P1', 'P1', N'Nếu sinh viên yêu thích lập trình phần mềm, có khả năng làm việc nhóm và không lập trình với các ngôn ngữ phổ biến, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S10 ∧ S22 ∧ ¬S24 → P1', 'P1', N'Nếu sinh viên yêu thích phát triển ứng dụng di động, có kinh nghiệm làm việc với hệ thống ERP và không thích phân tích dữ liệu lớn, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S8 ∧ S10 ∧ ¬S12 → P1', 'P1', N'Nếu sinh viên có khả năng phát triển phần mềm web, thích phát triển ứng dụng di động và không có kinh nghiệm với công cụ mã nguồn mở, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S12 ∧ S13 ∧ ¬S20 → P3', 'P3', N'Nếu sinh viên có kinh nghiệm với công cụ mã nguồn mở, yêu thích nghiên cứu bảo mật và không có khả năng phân tích dữ liệu, thì họ chọn chuyên ngành Quản trị an ninh mạng.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S15 ∧ S16 ∧ ¬S17 → P1', 'P1', N'Nếu sinh viên có kỹ năng lãnh đạo, tư duy logic và không yêu thích quản trị hệ thống, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S19 ∧ S21 ∧ ¬S28 → P2', 'P2', N'Nếu sinh viên thích làm việc với hệ thống phân tán, xây dựng phần mềm doanh nghiệp và không lập trình game, thì họ chọn chuyên ngành Hệ thống thương mại điện tử.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S2 ∧ S4 ∧ ¬S14 → P2', 'P2', N'Nếu sinh viên có khả năng phân tích hệ thống, năng lực bảo mật và không có khả năng tự học, thì họ chọn chuyên ngành Hệ thống thương mại điện tử.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S3 ∧ S9 ∧ ¬S25 → P2', 'P2', N'Nếu sinh viên quan tâm đến thương mại điện tử, quản lý cơ sở dữ liệu và không thích thiết kế giao diện, thì họ chọn chuyên ngành Hệ thống thương mại điện tử.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S18 ∧ S26 ∧ ¬S27 → P1', 'P1', N'Nếu sinh viên có khả năng lập trình, bảo trì mạng và không thích làm việc với công nghệ blockchain, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S1 ∧ S15 ∧ ¬S29 → P1', 'P1', N'Nếu sinh viên yêu thích lập trình phần mềm, có kỹ năng lãnh đạo và không làm việc với công cụ nguồn mở, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S7 ∧ S8 ∧ ¬S20 → P2', 'P2', N'Nếu sinh viên có khả năng làm việc nhóm, phát triển web và không có khả năng phân tích dữ liệu, thì họ chọn chuyên ngành Hệ thống thương mại điện tử.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S24 ∧ S5 ∧ ¬S11 → P2', 'P2', N'Nếu sinh viên thích phân tích dự án dữ liệu lớn, yêu thích làm việc với dữ liệu lớn và không đam mê công nghệ mới, thì họ chọn chuyên ngành Hệ thống thương mại điện tử.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S22 ∧ S23 ∧ ¬S30 → P2', 'P2', N'Nếu sinh viên có kinh nghiệm làm việc với hệ thống ERP, phát triển phần mềm quản lý doanh nghiệp và không có kinh nghiệm với hệ thống phân tích dữ liệu, thì họ chọn chuyên ngành Hệ thống thương mại điện tử.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S4 ∧ S6 ∧ ¬S25 → P3', 'P3', N'Nếu sinh viên có năng lực bảo mật, thích thiết kế UI/UX và không làm việc với thiết kế giao diện, thì họ chọn chuyên ngành Quản trị an ninh mạng.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S19 ∧ S29 ∧ ¬S2 → P3', 'P3', N'Nếu sinh viên thích làm việc với hệ thống phân tán, công cụ nguồn mở và không có khả năng phân tích, thì họ chọn chuyên ngành Quản trị an ninh mạng.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S3 ∧ S5 ∧ ¬S10 → P2', 'P2', N'Nếu sinh viên quan tâm đến thương mại điện tử, thích làm việc với dữ liệu lớn và không thích phát triển ứng dụng di động, thì họ chọn chuyên ngành Hệ thống thương mại điện tử.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S1 ∧ S12 ∧ ¬S13 → P1', 'P1', N'Nếu sinh viên yêu thích lập trình phần mềm, có kinh nghiệm với công cụ mã nguồn mở và không thích nghiên cứu bảo mật, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S6 ∧ ¬S14 ∧ S15 → P1', 'P1', N'Nếu sinh viên thích thiết kế UI/UX, không có khả năng tự học và có kỹ năng lãnh đạo, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S8 ∧ S10 ∧ ¬S19 → P1', 'P1', N'Nếu sinh viên có khả năng phát triển web, thích phát triển ứng dụng di động và không làm việc với hệ thống phân tán, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S2 ∧ S3 ∧ ¬S16 → P2', 'P2', N'Nếu sinh viên có khả năng phân tích, quan tâm đến thương mại điện tử và không có tư duy logic, thì họ chọn chuyên ngành Hệ thống thương mại điện tử.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S18 ∧ S20 ∧ ¬S21 → P1', 'P1', N'Nếu sinh viên có khả năng lập trình, sử dụng công cụ phân tích dữ liệu và không thích xây dựng phần mềm cho doanh nghiệp, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S1 ∧ S9 ∧ ¬S22 → P1', 'P1', N'Nếu sinh viên yêu thích lập trình phần mềm, có khả năng quản lý cơ sở dữ liệu và không có kinh nghiệm làm việc với hệ thống ERP, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S11 ∧ S18 ∧ ¬S30 → P1', 'P1', N'Nếu sinh viên đam mê công nghệ mới, có khả năng lập trình và không có kinh nghiệm với hệ thống phân tích dữ liệu, thì họ chọn chuyên ngành Công nghệ phần mềm.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S4 ∧ S7 ∧ ¬S12 → P3', 'P3', N'Nếu sinh viên có năng lực bảo mật, khả năng làm việc nhóm và không có kinh nghiệm với công cụ mã nguồn mở, thì họ chọn chuyên ngành Quản trị an ninh mạng.');
INSERT INTO Rules (ruleS, id_majors, description) VALUES (N'S14 ∧ S15 ∧ ¬S26 → P3', 'P3', N'Nếu sinh viên có khả năng tự học, có kỹ năng lãnh đạo và không bảo trì mạng, thì họ chọn chuyên ngành Quản trị an ninh mạng.');

select * from Rules