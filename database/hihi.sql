-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2023 lúc 07:15 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mypham1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `idbill` int(50) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tongtien` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`idbill`, `ten`, `diachi`, `sdt`, `email`, `tongtien`) VALUES
(1, 'Sinh', 'PT', '123', 'vhieusinh27032003@gmail.com', 1026000),
(2, 'Sinh', 'Tphcm', '123', 'vhieusinh27032003@gmail.com', 1350000),
(3, 'Sinh', 'vung tau', '123', 'vhieusinh27032003@gmail.com', 219000),
(4, 'tien', 'nhơn trạch', '0927363', 'nguyebcdb@gmail.com', 6750000),
(5, 'Nguy?n Mai Th?y Ti?n', 'nhơn trạch', '0927332122', 'thuytien123@gmail.com', 1152000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `magia` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`magia`, `madonhang`, `idsanpham`, `dongia`, `soluong`) VALUES
(151, 5, 10, 219000, 2),
(151, 5, 8, 479000, 1),
(999, 6, 4, 468000, 4),
(999, 6, 11, 139000, 1),
(225, 7, 13, 219000, 3),
(225, 7, 7, 365400, 7),
(149, 8, 15, 479000, 6),
(149, 8, 9, 288000, 4),
(850, 9, 3, 585000, 4),
(850, 9, 12, 219000, 8),
(499, 10, 18, 419000, 5),
(499, 10, 15, 479000, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `iddanhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`iddanhmuc`, `tendanhmuc`) VALUES
(1, ' Kem dưỡng ẩm'),
(2, 'Nước cân bằng & Nước hoa hồng'),
(3, 'Nước tẩy trang'),
(4, 'Serum cấp ẩm & phục hồi'),
(5, 'Kem chống nắng'),
(6, 'Sữa dưỡng thể');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detailbill`
--

CREATE TABLE `detailbill` (
  `id` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `giasp` int(255) NOT NULL,
  `soluong` int(50) NOT NULL,
  `hinhsp` varchar(255) NOT NULL,
  `dongia` int(100) NOT NULL,
  `idbill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `detailbill`
--

INSERT INTO `detailbill` (`id`, `idsanpham`, `tensp`, `giasp`, `soluong`, `hinhsp`, `dongia`, `idbill`) VALUES
(1, 12, 'Nước t?y trang va? l?m s?ch s?u 3-in-1 400ml - D??ng ?m da', 219000, 1, 'Masp-12.jpg', 219000, 29),
(2, 12, 'N??c t?y trang va? l?m s?ch s?u 3-in-1 400ml - D??ng ?m da', 219000, 1, 'Masp-12.jpg', 219000, 30),
(3, 11, 'N??c d??ng da s?ng m?n Loreal Paris Aura Perfect Clarifying & Moisturizing Toner', 139000, 1, 'Masp-11.jpg', 139000, 30),
(4, 1, 'Kem dưỡng ẩm sáng da innisfree Jeju Cherry Blossom Tone Up Cream 50 mL', 450000, 15, 'Masp-1.jpg', 6750000, 4),
(5, 8, 'Nước hoa hồng không mùi Klairs Supple Preparation Unscented Toner', 288000, 4, 'Masp-8.jpg', 1152000, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `iddonhang` int(11) NOT NULL,
  `idkhachhang` int(11) NOT NULL,
  `ngaydat` datetime NOT NULL,
  `trangthai` varchar(50) NOT NULL,
  `magia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`iddonhang`, `idkhachhang`, `ngaydat`, `trangthai`, `magia`) VALUES
(5, 1, '2023-06-22 09:51:05', '0', 151),
(6, 2, '2023-06-22 09:51:05', '0', 999),
(7, 6, '2023-06-22 09:55:08', '0', 225),
(8, 3, '2023-06-22 09:55:08', '0', 149),
(9, 4, '2023-06-22 09:55:43', '0', 850),
(10, 8, '2023-06-22 09:55:43', '0', 499);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giamgia`
--

CREATE TABLE `giamgia` (
  `idgiamgia` int(11) NOT NULL,
  `giagiam` float NOT NULL,
  `soluongma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giamgia`
--

INSERT INTO `giamgia` (`idgiamgia`, `giagiam`, `soluongma`) VALUES
(1, 0.1, 10),
(2, 0.2, 5),
(3, 0.3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `idkhachhang` int(11) NOT NULL,
  `Ten` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sdt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `diachi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`idkhachhang`, `Ten`, `email`, `password`, `sdt`, `diachi`, `role`) VALUES
(1, 'Tiên', 'thuytien123@gmail.com', 'thuytien1103', '092649845', '23 Cộng Hòa, phường 4, Tân Bình, Tp. Hồ Chí Minh', 0),
(2, 'Tâm', 'mytam456@gmail.com', 'mytam0405', '0928471399', '12 Đường số 37, phường 12, Tân Bình, Tp. Hồ Chí Minh', 0),
(3, 'Thắm', 'phuongtham789@gmail.com', 'phuongtham0311@gmail.com', '0323697481', '35 Nguyễn Thái Bình, phường 13, Tân Bình, Tp. Hồ Chí Minh', 0),
(4, 'Sinh', 'hieusinh147@gmail.com', 'hieusinh147', '0325788963', '14 Giải Phóng, phường 14, Tân Bình, Tp. Hồ Chí Minh', 0),
(5, 'Alax Bùi', 'bui258@gmail.com', 'alaxchaubui223', '0947896325', '69 Hoàng Minh Giám, phường 2, Tân Bình, Tp. Hồ Chí Minh', 0),
(6, 'Tú', 'minhtu369@gmail.com', 'minhtu0469', '0936514879', '65 Phổ Quang, phường 3, Tân Bình, Tp. Hồ Chí Minh', 0),
(7, 'Thương', 'baothuong159@gmail.com', 'baothuong9959', '0251463978', '126 Phạm Văn Đồng, Thủ Đức, Tp. Hồ Chí Minh', 0),
(8, 'Mai', 'xuanmai000@gmail.com', 'xuanmai6477', '0967187492', '191 Phạm Huy Thông, phường 6, Gò Vấp, Tp. Hồ Chí Minh', 0),
(9, 'Linh', 'adminnhom8@gmail.com', 'adminnhom8', '0965429623', '18A/1 Cộng Hòa, phường 4, Tân Bình, Tp. Hồ Chí Minh', 0),
(10, 'Admin', 'group5@gmail.com', 'admingroup5', '0981001752', '18A Cộng Hòa, phường 4, Tân bình, Tp. Hồ Chí Minh', 1),
(11, 'Nguyễn Công Giới', '123456', '123456789', '0123456789', '123', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` int(50) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `gia` int(255) NOT NULL,
  `mota` varchar(1500) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `iddanhmuc` int(11) NOT NULL,
  `idthuonghieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensanpham`, `gia`, `mota`, `hinhanh`, `iddanhmuc`, `idthuonghieu`) VALUES
(1, 'Kem dưỡng ẩm sáng da innisfree Jeju Cherry Blossom Tone Up Cream 50 mL', 450000, 'Kem dưỡng nâng tông tự nhiên từ hoa anh đào và Betaine innisfree Cherry Blossom Tone Up Cream, cho làn da tinh khiết, trắng sáng rạng rỡ tức thì. Có thể sử dụng thay kem nền khi muốn trang điểm nhẹ nhàng.\r\n1. Làm sáng da hiệu quả với Jeju Cherry Blossom, không gây mỏng da\r\nKhả năng dưỡng sáng hiệu quả của chiết xuất cánh hoa anh đào Jeju được nâng tầm bằng phương pháp ủ lạnh với nước biển lava đảo Jeju trong 3 tuần. Làn da hấp thụ tinh hoa dưỡng chất sẽ trở nên tươi sáng, trong veo và tràn đầy sức sống.\r\n\r\n2. Cung cấp và duy trì độ ẩm cho làn da mịn màng, không còn khô ráp\r\nBổ sung thêm Betaine từ củ dền với khả năng dưỡng ẩm dồi dào, mang đến vẻ mềm mại, mịn màng và căng mọng cho làn da. Nâng tone tự nhiên, tự tin với làn da mộc. Cánh hoa anh đào từ Jeju với dưỡng chất giúp nâng tông da tức thì, đồng thời dưỡng sáng da từ bên trong. Có thể sử dụng thay kem nền khi muốn trang điểm nhẹ nhàng vào mùa nóng', 'Masp-1.jpg', 1, 2),
(2, 'Kem dưỡng ẩm trà xanh innisfree Green Tea Seed Cream 50 mL', 513000, 'Kem dưỡng ẩm trà xanh innisfree Green Tea Seed Cream, thấm nhanh, giúp làn da thiếu nước trở nên mịn màng. Phù hợp cho da khô và da thường.\r\n1. Giàu độ ẩm từ trà xanh dưỡng da Beauty Green Tea\r\nSinh ra dành riêng cho làn da, Beauty Green Tea được chọn lọc từ hơn 2,401 giống trà xanh Hàn Quốc. Thành phần dưỡng ẩm chuyên biệt này chứa 16 loại amino acid khác nhau, đậm đặc gấp 3.5 lần so với trà xanh thông thường. Đặc biệt, nước trà xanh tươi Green Tea Water 2.0™ được cải tiến nhờ công nghệ Dual-Moisture-Rising™ để lưu giữ dưỡng chất trọn vẹn.\r\n\r\n2. Bổ sung độ ẩm cho làn da thiếu nước\r\nDồi dào khả năng dưỡng ẩm nhờ trà xanh dưỡng da Beauty Green Tea. Phù hợp cho da thường và da khô\r\nKhả năng thấm nhanh nhờ dạng gel dưỡng ẩm mỏng nhẹ, giúp dưỡng chất dễ dàng đi sâu vào da.', 'Masp-2.jpg', 1, 2),
(3, 'Kem dưỡng ẩm ngăn ngừa lão hóa da innisfree Jeju Orchid Enriched Cream 50 mL', 585000, 'Kem dưỡng hoa lan tím innisfree Jeju Orchid Enriched Cream dùng cho mọi loại da giúp cải thiện toàn diện các vấn đề lão hóa của da như kém đàn hồi, nếp nhăn, xỉn màu da, thiếu ẩm và lỗ chân lông to, giúp nuôi dưỡng làn da săn chắc và sáng khỏe.\r\n1. Sức sống mãnh liệt của hoa lan tím\r\nHoa lan Jeju được nuôi trồng nhân tạo trong điều kiện và chế độ quản lý nghiêm khắc trước nguy cơ tuyệt chủng. Nỗ lực để mang đến làn da dưỡng chất quý giá từ sức sống mãnh liệt của loài hoa, innisfree đã có được thành phần Orchid Elixir 2.0™ đậm đặc quý giá, vô cùng dồi dào flavonoid - thành phần chính trong hành trình cải thiện lão hóa.Với phương pháp chiết xuất thân thiện với môi trường, tinh chất Orchid Elixer 2.0 ™ tăng cường các thành phần chống lão hóa, các hoạt chất nuôi dưỡng làn da mệt mỏi để cải thiện độ đàn hồi. Săn chắc và đàn hồi cấu trúc da.Chứa thành phần chống lão hoá da Orchid Elixir 2.0™ chống oxy hoá giúp săn chắc da, cải thiện độ đàn hồi, giảm nếp nhăn, se khít lỗ chân lông.', 'Masp-3.jpg', 1, 2),
(4, 'Kem dưỡng kiểm soát dầu thừa innisfree Volcanic Pore Mattifying Cream 50 mL', 468000, 'Kem dưỡng làm mờ lỗ chân lông đá tro núi lửa innisfree Volcanic Pore Mattifying Cream có kết cấu mỏng nhẹ, công thức Volcanic Sphere Plus™ cải tiến mới, hấp thụ dầu thừa và bã nhờn gấp 7 lần, giúp chăm sóc và thu nhỏ lỗ chân lông, nuôi dưỡng làn da mềm mịn.\r\n1. Sạch dầu thừa gấp 7 lần\r\nVolcanic Sphere Plus™ có khả năng hấp thụ bã nhờn mạnh mẽ, vượt trội gấp 7 lần so với công nghệ Volcanic Cluster, giúp kiểm soát tốt lượng dầu nhờn để da luôn khô thoáng. Tinh dầu Jojoba có khả năng kiểm soát nhờn mà không làm tắc nghẽn lỗ chân lông.\r\n\r\n2. Cấp ẩm và giữ da sạch khỏe\r\nChất kem mỏng nhẹ hỗ trợ dưỡng ẩm và thấm nhanh trên da, không để lại cảm giác nhờn rít, bóng dầu. Kem dưỡng giúp cải thiện các vấn đề về lỗ chân lông, đặc biệt trong thời tiết nóng bức khiến da luôn tiết dầu.\r\n\r\n3. Dưỡng da mịn màng với AHA, PHA, BHA\r\nBa thành phần chính giúp loại bỏ hiệu quả các tạp chất và tế bào chết, trả lại vẻ mịn màng và sạch thoáng cho da.', 'Masp-4.jpg', 1, 2),
(5, 'Nước cân bằng dành cho da mụn innisfree Bija Trouble Skin 200 mL', 339300, 'Nước cân bằng innisfree Bija Trouble Skin chiết xuất từ dầu Bija Jeju, Acid Salicylic BHA giúp cân bằng độ ẩm và làm dịu làn da mụn.\r\n1. Hạt Bija tăng sức đề kháng cho da\r\nBija hấp thụ tinh hoa thiên nhiên suốt một khoảng thời gian dài, nhẹ nhàng làm dịu và tăng sức đề kháng cho da. Từ đó, tình trạng làn da được cải thiện đáng kể. innisfree lựa chọn hình thức thương mại công bằng, thu mua Bija được trồng tại Songdang-ri, Jeju. Nhờ vậy, innisfree đã mang lại nguồn thu nhập mới và thúc đẩy phát triển cộng đồng nơi đây.\r\n\r\n*Sản phẩm đạt chứng nhận 6 không (không parabens, không màu tổng hợp, không dầu khoáng, không dầu động vật, không mùi hương nhân tạo, không imidazolidinyl urea). Cân bằng độ ẩm và dưỡng da mềm mại\r\nNước cân bằng không dầu khoáng giúp cân bằng độ ẩm trên da, kiểm soát lượng dầu thừa và ngăn ngừa mụn, mang lại lại da mềm mại mà không gây khô rát hay nhờn rít.\r\n\r\n3. An toàn cho da mụn và dầu mụn\r\nSản phẩm đạt kết quả thử nghiệm Noncomedogenic, an toàn cho da mụn. Dầu', 'Masp-5.jpg', 1, 2),
(6, 'Nước cân bằng ngăn ngừa lão hóa chuyên sâu innisfree Perfect 9 Intensive Skin 200 mL', 765600, 'Nước cân bằng innisfree Perfect 9 Intensive Skin dạng gel cô đặc với chiết xuất từ 9 loại thảo mộc quý ở đảo Jeju, hấp thụ nhanh và sâu vào da, giúp cân bằng độ pH, cấp ẩm và cải thiện 9 dấu hiệu lão hóa trên da.\r\n1. Chắt lọc tinh túy từ 9 thần dược thảo mộc Jeju\r\nPhức hợp trường sinh Jeju chống lão hóa™ #AgeDefyingElixir được tổng hợp từ 9 loại thảo mộc quý hiếm gồm nấm linh chi, ngải cứu, nấm bông, chi kim ngân, hoàng cầm, tiêu Cho-pi, diếp cát, bồ công anh, phúc bồn tử Hàn Quốc bằng phương pháp chiết xuất sóng âm, xóa tan lo lắng về 9 dấu hiệu lão hóa điển hình: Da không đều màu; da thiếu nước; da sậm màu, nám và tàn nhang, da thiếu đàn hồi, da thiếu ẩm, da xỉn màu, lỗ chân lông to; da chảy xệ, có nếp nhăn, chân chim; da nhiều tế bào chết.', 'Masp-6.jpg', 1, 2),
(7, 'Nước cân bằng độ ẩm cho da innisfree Green Tea Balancing Skin 200 mL', 365400, 'Nước cân bằng innisfree Green Tea Balancing Skin chiết xuất từ trà xanh độc quyền Beauty Green Tea giúp dưỡng ẩm, kiểm soát nhờn và loại bỏ bụi bẩn, phục hồi làn da sáng mịn.\r\n1. Giàu độ ẩm từ trà xanh dưỡng da Beauty Green Tea\r\nSinh ra dành riêng cho làn da, Beauty Green Tea được chọn lọc từ hơn 2,401 giống trà xanh Hàn Quốc. Thành phần dưỡng ẩm chuyên biệt này chứa 16 loại amino acid khác nhau, đậm đặc gấp 3.5 lần so với trà xanh thông thường. Đặc biệt, nước trà xanh tươi Green Tea Water 2.0™ được cải tiến nhờ công nghệ Dual-Moisture-Rising™ để lưu giữ dưỡng chất trọn vẹn.\r\n\r\n2. Cân bằng độ ẩm và kiểm soát nhờn\r\nGreen Tea Balancing Skin EX giúp loại bỏ bụi bẩn và bã nhờn, phục hồi và cân bằng độ ẩm cho da, đem lại làn da sạch và khoẻ. Thấm nhanh nhờ kết cấu dịu nhẹ. Nước cân bằng thấm nhanh vào da, ẩm mượt mà không gây nhờn rít, giúp da sảng khoái hơn.', 'Masp-7.jpg', 1, 2),
(8, 'Nước hoa hồng không mùi Klairs Supple Preparation Unscented Toner', 288000, '1.Cân bằng độ pH và dưỡng ẩm sâu, phục hồi da.\r\n2.Làm sạch da, hạn chế dầu nhờn ngăn cản sự phát triển của vi khuẩn gây mụn.\r\n3.Kháng khuẩn, chống viêm, giảm mẩn đỏ, khôi phục những vết thương sưng tấy do mụn viêm và mụn trứng cá để lại trên da.', 'Masp-8.jpg', 2, 3),
(9, 'Nước hoa hồng Klairs Supple Presparation Facial Toner', 288000, '1.Cân bằng độ pH và dưỡng ẩm sâu, phục hồi da.\r\n2.Làm sạch da, hạn chế dầu nhờn ngăn cản sự phát triển của vi khuẩn gây mụn.\r\n3.Kháng khuẩn, chống viêm, giảm mẩn đỏ, khôi phục những vết thương sưng tấy do mụn viêm và mụn trứng cá để lại trên da.', 'Masp-9.jpg', 2, 3),
(10, 'Nước hoa hồng se khít lỗ chân lông và săn chắc da LOreal Paris Revitalift 200ml', 219000, 'Nước hoa hồng se khít lỗ chân lông và săn chắc da Loreal Paris Revitalift giúp làm sạch sâu cho da, lấy đi những bụi bẩn, bã nhờn trên da, cho bạn làn da thông thoáng và mịn màng. Ngoài ra, nước hoa hồng còn giúp tái tạo và phục hồi kết cấu cho da mặt từ lớp tế bào sâu bên trong, làm mềm mịn da và cảm giác tươi mới hoàn toàn cho làn da của bạn.', 'Masp-10.jpg', 2, 4),
(11, 'Nước dưỡng da sáng mịn Loreal Paris Aura Perfect Clarifying & Moisturizing Toner', 139000, 'Nước dưỡng da giúp dưỡng da trở nên mềm mịn và sáng hơn. Giúp làm sạch thêm lần nữa cho da, cho bạn làn da thông thoáng và mịn màng, dễ dàng hấp thụ dưỡng chất từ các bước dưỡng da tiếp theo. Ngoài ra, nước hoa hồng còn giúp sáng mịn da, giảm đốm nâu, làm mềm mịn da và cho làn da bạn cảm giác tươi mát.', 'Masp-11.jpg', 2, 4),
(12, 'Nước tẩy trang và làm sạch sâu 3-in-1 400ml - Dưỡng ẩm da', 219000, 'Moisturizing - Mềm mịn (màu hồng): Nhờ thành phần chiết xuất hoa hồng Pháp, giúp duy trì độ ẩm cho da sau khi tẩy trang. Sản phẩm giúp làm sạch lớp trang điểm và làm da mềm mịn. Không chứa dầu, hương liệu và Ethanol. Dành cho da thường/da khô. Phù hợp với cả da nhạy cảm.', 'Masp-12.jpg', 3, 4),
(13, 'Nước tẩy trang và làm sạch sâu 3-in-1 400ml - Làm mát da', 219000, 'Refreshing - Tươi mát (xanh dương nhạt): Làn da trông tươi tắn lên sau khi tẩy trang. Sản phẩm giúp làm sạch lớp trang điểm và làm da tươi mát hơn. Không chứa dầu, hương liệu và Ethanol. Dành cho da dầu/da hỗn hợp. Phù hợp với cả da nhạy cảm.', 'Masp-13.jpg', 3, 4),
(14, 'Nước tẩy trang làm sạch và cấp ẩm HA 400ml', 269000, 'Nước tẩy trang làm sạch và cấp ẩm phù hợp với da khô và da hỗn hợp, giúp da sạch bụi bẩn, trang điểm và được cấp ẩm sâu giúp da trông căng mịn. Sản phẩm phù hợp cả với da nhạy cảm.', 'Masp-14.jpg', 3, 4),
(15, 'Dưỡng chất (Serum) Siêu Cấp Ẩm Giảm nếp nhăn LOreal Paris Revitalift 1.5% Hyaluronic Acid Serum', 479000, 'Dưỡng chất LOreal Paris Revitalift HA đậm đặc 30ml với sự kết hợp không chỉ 1 mà đến 2 loại Hyaluronic Acid ưu việt sẽ mang đến giải pháp chăm sóc da hiệu quả, cho làn da căng mướt tức thì và sáng da. Với Revitalift da sẽ có sự thay đổi rõ rệt, mang đến vẻ ngoài rạng rỡ cho bạn.\n• HIỆU QUẢ SỬ DỤNG:  \nDa trông căng mịn - sáng rạng rỡ tức thì đến +42%', 'Masp-15.jpg', 4, 4),
(16, 'Tinh chất (Serum) phục hồi chống lão hóa Estee Lauder Advanced Night Repair Synchronized Multi-Recov', 1900000, '1.Dưỡng ẩm siêu cấp, công thức làm đầy đặn bề mặt, làm mịn bề mặt da bởi độ ẩm. Làm giảm quá trình oxy hóa làn da bằng tinh chất ANR. ANR tác động trực tiếp vào các rãnh nhăn, nếp nhăn trên da. Huyết thanh làm sáng da, điều chỉnh lại tông màu và kết cấu da đều hơn. Ngoài ra, tinh chất sẽ bảo vệ, chống lại các tác nhân có hại của môi trường như: Ô nhiễm và ánh sáng xanh.\r\n2.Cải thiện tình trạng da khô nhờ khả năng dưỡng ẩm tuyệt đối giúp da trông rạng rỡ, căng mọng, làm bề mặt da luôn mịn màng tươi trẻ. Cùng khả năng khóa ẩm lên tới 72 giờ tạo ra môi trường hoàn hảo cho quá trình phục hồi tự nhiên của da một cách tối ưu.\r\n3.Thúc đẩy quá trình làm lành da sau tổn thương, giải quyết vấn đề về da như: Da xỉn màu, nám, tàn nhang. Cung cấp khả năng bảo vệ chống oxy hóa kéo dài lên đến 8 giờ, bảo vệ da cả ngày trước các tác động của môi trường, giúp làn da trẻ lâu hơn.\r\n4.Làm săn chắc da, giúp da tươi trẻ, mịn màng, rạng rỡ hơn và đều màu hơn nhờ tính chất thẩm thấu nhanh và sâu ngăn ngừa tác động của môi trường trong cuộc sống. Giúp da tăng cường sản xuất collagen tự nhiên.', 'Masp-16.jpg', 4, 1),
(17, 'Kem Dưỡng Ẩm Neutrogena Cấp Nước Cho Da Dầu 50g\r\nHydro Boost Hyaluronic Acid Water Gel', 271000, 'Kem Dưỡng Ẩm Neutrogena Hydro Boost Water Gel 50g là kem dưỡng ẩm đến từ thương hiệu mỹ phẩm Neutrogena của Mỹ, bảo vệ độ ẩm cho da mạnh hơn 80% cùng với công thức 1% các yếu tố giữ ẩm tự nhiên chứa Hyaluronic Acid, Axit Amin và chất điện giải. Kết cấu nhẹ thích hợp sử dụng hàng ngày.\r\n\r\nVới công thức chăm sóc da cải tiến và đã qua kiểm nghiệm da liễu, Kem Dưỡng Ẩm Neutrogena Hydro Boost Water Gel 50g giúp kích hoạt khả năng tiềm ẩn của làn da - tự sản sinh ra hàm lượng Hyaluronic Acid tự nhiên của hàng triệu tế bào da, từ đó mang lại độ ẩm dồi dào và dài lâu hơn, duy trì làn da thật ẩm mịn và căng mướt. Sản phẩm phù hợp cho cả nam lẫn nữ và đặc biệt lý tưởng cho làn da từ thường đến dầu, da đang gặp tình trạng thiếu nước', 'Masp-17.jpg', 1, 5),
(18, 'Nước làm sạch sâu và tẩy trang cho da nhạy cảm Micellar Water Ultra Sensitive 400ml', 419000, '- Làm sạch đến 99% lớp trang điểm, 70% mascara và các hạt bụi siêu nhỏ có trong khói xe và môi trường ô nhiễm chỉ sau một lượt bông cotton.\r\n- Cung cấp độ ẩm và giảm ma sát tối đa khi làm sạch.\r\n- Chống oxy hóa, giúp bảo vệ da trước môi trường ô nhiễm.', 'Masp-18.jpg', 3, 6),
(19, 'Kem Chống Nắng Nhật Bản Skin Aqua Tone Up UV Essence SPF50+/PA++++', 175000, 'Công dụng chính của Kem Chống Nắng Nhật Bản Skin Aqua Tone Up:\r\n-Chống nắng bảo vệ da trước tác hại từ tia cực tím và môi trường xung quanh.\r\n-Nâng tone da trắng hồng tự nhiên.\r\n-Cung cấp và duy trì độ ẩm cho da\r\n-Sản phẩm phù hợp với mọi loại da\r\n-Thích hợp để sử dụng hằng ngày', 'Masp-19.jpg', 5, 7),
(20, 'Sữa dưỡng thể Vaseline Healthy White Fresh & Fair dịu mát trắng da 350ml', 150000, 'Thương hiệu sữa dưỡng thể Vaseline phù hợp với mọi loại da khác nhau. Sữa dưỡng thể Vaseline Healthy White Fresh & Fair dịu mát trắng da 350ml giúp nuôi dưỡng làn da trắng, mịn và khoẻ từ sâu bên trong, sữa dưỡng thể không gây cảm giác bết rít, giảm vết thâm trên da.Giúp dưỡng trắng mà không gây nhờn rít, mang đến cảm giác dịu mát suốt ngày dài. Sản phẩm giúp phục hồi những vùng da hư tổn từ sâu bên trong. Cùng gấp 10 lần hàm lượng Vitamin giúp da trắng dần lên trông thấy sau 2 tuần', 'Masp-20.jpg', 6, 8),
(21, 'Dưỡng chất (Serum) Siêu Cấp Ẩm Giảm nếp nhăn LOreal Paris Revitalift 1.5% Hyaluronic Acid Serum', 479000, 'Dưỡng chất LOreal Paris Revitalift HA đậm đặc 30ml với sự kết hợp không chỉ 1 mà đến 2 loại Hyaluronic Acid ưu việt sẽ mang đến giải pháp chăm sóc da hiệu quả, cho làn da căng mướt tức thì và sáng da. Với Revitalift da sẽ có sự thay đổi rõ rệt, mang đến vẻ ngoài rạng rỡ cho bạn.\r\n• HIỆU QUẢ SỬ DỤNG:  \r\nDa trông căng mịn - sáng rạng rỡ tức thì đến +42%', 'Masp-15.jpg', 4, 4),
(22, 'Kem Dưỡng Hatomugi Cấp Ẩm & Làm Sáng Da 300g', 119000, 'Kem Dưỡng Hatomugi Chiết Xuất Ý Dĩ Làm Sáng Da 300g là dòng kem dưỡng đến từ thương hiệu mỹ phẩm Hatomugi của Nhật Bản, với thành phần chính từ 81% là nước và hạt ý dĩ cải thiện tình trạng khô ráp và mang đến làn da căng mướt, mịn màng, rạng rỡ. Bên cạnh đó, hỗ trợ làm dịu làn da kích ứng và làm sáng da.\r\n*Loại da phù hợp:\r\n  Sản phẩm phù hợp với mọi loại da.\r\n\r\n*Giải pháp tình trạng da:\r\n  Da khô, thiếu ẩm, thiếu nước.\r\n  Da xỉn màu – thâm sạm.', 'Masp-21.jpg', 1, 9),
(24, 'Kem dưỡng ẩm làm dịu da Klairs Midnight Blue Calming Cream', 330000, 'Kem dưỡng ẩm Klairs Midnight Blue Calming Cream giúp phục hồi và làm dịu da khi bị kích ứng, phục hồi da sau điều trị (lazer, tẩy da chết), làm giảm sưng tấy vết thương sau khi trị mụn hoặc lấy nhân. Sản phẩm còn giúp lấy lại sức sống cho làn da đối với những người làm việc văn phòng, chịu nhiều áp lực, thúc đẩy phục hồi da sau tổn thương. Chất kem đặc màu xanh dương bắt mắt khiến người dùng có cảm giác tươi mát ngay khi nhìn thấy sản phẩm.', 'Masp-22.jpg', 1, 3),
(25, 'Gel Dưỡng I\'m from Dưỡng Ẩm Và Kiểm Soát Dầu 75g', 336000, 'Gel Dưỡng Ẩm I\'m from Vitamin Tree Water Gel 75g là sản phẩm kem dưỡng da đến từ thương hiệu mỹ phẩm I\'m from của Hàn Quốc có tác dụng dưỡng ẩm sâu, thúc đẩy quá trình tái tạo da mang đến làn da căng bóng, sáng khỏe trông thấy. Sản phẩm có khả năng thẩm thấu nhanh chóng, không hề gây bết dính da mà vẫn đảm bảo khả năng dưỡng ẩm hiệu quả.\r\nSản phẩm có kết cấu dạng gel màu trắng đục, khi appy lên da chất gel nhanh chóng tan nhanh và thẩm thấu vào da hoàn toàn. Bạn sẽ cảm nhận ngay làn da căng mượt, mịn màng ngay tức thì. Đến với I\'m from Vitamin Tree Water Gel, bạn có thể sử dụng được cho cả ban ngày & ban đêm, bất kể thời tiết ngày hè hay mùa đông.', 'Masp-23.jpg', 1, 22),
(26, 'Kem Dưỡng Skin1004 Làm Dịu Da Chiết Xuất Rau Má 75ml', 273000, ' kem dưỡng đến từ thương hiệu mỹ phẩm SKIN1004 của Hàn Quốc, thành phần chứa 72% chiết xuất rau má cùng với 4 loại Ceramide có nguồn gốc từ thực vật làm dịu làn da mụn, kích ứng, giúp tăng cường hàng rào bảo vệ da, nuôi dưỡng làn da khỏe mạnh\r\nLoại da phù hợp:\r\n  Da dầu.\r\n  Da nhạy cảm.\r\nGiải pháp cho tình trạng da:\r\n  Da tổn thương sau mụn.\r\n  Da nhạy cảm - kích ứng.', 'Masp-24.jpg', 1, 10),
(28, 'Nước Hoa Hồng Skin1004 Phục Hồi Và Tái Tạo Da 210ml', 312000, 'Nước Hoa Hồng Skin1004 Madagascar Centella Toning Toner 210ml giúp chống viêm, làm dịu nhanh những tổn thương do mụn để lại, thành phần từ rau má tự nhiên giúp làm dịu da, phục hồi da hiệu quả.\r\n\r\nĐồng thời tăng cường sản sinh Collagen, chống lão hóa da, dưỡng ẩm da một cách vượt trội, giúp da mịn màng và đều màu hơn.\r\n\r\nNước hoa hồng Madagascar còn chứa PHA – một loại acid tự nhiên có khả năng loại bỏ đi lớp tế bào chết, chống oxy hóa, kích thích tái tạo tế bào da, giảm nếp nhăn và giúp da mặt khỏe, săn chắc hơn trông thấy.\r\n\r\nSản phẩm có độ PH= 5.3 tương tự với độ Ph có trên da, nên sản phẩm không làm kích ứng da, phù hợp với mọi loại da đặc biệt đối với chị em có làn da nhạy cảm có thể yên tâm sử dụng sản phẩm.', 'Masp-25.jpg', 2, 10),
(29, 'Toner Cocoon Chiết Xuất Bí Đao 310ml', 265000, 'Bí đao là loại quả vô cùng quen thuộc trong đời sống của người dân Việt Nam. Thế nhưng không chỉ là một loại quả mát lành giúp giải nhiệt cơ thể trong những ngày hè nóng bức, bí đao còn có nhiều lợi ích cho làn da của chúng ta. Trong quả bí đao rất giàu những thành phần chống oxy hóa và kháng viêm, giúp hỗ trợ làm giảm sưng viêm mụn, đồng thời dưỡng da sáng mịn hồng hào. Thường xuyên sử dụng bí đao sẽ giúp tăng sức đề kháng cho làn da, làm mềm và cung cấp dưỡng chất nuôi da khỏe lên mỗi ngày\r\n\r\nThành phần chính:\r\nBí đao: Có đặc tính làm giảm nhiệt, kháng viêm và diệt khuẩn giúp giảm mụn trứng cá, mụn viêm.\r\n\r\nRau má: Tăng sinh collagen cho làn da, kháng viêm, làm dịu các vết đỏ và chống kích ứng.\r\n\r\nTinh dầu tràm trà: Làm giảm mụn trứng cá, vết thương, côn trùng cắn và nhiễm trùng nấm men. \r\n\r\nChiết xuất cam thảo: Giúp chống dị ứng và kháng viêm mạnh mẽ.\r\n\r\nVitamin B3 (Niacinamide): Giúp hỗ trợ giảm mụn hiệu quả, kiểm soát lượng dầu thừa và làm giảm sự xuất hiện của lỗ chân lông to.\r\n\r\nHA (Hyaluronic acid): Giúp dưỡng ẩm, giữ ẩm cho da và làm mờ nếp nhăn, ngừa lão hóa.', 'Masp-26.jpg', 2, 11),
(30, 'Nước Hoa Hồng Neutrogena Alcohol-Free Toner 250ml', 220000, 'Nước hoa hồng Neutrogena Alcohol-Free Toner 250ml là sản phẩm chăm sóc da mặt đến từ thương hiệu Neutrogena. Đây là thương hiệu dược mỹ phẩm chuyên về các sản phẩm dưỡng da dưỡng tóc và mỹ phẩm của Mỹ có trụ sở tại California. Là một trong những thương hiệu dược mỹ phẩm lớn được yêu thích và được phân phối tại hơn 70 quốc gia trên thế giới. \r\n\r\nLà nước hoa hồng cho mọi loại da giúp chăm sóc dưỡng ẩm cho da mịn màng tươi sáng. Nước hoa hồng đa năng giúp làn da được thanh lọc nhẹ nhàng, loại bỏ bụi bẩn cho da, giúp tái tạo da khỏe mạnh trắng sáng đều màu, ngăn ngừa lão hóa, nếp nhăn và còn kiềm dầu, se khít lỗ chân lông cho da. Với công thức không cồn không chỉ giúp da được cung cấp ẩm từ sản phẩm, nhẹ dịu không khô, không gây kích ứng da mà còn giúp da giữ được độ ẩm tự nhiên. Thành phần vitamin C trong sản phẩm chính là \"công thần\" giúp bảo vệ da, giúp làm sáng da còn góp phần chống oxy hóa cho da.', 'Masp-27.jpg', 2, 5),
(31, 'Nước Hoa Hồng Caryophy Ngừa Mụn Kiềm Dầu Giảm Thâm 300ml', 299000, 'Nước Hoa Hồng Caryophy Portulaca Toner là sản phẩm Toner không cồn thuộc “bộ 3 chiến binh Caryophy” dành riêng cho da mụn đến từ thương hiệu mỹ phẩm CARYOPHY xuất xứ Hàn Quốc. Công thức với thành phần 100% chiết xuất dưỡng chất từ thiên nhiên như Rau Má, Rau Sam, Chùm Ngây, Nhân Sâm... giúp mang lại công dụng làm giảm mụn thâm, dưỡng ẩm, tẩy da chết, cân bằng độ pH cho da và là bước đệm hoàn hảo để các dưỡng chất thấm sâu vào da tốt nhất.\r\n\r\nGiải pháp cho tình trạng da:\r\n  Da mụn\r\n  Xỉn màu & thâm sạm\r\n  Dầu thừa - lỗ chân lông to', 'Masp-28.jpg', 2, 12),
(32, 'Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm 500ml', 393000, 'Nước Tẩy Trang Dành Cho Da Nhạy Cảm Bioderma Sensibio H2O là sản phẩm nước tẩy trang công nghệ Micellar đầu tiên trên thế giới, do thương hiệu dược mỹ phẩm Bioderma nổi tiếng của Pháp phát minh. Dung dịch giúp làm sạch sâu da và loại bỏ lớp trang điểm nhanh chóng mà không cần rửa lại bằng nước. Công thức dịu nhẹ, không kích ứng, không gây khô căng da, đặc biệt phù hợp với làn da nhạy cảm.\r\n\r\nông nghệ micellar sử dụng các hạt micelles \"thần kì\" tương thích hoàn hảo với lớp lipid tự nhiên của da. Yếu tố cấu thành nên hạt micelle là các ester acid béo, tương tự như cấu trúc lớp phospholipid của màng tế bào da, giúp tái tạo lớp màng hydrolipid của da một cách tự nhiên. Nhờ vào cấu trúc này, các hạt micelle sẽ giúp lấy đi các yếu tố có hại cho làn da như:\r\n  98% bụi siêu mịn khỏi bề mặt da và sâu bên \r\n  trong lỗ chân lông\r\n  78% kim loại nặng và độc tố gây hại\r\n  99% lớp trang điểm sâu bên trong', 'Masp-29.jpg', 3, 17),
(33, 'Nước Tẩy Trang Bioderma Dành Cho Da Dầu & Hỗn Hợp 500ml', 390000, 'Nước Tẩy Trang Bioderma Sébium H2O là sản phẩm tẩy trang dành cho da dầu, da hỗn hợp đến từ thương hiệu dược mỹ phẩm Bioderma, được ứng dụng công nghệ Micellar đình đám giúp loại bỏ lớp trang điểm cùng bụi bẩn và dầu thừa trên da hiệu quả mà không gây khô căng hay nhờn rít, tạo cảm giác thông thoáng cho da sau một ngày dài mệt mỏi.\r\n\r\nDa hỗn hợp đến da dầu có lượng bã nhờn dư thừa tập trung ở vùng chữ T (da hỗn hợp) hoặc trên toàn bộ khuôn mặt (da dầu). Các dấu hiệu lâm sàng đi kèm với loại da này là tình trạng bóng dầu, da xỉn màu và lỗ chân lông to. Đôi khi còn có thể xuất hiện mụn trứng cá hoặc mụn đầu đen. Nếu những dấu hiệu này cứ liên tục tái phát, da được coi là có xu hướng dễ bị mụn.\r\n\r\nNước Tẩy Trang Bioderma Sébium H2O được bào chế chuyên biệt dành cho làn da dầu & hỗn hợp, có khả năng \"bắt chước\" các thành phần tự nhiên của làn da để loại bỏ lớp trang điểm một cách tối ưu nhất, trong khi vẫn duy trì được độ cân bằng pH và độ ẩm tự nhiên của da, bảo đảm an toàn cho kể cả những làn da nhạy cảm nhất.', 'Masp-30.jpg', 3, 17),
(34, 'Nước Tẩy Trang Garnier Làm Sạch Sâu Lớp Trang Điểm 400ml', 145000, 'Việc tẩy trang sau một ngày dài mệt mỏi giờ đây thật dễ dàng với Garnier Micellar Oil Infused Cleansing Water with Argan Oil! Sản phẩm ứng dụng công nghệ Micelles kết hợp cùng dầu Argan giúp làm sạch sâu và loại bỏ toàn bộ lớp trang điểm, kể cả lớp trang điểm không thấm nước cứng đầu nhất. Công thức độc đáo dễ dàng thẩm thấu, giúp nuôi dưỡng làn da mềm mại và ẩm mịn sau khi tẩy trang mà không để lại cảm giác nhờn dính\r\n\r\nLoại da phù hợp: mọi loại da, đặc biệt là da khô.\r\nGiải pháp cho tình trạng da:\r\n  Da thiếu ẩm - thiếu nước, dễ khô căng, thô \r\n  ráp sau khi tẩy trang.\r\n  Da trang điểm, đặc biệt là sản phẩm trang \r\n  điểm lâu trôi, chống thấm nước.\r\n\r\nƯu thế nổi bật:\r\nSử dụng công nghệ Micelles (Micellar Technology) - phân tử Micelles lấy đi bụi bẩn sâu bên trong lỗ chân lông theo cơ chế hoạt động của nam châm khi lau nhẹ trên da mà không cần chà xát.\r\n\r\nBổ sung dầu hạt Argan thiên nhiên có tác dụng lấy đi cặn bẩn trang điểm và dưỡng ẩm cho da.\r\n\r\nLàm sạch hiệu quả kể cả lớp trang điểm không thấm nước (waterproof).\r\n\r\nKết cấu không nhờn, không bết dính, phù hợp với mọi loại da.\r\n\r\nCông thức không chứa cồn, không gây kích ứng da.', 'Masp-31.jpg', 3, 15),
(35, 'Nước Tẩy Trang Cocoon Bí Đao Làm Sạch & Giảm Dầu 140ml', 123000, 'Nước Tẩy Trang Bí Đao Cocoon Winter Melon Micellar Water mới từ thương hiệu mỹ phẩm thuần chay Cocoon là sản phẩm tẩy trang được thiết kế chuyên biệt dành cho da dầu và da mụn nhạy cảm. Với công nghệ Micellar, nước tẩy trang bí đao giúp làm sạch hiệu quả lớp trang điểm, bụi bẩn và dầu thừa, mang lại làn da sạch hoàn toàn và dịu nhẹ.\r\nLàn da dầu mụn thường nhạy cảm và cần được sự chăm sóc nhiều hơn bình thường, đặc biệt là dân thành thị sinh sống trong môi trường nhiều khói bụi và ô nhiễm nặng như hiện nay. Các tạp chất cùng bã nhờn dư thừa tích tụ lâu dần sẽ khiến lỗ chân lông bít tắc - nguyên nhân chính dẫn đến hình thành mụn.\r\n\r\nDo đó, việc làm sạch luôn là bước quan trọng nhất trong quy trình chăm sóc da hằng ngày. Vì thế, Cocoon đã nghiên cứu và cho ra đời sản phẩm Nước Tẩy Trang Bí Đao Cocoon Winter Melon Micellar Water đáp ứng những tiêu chí khắc khe trong việc chăm sóc da dầu mụn: SẠCH SÂU, DỊU NHẸ, THOÁNG DA KHÔNG GÂY MỤN ẨN, KIỂM SOÁT DẦU.', 'Masp-32.jpg', 3, 11),
(36, 'Nước Tẩy Trang Simple Làm Sạch Trang Điểm Vượt Trội 200ml', 80000, 'Nước Tẩy Trang Simple Làm Sạch Trang Điểm Và Cấp Ẩm là sản phẩm tẩy trang mặt đến từ thương hiệu Simple xuất xứ Anh Quốc. Công thức cải tiến với công nghệ làm sạch Micellar chứa hàng triệu bong bóng Micelles thông minh giúp loại bỏ lớp trang điểm và bụi bẩn hiệu quả, làm thông thoáng lỗ chân lông, mang lại cảm giác tươi mát cho da sau khi sử dụng, đồng thời cấp ẩm lên đến 4 giờ mà không để lại dư lượng thừa trên da.\r\n\r\nLoại da phù hợp: mọi loại da, đặc biệt là da nhạy cảm.\r\nGiải pháp cho tình trạng da:\r\n  Da nhạy cảm - kích ứng\r\n  Da thiếu ẩm, thiếu nước\r\n\r\nƯu thế nổi bật:\r\nNước tẩy trang Simple loại bỏ đến 99% lớp trang điểm* nhờ các hạt micelle siêu nhỏ gồm một cực ưa dầu hút mọi bụi bẩn, cặn trang điểm và một cực ưa nước giúp hòa tan, cuốn trôi mọi tạp chất.\r\n\r\nBổ sung Vitamin B3 giúp đem lại cảm giác thoáng mịn tức thì cho da sau tẩy trang.\r\n\r\nKhông chứa 2000 hóa chất có hại, không cồn, hương liệu, paraben gây căng da, cay mắt.\r\n ', 'Masp-33.jpg', 3, 14),
(37, 'Tinh chất rau má trị mụn Skin1004 Madagascar Centella Ampoule 100ml', 427000, 'Làm dịu da bị kích ứng, có tác dụng kháng viêm và chữa lành nhanh chóng, giúp phục hồi da sau mụn hiệu quả\r\nCung cấp độ ẩm dồi dào, giúp da luôn căng mịn và mềm mượt\r\n\r\nChiết xuất rau má là một thành phần phổ biến trong các sản phẩm chăm sóc da của xứ sở Kim Chi – được các cô nàng da mụn, da nhạy cảm yêu thích nhờ đặc tính làm dịu da, kháng viêm và hỗ trợ chữa lành vết thương hiệu quả, giúp da tái tạo nhanh chóng. Một trong các sản phẩm chứa chiết xuất rau má đã từng “làm mưa làm gió” vào những năm gần đây, không chỉ ở Hàn Quốc mà còn nổi tiếng ở Việt Nam, đó chính là Skin1004 Madagascar Centella Ampoule.', 'Masp-34.jpg', 4, 10),
(38, 'Tinh Chất Serum Ngừa Mụn, Giảm Thâm The Ordinary Niacinamide 10% + Zinc 1% (30ml)', 175000, 'Tinh chất trị mụn và giảm thâm The Ordinary Niacinamide 10% + Zinc 1% giúp làm dịu da. Cụ thể làm dịu các nốt mụn sưng, mụn viêm và ngăn ngừa mụn trứng cá. Chống lão hóa, làm sáng và đều màu da. Ngoài ra sản phẩm có khả năng cân bằng bã nhờn trên da, làm săn chắc da.\r\n\r\nMụn và thâm mụn là nỗi lo “nhức nhối” của rất nhiều bạn kể cả nam nữ, nhất là trong quá trình dậy thì thì hầu như tất cả 99% đều gặp vấn đề này. Mụn và thâm mụn sẽ làm bạn rất mất tự tin trong giao tiếp. Đó là lí do mà cac nàng nên sở hũu ngay tinh chất serum trị mụn gỉam thâm The Ordinary nhé.', 'Masp-35.jpg', 4, 13),
(39, 'Tinh Chất Vitamin C Giúp Mờ Thâm, Trắng Sáng Dành Cho Da Dễ Kích Ứng Klairs Freshly Juiced Vitamin ', 296000, 'Tinh Chất Vitamin C Giúp Mờ Thâm Nám, Trắng Sáng Dành Cho Da Dễ Kích Ứng Klairs Freshly Juiced Vitamin Drop là tinh chất dưỡng  \"siêu phẩm\" chứa vitamin C tươi đậm đặc chiết xuất từ Cam, Chanh, Quýt cùng nhiều chiết xuất từ thực vật giúp tăng năng lượng và trẻ hóa làn da, an toàn với kể cả làn da nhạt cảm  thuộc thương hiệu Klairs đến từ Hàn Quốc.\n\nĐặc trưng: \n  Tinh Chất Vitamin C Giúp Mờ Thâm Nám, Trắng Sáng Dành Cho Da Dễ Kích Ứng Klairs Freshly Juiced Vitamin Drop hiện nay đã có mặt tại  Thế Giới Skinfood chứa hàm lượng 5% vitamin C tươi được chiết xuất từ cam, chanh, quýt và bưởi chùm - loại quả giàu viatmin C giúp đem lại hiệu quả cao trong việc tái tạo làn da, giúp da chống lại quá trình oxy hóa', 'Masp-36.jpg', 4, 3),
(40, 'Tinh Chất Dưỡng Làm Dịu, Phục Hồi Da Klairs Midnight Blue Youth Activating Drop 20ml', 381000, 'Tinh Chất Dưỡng Làm Dịu, Phục Hồi Da Klairs Midnight Blue Youth Activating Drop 20ml là tinh chất dưỡng giúp nuôi dưỡng da từ sâu bên trong, mang lại làn da căng bóng khỏe mạnh và chống lại nhiều nguyên nhân gây lão hóa, cải thiện sự xuất hiện của nếp nhăn. Công thức EGF, bFGF, và 95% nguyên liệu tự nhiên cho tác dụng chống lão hóa, tinh chất giúp cải thiện sức khỏe và chất lượng tổng thể của da thuộc thương hiệu Klairs đến từ Hàn Quốc.\r\n\r\nĐối tượng khuyên dùng:\r\n  Dành cho mọi loại da, kể cả da nhạy cảm\r\n  Dành cho những làn da khô ráp, thiếu ẩm, \r\n  thiếu nước, da dễ bị kích ứng, mẩn đỏ, và \r\n  cần phục hồi sau tổn thương', 'Masp-37.jpg', 4, 3),
(41, 'Tinh Chất Tái Tạo, Phục Hồi Da, Dưỡng Da Săn Chắc La Roche-Posay Hyalu B5 Serum 30ml', 960000, 'Tinh Chất Tái Tạo, Phục Hồi Da, Dưỡng Da Săn Chắc La Roche-Posay Hyalu B5 Serum  là tinh chất với công thức giúp tái tạo & phục hồi da độc đáo gồm các thành phần Hyaluronic Acid nguyên chất, Vitamin B5 và Madecassoside, giúp làn da căng mịn, trở nên săn chắc & đàn hồi hơn, đồng thời giúp phục hồi hàng rào bảo vệ da và kích hoạt tái tạo da thuộc thương hiệu dược mỹ phẩm La Roche-Posay đến từ Pháp.', 'Masp-38.jpg', 4, 6),
(42, 'Tinh Chất Dưỡng Sáng Da, Mờ Thâm Garnier Skin Naturals Bright Complete Anti-Acne Booster Serum 30ml', 279000, 'Tinh Chất Dưỡng Sáng Da, Mờ Thâm Nám Garnier Skin Naturals Bright Complete Anti - Acne Booster Serum là tinh chất dưỡng da thuộc thương hiệu Garnier. Với công thức 4% Phức Hợp [Vitamin C + BHA + Niacinamide + AHA] giúp da giảm tình trạng tiết dầu thừa; tình trạng mụn đầu trắng, đầu đen và mụn ẩn được cải thiện rõ rệt, ngăn ngừa sự hình thành mụn viêm và thâm mụn.\r\n\r\nĐối tượng khuyên dùng:\r\n  Dành cho da dầu và da hỗn hợp thiên dầu.\r\n  Dành cho da mụn.\r\n  Dành cho làn da xỉn màu và kém tươi sáng, \r\n  làn da có nhiều vết thâm mụn', 'Masp-39.jpg', 4, 15),
(43, 'Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml', 276000, ' sản phẩm kem chống nắng đến từ thương hiệu mỹ phẩm Skin1004 của Hàn Quốc, là kem chống nắng vật lý với chiết xuất rau má và chất kem mỏng nhẹ có màu giúp che phủ nhẹ khuyết điểm cho da. Công thức đa năng vừa chống nắng vừa đều màu da lại dưỡng ẩm chính là sản phẩm mà những cô nàng da mụn hay da dầu nhạy cảm cần vì không cần sử dụng quá nhiều bước lỉnh kỉnh.\r\n\r\nLoại da phù hợp:\r\n  Sản phẩm phù hợp mọi loại da. \r\nGiải pháp cho tình trạng da: \r\n  Da thường xuyên tiếp xúc ánh nắng mặt trời. \r\n  Da nhạy cảm - kích ứng.', 'Masp-40.jpg', 5, 10),
(44, 'Kem chống nắng Long Lasting Sunscreen SPF50+ PA++++(50ml)', 240000, 'Chống nắng vật lý kết hợp hóa học, tăng cường hiệu quả kháng nước và mồ hôi suốt nhiều giờ liền. Kết cấu mỏng nhẹ thấm nhanh, bổ sung độ ẩm không gây nhờn dính, phù hợp cho da dầu và da đổ dầu do thiếu nước.\r\nLoại da: Da dầu, da hỗn hợp', 'Masp-42.jpg', 5, 2),
(45, 'Kem Chống Nắng Nâng Tông Da Innisfree Tone Up No Sebum SPF50 PA++++ (New)', 249000, '(cải tiến của mẫu cũ SPF35) PA+++ mẫu mới 2022 KCN này dùng mùa hè là đúng chuẩn luôn vì em này với công thức mới tối ưu kiềm dầu, và còn nâng tông giúp da sáng, đều màu hơn.\r\n\r\nKem chống nắng giúp chống nắng cho da mỗi ngày. Hạn chế tình trạng cháy nắng bỏng rát, sạm nám và đứt gãy sợi collagen khiến da nhanh lão hóa.  ', 'Masp-43.jpg', 5, 2),
(46, 'Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu 60ml', 449000, 'ữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu Bảo Vệ Hoàn Hảo là sản phẩm chống nắng đến từ thương hiệu chống nắng dưỡng da ANESSA hàng đầu Nhật Bản suốt 21 năm liên tiếp, giúp chống lại tác hại của tia UV & bụi mịn tối ưu dưới mọi điều kiện sinh hoạt, kể cả thời tiết khắc nghiệt nhất. Sản phẩm đặc biệt phù hợp với làn da thiên dầu.\r\n\r\nAnessa ứng dụng công nghệ Auto Booster và Very Water Resistant độc quyền từ thương hiệu ANESSA, giúp cho lớp màng chống UV trở nên bền vững hơn khi gặp NHIỆT ĐỘ CAO - ĐỘ ẨM - MỒ HÔI - NƯỚC - MA SÁT, đồng thời chống trôi trong nước lên đến 80 phút, chống bụi mịn PM.25 và chống dính cát. Ngoài ra, sự bổ sung của phức hợp 50% thành phần dưỡng da giúp ngăn ngừa lão hoá do tia UV hiệu quả và nuôi dưỡng da ẩm mịn.', 'Masp-44.jpg', 5, 16),
(47, 'Kem Chống Nắng La Roche-Posay Kiểm Soát Dầu SPF50+ 50ml', 428000, 'La Roche-Posay Anthelios Anti-Shine Gel-Cream Dry Touch Finish Mattifying Effect SPF50+ ứng dụng công nghệ Xl- Protect TM nhằm chống nắng tối ưu, bảo vệ làn da hiệu quả trước tia UVA/UVB cũng như tia hồng ngoại IR và tác nhân ô nhiễm.\r\n\r\nBên cạnh đó, hoạt chất Airliciumtm sẽ giúp điều hòa lượng dầu thừa, bã nhờn và mồ hôi vượt trội thông qua khả năng hấp thụ lượng bã nhờn gấp 100 lần khối lượng của chính nó. Hơn nữa, sản phẩm có khả năng chống thấm nước cao, do đó bạn có thể yên tâm ngay cả khi bơi lội hay đổ nhiều mồ hôi.\r\n\r\nVới kết cấu dạng kem gel độc đáo, La Roche-Posay Anthelios Anti-Shine Gel-Cream Dry Touch Finish Mattifying Effect SPF50+ khi thoa lên da sẽ mang đến cảm giác khô thoáng nhanh chóng, thẩm thấu tức thì vào da, hoàn toàn không để lại vệt trắng trên da. Cùng thành phần an toàn lành tính, không gây tình trạng kích ứng hay nổi mụn cho làn da. ', 'Masp-45.jpg', 5, 6),
(48, 'Tinh Chất Chống Nắng Sunplay Hiệu Chỉnh Sắc Da 50g (Xanh)', 153000, 'Tinh Chất Chống Nắng Hiệu Chỉnh Sắc Da Sunplay Skin Aqua Tone Up UV Essence là dòng sản phẩm chống nắng da mặt đến từ thương hiệu Sunplay - nhãn hàng chống nắng dưỡng da nổi tiếng xuất xứ Nhật Bản, với 3 tác dụng chỉ trong 1 sản phẩm: khả năng chống nắng cực đỉnh (SPF 50+ PA++++), giữ ẩm và dưỡng sáng da tối ưu (nhờ thành phần dưỡng ẩm Hyaluronic Acid và Vitamin C), khả năng hiệu chỉnh sắc da và nâng tone da rạng rỡ. Kết cấu dạng tinh chất mỏng nhẹ, không nhờn rít giúp da luôn ẩm mượt.', 'Masp-46.jpg', 5, 7),
(49, 'Sữa dưỡng thể Vaseline Healthy White UV Lightening Body Lotion trắng sáng bật tông', 165000, 'ữa dưỡng thể Vaseline Healthy White UV Lightening Body Lotion chính là giải pháp hữu hiệu trong công cuộc dưỡng trắng da hằng ngày. Sở hữu bảng thành phần siêu đẹp với những hoạt chất vàng trong làng dưỡng trắng, kết hợp cùng màng chống nắng 3 tác động giúp nuôi dưỡng da từ sâu bên trong, đồng thời bảo vệ da toàn diện trước tác động của tia UV. Giúp cho làn da cải thiện chỉ sau 2 tuần sử dụng.\r\n\r\nĐây là sản phẩm phù hợp với mọi loại da, kể cả da nhạy cảm.', 'Masp-49.jpg', 6, 8),
(50, 'Sữa Dưỡng Thể Chống Nắng Reihaku Hatomugi 250ml', 121000, 'Sữa dưỡng thể chống nắng Reihaku Hatomugi được cung cấp từ hạt ý dĩ, Sodium Hyaluronate ( thành phần giữ ẩm tuyệt vời cho làn da căng mượt ) và với chỉ số chống nắng SPF31 PA+ + +bảo vệ làn da an toàn trước ánh nắng gây hại da và không làm khô da khi sử dụng kem chống nắng Reihaku Hatomugi\r\n\r\nGiúp da luôn căng mịn, tươi sáng và không bị tình trạng lão hóa sớm, bảo vệ da khỏi tia UVA và UVB\r\nĐặc biệt với chiết xuất từ hạt Ý dĩ tự nhiên lành tính nên rất an toàn cho da, với cả da nhạy cảm\r\nSản phẩm dành cho mọi loại da', 'Masp-50.jpg', 6, 9),
(51, 'Sữa Dưỡng Thể Toàn Thân ST.Ives Body Lotion 621ml', 172000, 'Sữa Dưỡng Thể ST.Ives Body Lotion là sữa dưỡng thể thuộc thương hiệu ST.Ives với các thành phần chính chiết xuất từ thiên nhiên như dầu đậu nành, yến mạch và bơ hạt mỡ giúp dưỡng ẩm sâu, phục hồi làn da khô, sần sùi trở nên mịn màng và tươi trẻ. Ngoài ra, chất kem hơi lỏng nhẹ giúp dưỡng chất dễ dàng thẩm thấu nhanh vào da.', 'Masp-53.jpg', 6, 18),
(52, 'Sữa Dưỡng Thể Toàn Thân ST.Ives Body Lotion (Yến mạch và bơ) 621ml', 172000, 'Soothing Oatmeal & Shea Butter Body Lotion #Yến mạch & Bơ có hiệu quả tối đa đối với các làn da khô ráp, sần sùi  với thành phần chiết xuất từ yến mạch và bơ hạt mỡ. Cùng với công dụng làm dịu và mềm da từ chiết xuất bơ hạt mỡ giúp làn da của bạn trở nên mềm mại, khỏe mạnh và dưỡng sáng da.', 'Masp-51.jpg', 6, 18),
(53, 'Kem Chống Nắng Giảm Dầu, Nâng Tone Da Sáng Hồng The Saem Pink Sun Cream SPF50+/PA++++', 129000, 'Kem Chống Nắng Giảm Dầu, Giúp Da Sáng Hồng Tự Nhiên The Saem Pink Sun Cream SPF50+/PA++++ với công thức kem chống nắng dịu nhẹ cho làn da nhạy cảm, bảo vệ da thoải mái khỏi tia UV và làm dịu da bằng các tia UV vật lý 100% ngăn chặn công thức và bột làm dịu calamine màu hồng.', 'Masp-47.jpg', 5, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `idthuonghieu` int(11) NOT NULL,
  `tenthuonghieu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`idthuonghieu`, `tenthuonghieu`) VALUES
(1, 'Estee Lauder'),
(2, 'Innisfree'),
(3, 'Klairs'),
(4, 'Loréal'),
(5, 'Neutrogena'),
(6, 'Laroche Posay'),
(7, 'Sunplay'),
(8, 'Vaseline'),
(9, 'Hatomugi'),
(10, 'Skin1004'),
(11, 'Cocoon'),
(12, 'Caryophy'),
(13, 'Ordinary'),
(14, 'Simple'),
(15, 'Garnier'),
(16, 'Anessa'),
(17, 'Bioderma'),
(18, 'St.Ives'),
(19, 'The Saem'),
(22, 'I\'m from');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`idbill`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`iddanhmuc`);

--
-- Chỉ mục cho bảng `detailbill`
--
ALTER TABLE `detailbill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`iddonhang`),
  ADD KEY `fk_donhang` (`idkhachhang`);

--
-- Chỉ mục cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`idgiamgia`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`idkhachhang`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`),
  ADD KEY `fk_sanpham_1` (`iddanhmuc`),
  ADD KEY `fk_sanpham_2` (`idthuonghieu`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`idthuonghieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `idbill` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `iddanhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `detailbill`
--
ALTER TABLE `detailbill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `iddonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `idgiamgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `idkhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsanpham` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `idthuonghieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_donhang` FOREIGN KEY (`idkhachhang`) REFERENCES `khachhang` (`idkhachhang`);

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
