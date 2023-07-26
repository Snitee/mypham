-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2023 lúc 09:40 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mypham_main`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` int(50) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `gia` varchar(100) NOT NULL,
  `mota` varchar(1500) NOT NULL,
  `hinhanh` text NOT NULL,
  `iddanhmuc` int(11) NOT NULL,
  `idthuonghieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensanpham`, `gia`, `mota`, `hinhanh`, `iddanhmuc`, `idthuonghieu`) VALUES
(1, 'Kem dưỡng ẩm sáng da innisfree Jeju Cherry Blossom Tone Up Cream 50 mL', 'VND 450.000', 'Kem dưỡng nâng tông tự nhiên từ hoa anh đào và Betaine innisfree Cherry Blossom Tone Up Cream, cho làn da tinh khiết, trắng sáng rạng rỡ tức thì. Có thể sử dụng thay kem nền khi muốn trang điểm nhẹ nhàng.\r\n1. Làm sáng da hiệu quả với Jeju Cherry Blossom, không gây mỏng da\r\nKhả năng dưỡng sáng hiệu quả của chiết xuất cánh hoa anh đào Jeju được nâng tầm bằng phương pháp ủ lạnh với nước biển lava đảo Jeju trong 3 tuần. Làn da hấp thụ tinh hoa dưỡng chất sẽ trở nên tươi sáng, trong veo và tràn đầy sức sống.\r\n\r\n2. Cung cấp và duy trì độ ẩm cho làn da mịn màng, không còn khô ráp\r\nBổ sung thêm Betaine từ củ dền với khả năng dưỡng ẩm dồi dào, mang đến vẻ mềm mại, mịn màng và căng mọng cho làn da. Nâng tone tự nhiên, tự tin với làn da mộc. Cánh hoa anh đào từ Jeju với dưỡng chất giúp nâng tông da tức thì, đồng thời dưỡng sáng da từ bên trong. Có thể sử dụng thay kem nền khi muốn trang điểm nhẹ nhàng vào mùa nóng', '', 1, 2),
(2, 'Kem dưỡng ẩm trà xanh innisfree Green Tea Seed Cream 50 mL', 'VND 513.000', 'Kem dưỡng ẩm trà xanh innisfree Green Tea Seed Cream, thấm nhanh, giúp làn da thiếu nước trở nên mịn màng. Phù hợp cho da khô và da thường.\r\n1. Giàu độ ẩm từ trà xanh dưỡng da Beauty Green Tea\r\nSinh ra dành riêng cho làn da, Beauty Green Tea được chọn lọc từ hơn 2,401 giống trà xanh Hàn Quốc. Thành phần dưỡng ẩm chuyên biệt này chứa 16 loại amino acid khác nhau, đậm đặc gấp 3.5 lần so với trà xanh thông thường. Đặc biệt, nước trà xanh tươi Green Tea Water 2.0™ được cải tiến nhờ công nghệ Dual-Moisture-Rising™ để lưu giữ dưỡng chất trọn vẹn.\r\n\r\n2. Bổ sung độ ẩm cho làn da thiếu nước\r\nDồi dào khả năng dưỡng ẩm nhờ trà xanh dưỡng da Beauty Green Tea. Phù hợp cho da thường và da khô\r\nKhả năng thấm nhanh nhờ dạng gel dưỡng ẩm mỏng nhẹ, giúp dưỡng chất dễ dàng đi sâu vào da.', '', 1, 2),
(3, 'Kem dưỡng ẩm ngăn ngừa lão hóa da innisfree Jeju Orchid Enriched Cream 50 mL', 'VND 585.000', 'Kem dưỡng hoa lan tím innisfree Jeju Orchid Enriched Cream dùng cho mọi loại da giúp cải thiện toàn diện các vấn đề lão hóa của da như kém đàn hồi, nếp nhăn, xỉn màu da, thiếu ẩm và lỗ chân lông to, giúp nuôi dưỡng làn da săn chắc và sáng khỏe.\r\n1. Sức sống mãnh liệt của hoa lan tím\r\nHoa lan Jeju được nuôi trồng nhân tạo trong điều kiện và chế độ quản lý nghiêm khắc trước nguy cơ tuyệt chủng. Nỗ lực để mang đến làn da dưỡng chất quý giá từ sức sống mãnh liệt của loài hoa, innisfree đã có được thành phần Orchid Elixir 2.0™ đậm đặc quý giá, vô cùng dồi dào flavonoid - thành phần chính trong hành trình cải thiện lão hóa.Với phương pháp chiết xuất thân thiện với môi trường, tinh chất Orchid Elixer 2.0 ™ tăng cường các thành phần chống lão hóa, các hoạt chất nuôi dưỡng làn da mệt mỏi để cải thiện độ đàn hồi. Săn chắc và đàn hồi cấu trúc da.Chứa thành phần chống lão hoá da Orchid Elixir 2.0™ chống oxy hoá giúp săn chắc da, cải thiện độ đàn hồi, giảm nếp nhăn, se khít lỗ chân lông.', '', 1, 2),
(4, 'Kem dưỡng kiểm soát dầu thừa innisfree Volcanic Pore Mattifying Cream 50 mL', 'VND 468.000', 'Kem dưỡng làm mờ lỗ chân lông đá tro núi lửa innisfree Volcanic Pore Mattifying Cream có kết cấu mỏng nhẹ, công thức Volcanic Sphere Plus™ cải tiến mới, hấp thụ dầu thừa và bã nhờn gấp 7 lần, giúp chăm sóc và thu nhỏ lỗ chân lông, nuôi dưỡng làn da mềm mịn.\r\n1. Sạch dầu thừa gấp 7 lần\r\nVolcanic Sphere Plus™ có khả năng hấp thụ bã nhờn mạnh mẽ, vượt trội gấp 7 lần so với công nghệ Volcanic Cluster, giúp kiểm soát tốt lượng dầu nhờn để da luôn khô thoáng. Tinh dầu Jojoba có khả năng kiểm soát nhờn mà không làm tắc nghẽn lỗ chân lông.\r\n\r\n2. Cấp ẩm và giữ da sạch khỏe\r\nChất kem mỏng nhẹ hỗ trợ dưỡng ẩm và thấm nhanh trên da, không để lại cảm giác nhờn rít, bóng dầu. Kem dưỡng giúp cải thiện các vấn đề về lỗ chân lông, đặc biệt trong thời tiết nóng bức khiến da luôn tiết dầu.\r\n\r\n3. Dưỡng da mịn màng với AHA, PHA, BHA\r\nBa thành phần chính giúp loại bỏ hiệu quả các tạp chất và tế bào chết, trả lại vẻ mịn màng và sạch thoáng cho da.', '', 1, 2),
(5, 'Nước cân bằng dành cho da mụn innisfree Bija Trouble Skin 200 mL', 'VND 339.300', 'Nước cân bằng innisfree Bija Trouble Skin chiết xuất từ dầu Bija Jeju, Acid Salicylic BHA giúp cân bằng độ ẩm và làm dịu làn da mụn.\r\n1. Hạt Bija tăng sức đề kháng cho da\r\nBija hấp thụ tinh hoa thiên nhiên suốt một khoảng thời gian dài, nhẹ nhàng làm dịu và tăng sức đề kháng cho da. Từ đó, tình trạng làn da được cải thiện đáng kể. innisfree lựa chọn hình thức thương mại công bằng, thu mua Bija được trồng tại Songdang-ri, Jeju. Nhờ vậy, innisfree đã mang lại nguồn thu nhập mới và thúc đẩy phát triển cộng đồng nơi đây.\r\n\r\n*Sản phẩm đạt chứng nhận 6 không (không parabens, không màu tổng hợp, không dầu khoáng, không dầu động vật, không mùi hương nhân tạo, không imidazolidinyl urea). Cân bằng độ ẩm và dưỡng da mềm mại\r\nNước cân bằng không dầu khoáng giúp cân bằng độ ẩm trên da, kiểm soát lượng dầu thừa và ngăn ngừa mụn, mang lại lại da mềm mại mà không gây khô rát hay nhờn rít.\r\n\r\n3. An toàn cho da mụn và dầu mụn\r\nSản phẩm đạt kết quả thử nghiệm Noncomedogenic, an toàn cho da mụn. Dầu', '', 1, 2),
(6, 'Nước cân bằng ngăn ngừa lão hóa chuyên sâu innisfree Perfect 9 Intensive Skin 200 mL', 'VND 765.600', 'Nước cân bằng innisfree Perfect 9 Intensive Skin dạng gel cô đặc với chiết xuất từ 9 loại thảo mộc quý ở đảo Jeju, hấp thụ nhanh và sâu vào da, giúp cân bằng độ pH, cấp ẩm và cải thiện 9 dấu hiệu lão hóa trên da.\r\n1. Chắt lọc tinh túy từ 9 thần dược thảo mộc Jeju\r\nPhức hợp trường sinh Jeju chống lão hóa™ #AgeDefyingElixir được tổng hợp từ 9 loại thảo mộc quý hiếm gồm nấm linh chi, ngải cứu, nấm bông, chi kim ngân, hoàng cầm, tiêu Cho-pi, diếp cát, bồ công anh, phúc bồn tử Hàn Quốc bằng phương pháp chiết xuất sóng âm, xóa tan lo lắng về 9 dấu hiệu lão hóa điển hình: Da không đều màu; da thiếu nước; da sậm màu, nám và tàn nhang, da thiếu đàn hồi, da thiếu ẩm, da xỉn màu, lỗ chân lông to; da chảy xệ, có nếp nhăn, chân chim; da nhiều tế bào chết.', '', 1, 2),
(7, 'Nước cân bằng độ ẩm cho da innisfree Green Tea Balancing Skin 200 mL', 'VND 365.400', 'Nước cân bằng innisfree Green Tea Balancing Skin chiết xuất từ trà xanh độc quyền Beauty Green Tea giúp dưỡng ẩm, kiểm soát nhờn và loại bỏ bụi bẩn, phục hồi làn da sáng mịn.\r\n1. Giàu độ ẩm từ trà xanh dưỡng da Beauty Green Tea\r\nSinh ra dành riêng cho làn da, Beauty Green Tea được chọn lọc từ hơn 2,401 giống trà xanh Hàn Quốc. Thành phần dưỡng ẩm chuyên biệt này chứa 16 loại amino acid khác nhau, đậm đặc gấp 3.5 lần so với trà xanh thông thường. Đặc biệt, nước trà xanh tươi Green Tea Water 2.0™ được cải tiến nhờ công nghệ Dual-Moisture-Rising™ để lưu giữ dưỡng chất trọn vẹn.\r\n\r\n2. Cân bằng độ ẩm và kiểm soát nhờn\r\nGreen Tea Balancing Skin EX giúp loại bỏ bụi bẩn và bã nhờn, phục hồi và cân bằng độ ẩm cho da, đem lại làn da sạch và khoẻ. Thấm nhanh nhờ kết cấu dịu nhẹ. Nước cân bằng thấm nhanh vào da, ẩm mượt mà không gây nhờn rít, giúp da sảng khoái hơn.', '', 1, 2),
(8, 'Nước hoa hồng không mùi Klairs Supple Preparation Unscented Toner', 'VND 288.000', '1.Cân bằng độ pH và dưỡng ẩm sâu, phục hồi da.\r\n2.Làm sạch da, hạn chế dầu nhờn ngăn cản sự phát triển của vi khuẩn gây mụn.\r\n3.Kháng khuẩn, chống viêm, giảm mẩn đỏ, khôi phục những vết thương sưng tấy do mụn viêm và mụn trứng cá để lại trên da.', '', 2, 3),
(9, 'Nước hoa hồng Klairs Supple Presparation Facial Toner', 'VND 288.000', '1.Cân bằng độ pH và dưỡng ẩm sâu, phục hồi da.\r\n2.Làm sạch da, hạn chế dầu nhờn ngăn cản sự phát triển của vi khuẩn gây mụn.\r\n3.Kháng khuẩn, chống viêm, giảm mẩn đỏ, khôi phục những vết thương sưng tấy do mụn viêm và mụn trứng cá để lại trên da.', '', 2, 3),
(10, 'Nước hoa hồng se khít lỗ chân lông và săn chắc da LOreal Paris Revitalift 200ml', 'VND 219,000', 'Nước hoa hồng se khít lỗ chân lông và săn chắc da Loreal Paris Revitalift giúp làm sạch sâu cho da, lấy đi những bụi bẩn, bã nhờn trên da, cho bạn làn da thông thoáng và mịn màng. Ngoài ra, nước hoa hồng còn giúp tái tạo và phục hồi kết cấu cho da mặt từ lớp tế bào sâu bên trong, làm mềm mịn da và cảm giác tươi mới hoàn toàn cho làn da của bạn.', '', 2, 4),
(11, 'Nước dưỡng da sáng mịn Loreal Paris Aura Perfect Clarifying & Moisturizing Toner', 'VND 139,000', 'Nước dưỡng da giúp dưỡng da trở nên mềm mịn và sáng hơn. Giúp làm sạch thêm lần nữa cho da, cho bạn làn da thông thoáng và mịn màng, dễ dàng hấp thụ dưỡng chất từ các bước dưỡng da tiếp theo. Ngoài ra, nước hoa hồng còn giúp sáng mịn da, giảm đốm nâu, làm mềm mịn da và cho làn da bạn cảm giác tươi mát.', '', 2, 4),
(12, 'Nước tẩy trang và làm sạch sâu 3-in-1 400ml - Dưỡng ẩm da', 'VND 219,000', 'Moisturizing - Mềm mịn (màu hồng): Nhờ thành phần chiết xuất hoa hồng Pháp, giúp duy trì độ ẩm cho da sau khi tẩy trang. Sản phẩm giúp làm sạch lớp trang điểm và làm da mềm mịn. Không chứa dầu, hương liệu và Ethanol. Dành cho da thường/da khô. Phù hợp với cả da nhạy cảm.', '', 3, 4),
(13, 'Nước tẩy trang và làm sạch sâu 3-in-1 400ml - Làm mát da', 'VND 219,000', 'Refreshing - Tươi mát (xanh dương nhạt): Làn da trông tươi tắn lên sau khi tẩy trang. Sản phẩm giúp làm sạch lớp trang điểm và làm da tươi mát hơn. Không chứa dầu, hương liệu và Ethanol. Dành cho da dầu/da hỗn hợp. Phù hợp với cả da nhạy cảm.', '', 3, 4),
(14, 'Nước tẩy trang làm sạch và cấp ẩm HA 400ml', 'VND 269,000', 'Nước tẩy trang làm sạch và cấp ẩm phù hợp với da khô và da hỗn hợp, giúp da sạch bụi bẩn, trang điểm và được cấp ẩm sâu giúp da trông căng mịn. Sản phẩm phù hợp cả với da nhạy cảm.', '', 3, 4),
(15, 'Dưỡng chất (Serum) Siêu Cấp Ẩm Giảm nếp nhăn LOreal Paris Revitalift 1.5% Hyaluronic Acid Serum', 'VND 479,000', 'Dưỡng chất LOreal Paris Revitalift HA đậm đặc 30ml với sự kết hợp không chỉ 1 mà đến 2 loại Hyaluronic Acid ưu việt sẽ mang đến giải pháp chăm sóc da hiệu quả, cho làn da căng mướt tức thì và sáng da. Với Revitalift da sẽ có sự thay đổi rõ rệt, mang đến vẻ ngoài rạng rỡ cho bạn.\r\n• HIỆU QUẢ SỬ DỤNG:  \r\nDa trông căng mịn - sáng rạng rỡ tức thì đến +42%', '', 4, 4),
(16, 'Tinh chất (Serum) phục hồi chống lão hóa Estee Lauder Advanced Night Repair Synchronized Multi-Recov', 'VND 1.900.000', '1.Dưỡng ẩm siêu cấp, công thức làm đầy đặn bề mặt, làm mịn bề mặt da bởi độ ẩm. Làm giảm quá trình oxy hóa làn da bằng tinh chất ANR. ANR tác động trực tiếp vào các rãnh nhăn, nếp nhăn trên da. Huyết thanh làm sáng da, điều chỉnh lại tông màu và kết cấu da đều hơn. Ngoài ra, tinh chất sẽ bảo vệ, chống lại các tác nhân có hại của môi trường như: Ô nhiễm và ánh sáng xanh.\r\n2.Cải thiện tình trạng da khô nhờ khả năng dưỡng ẩm tuyệt đối giúp da trông rạng rỡ, căng mọng, làm bề mặt da luôn mịn màng tươi trẻ. Cùng khả năng khóa ẩm lên tới 72 giờ tạo ra môi trường hoàn hảo cho quá trình phục hồi tự nhiên của da một cách tối ưu.\r\n3.Thúc đẩy quá trình làm lành da sau tổn thương, giải quyết vấn đề về da như: Da xỉn màu, nám, tàn nhang. Cung cấp khả năng bảo vệ chống oxy hóa kéo dài lên đến 8 giờ, bảo vệ da cả ngày trước các tác động của môi trường, giúp làn da trẻ lâu hơn.\r\n4.Làm săn chắc da, giúp da tươi trẻ, mịn màng, rạng rỡ hơn và đều màu hơn nhờ tính chất thẩm thấu nhanh và sâu ngăn ngừa tác động của môi trường trong cuộc sống. Giúp da tăng cường sản xuất collagen tự nhiên.', '', 4, 1),
(17, 'Kem Dưỡng Ẩm Neutrogena Cấp Nước Cho Da Dầu 50g\r\nHydro Boost Hyaluronic Acid Water Gel', 'VND 271.000', 'Kem Dưỡng Ẩm Neutrogena Hydro Boost Water Gel 50g là kem dưỡng ẩm đến từ thương hiệu mỹ phẩm Neutrogena của Mỹ, bảo vệ độ ẩm cho da mạnh hơn 80% cùng với công thức 1% các yếu tố giữ ẩm tự nhiên chứa Hyaluronic Acid, Axit Amin và chất điện giải. Kết cấu nhẹ thích hợp sử dụng hàng ngày.\r\n\r\nVới công thức chăm sóc da cải tiến và đã qua kiểm nghiệm da liễu, Kem Dưỡng Ẩm Neutrogena Hydro Boost Water Gel 50g giúp kích hoạt khả năng tiềm ẩn của làn da - tự sản sinh ra hàm lượng Hyaluronic Acid tự nhiên của hàng triệu tế bào da, từ đó mang lại độ ẩm dồi dào và dài lâu hơn, duy trì làn da thật ẩm mịn và căng mướt. Sản phẩm phù hợp cho cả nam lẫn nữ và đặc biệt lý tưởng cho làn da từ thường đến dầu, da đang gặp tình trạng thiếu nước', '', 1, 5),
(18, 'Nước làm sạch sâu và tẩy trang cho da nhạy cảm Micellar Water Ultra Sensitive 400ml', 'VND 419.000\r\n', '- Làm sạch đến 99% lớp trang điểm, 70% mascara và các hạt bụi siêu nhỏ có trong khói xe và môi trường ô nhiễm chỉ sau một lượt bông cotton.\r\n- Cung cấp độ ẩm và giảm ma sát tối đa khi làm sạch.\r\n- Chống oxy hóa, giúp bảo vệ da trước môi trường ô nhiễm.', '', 3, 6),
(19, 'Kem Chống Nắng Nhật Bản Skin Aqua Tone Up UV Essence SPF50+/PA++++', 'VND 175.000', 'Công dụng chính của Kem Chống Nắng Nhật Bản Skin Aqua Tone Up:\r\n-Chống nắng bảo vệ da trước tác hại từ tia cực tím và môi trường xung quanh.\r\n-Nâng tone da trắng hồng tự nhiên.\r\n-Cung cấp và duy trì độ ẩm cho da\r\n-Sản phẩm phù hợp với mọi loại da\r\n-Thích hợp để sử dụng hằng ngày', '', 5, 7),
(20, 'Sữa dưỡng thể Vaseline Healthy White Fresh & Fair dịu mát trắng da 350ml', 'VND 150.000', 'Thương hiệu sữa dưỡng thể Vaseline phù hợp với mọi loại da khác nhau. Sữa dưỡng thể Vaseline Healthy White Fresh & Fair dịu mát trắng da 350ml giúp nuôi dưỡng làn da trắng, mịn và khoẻ từ sâu bên trong, sữa dưỡng thể không gây cảm giác bết rít, giảm vết thâm trên da.Giúp dưỡng trắng mà không gây nhờn rít, mang đến cảm giác dịu mát suốt ngày dài. Sản phẩm giúp phục hồi những vùng da hư tổn từ sâu bên trong. Cùng gấp 10 lần hàm lượng Vitamin giúp da trắng dần lên trông thấy sau 2 tuần', '', 6, 8),
(21, 'Dưỡng chất (Serum) Siêu Cấp Ẩm Giảm nếp nhăn LOreal Paris Revitalift 1.5% Hyaluronic Acid Serum', 'VND 479,000', 'Dưỡng chất LOreal Paris Revitalift HA đậm đặc 30ml với sự kết hợp không chỉ 1 mà đến 2 loại Hyaluronic Acid ưu việt sẽ mang đến giải pháp chăm sóc da hiệu quả, cho làn da căng mướt tức thì và sáng da. Với Revitalift da sẽ có sự thay đổi rõ rệt, mang đến vẻ ngoài rạng rỡ cho bạn.\r\n• HIỆU QUẢ SỬ DỤNG:  \r\nDa trông căng mịn - sáng rạng rỡ tức thì đến +42%', '', 4, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`),
  ADD KEY `fk_sanpham_1` (`iddanhmuc`),
  ADD KEY `fk_sanpham_2` (`idthuonghieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsanpham` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham_1` FOREIGN KEY (`iddanhmuc`) REFERENCES `danhmuc` (`iddanhmuc`),
  ADD CONSTRAINT `fk_sanpham_2` FOREIGN KEY (`idthuonghieu`) REFERENCES `thuonghieu` (`idthuonghieu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
