-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 08, 2022 lúc 07:05 AM
-- Phiên bản máy phục vụ: 8.0.29-0ubuntu0.22.04.2
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog_kita`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_trip` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `avatar`, `title`, `content`, `content_detail`, `place`, `start_trip`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'img/place/namdu.jpg', 'Nam Du - Hòn Sơn Islands, thả hồn với thiên nhiên.', 'Ngày anh về với Nam Du. Hòn Dầu xanh mát vi vu bóng dừa.', '<p>&nbsp; &nbsp; &nbsp; &nbsp; Chúng tôi lên kế hoạch trước 1 tháng trước khi đi các đảo ở tỉnh Kiên Giang, rồi chúng tôi quyết định chọn Nam Du và Hòn Sơn để khám phá, thế là 4 con người từ 4 vùng đất khác nhau lần đầu ra đảo để khám phá và trau dồi thêm văn hóa ở nơi đây.<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/namDU_1651990115.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/namDU_1651990115.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp;<a href=\"https://www.youtube.com/hashtag/b%E1%BA%AFc\">#Bắc</a> <a href=\"https://www.youtube.com/hashtag/hi%E1%BA%BFu\">#Hiếu</a> <a href=\"https://www.youtube.com/hashtag/th%E1%BB%8Bnh\">#Vũ</a> <a href=\"https://www.youtube.com/hashtag/v%C4%83nquy%E1%BB%81n\">#Phong</a></p><p>Ngày đầu tiên chúng tôi xuất phát từ bến xe miền Tây đi về Rạch Giá, &nbsp;mất 6h để đến nơi, chúng tôi cùng đi kiếm chỗ qua đêm để chuẩn bị cho chuyến Tàu đi ra Nam Du vào 6h sáng hôm sau, tại đây chúng tôi thưởng thức cơm tấm Rạch Giá, hủ tiếu Kiên Giang.<br>Đúng 6h sáng 30 chúng tôi lên Tàu vượt biển ra Nam Du islands, tàu nó rộng lắm mà cảm giác nó lạ lắm :))&nbsp;<br>Tôi ngồi kế cửa sổ của Tàu nên ngắm khá nhiều view đẹp khi tàu chạy qua.</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/tau_1651990868.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/tau_1651990868.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/tau2_1651990932.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/tau2_1651990932.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp;</p><p>Đến nơi chúng tôi cùng check-in tại cảng.<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/cang_1651991138.png\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/cang_1651991138.png 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp;</p><p>Check-in xong chúng tôi đi dạo vòng quanh cảng rồi gọi nhân viên HomeStay ra cảng đón chúng tôi về. Về tới nơi tắm luôn cho nóng :))<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/namdu2_1651991237.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/namdu2_1651991237.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Ăn trưa chúng tôi order lẩu cá xương xanh ( đặc sản đảo Nam Du ), cá có xương màu xanh ăn ngọt ngọt béo béo thơm ngậy.&nbsp;</p><p>Tối đến chúng tôi cùng vi vu thưởng thức từng con đường thơ mộng cùng ánh đèn phán ánh bên cạnh mặt biển.<br>&nbsp;</p><p>Sáng hôm sau chúng tôi ra đảo Hòn Sơn để tiếp tục khám phá, đến nơi chúng tôi làm cốc trà dâu full topping.<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/honSon_1651991963.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/honSon_1651991963.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp;</p><p>Sau đó cùng leo núi chinh phục Ma Thiên Lãnh.<br><img src=\"http://kitaexploring.tk/storage/uploads/mtl_1651992248.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/mtl_1651992248.jpg 500w\" sizes=\"100vw\" width=\"500\"><img src=\"http://kitaexploring.tk/storage/uploads/mtl2_1651992279.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/mtl2_1651992279.jpg 500w\" sizes=\"100vw\" width=\"500\"></p><p>Đây là các món ăn ở Hòn Sơn. Đặc sản Hòn Sơn là Gà Sốt Tỏi, chúng tôi ấn tượng nhất là dĩa cơm :v<br><img src=\"http://kitaexploring.tk/storage/uploads/food_1651992546.png\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/food_1651992546.png 500w\" sizes=\"100vw\" width=\"500\"></p><p>Kết thúc chuyến du lịch đảo 3 ngày 3 đêm, trong tôi và các bạn đều có nhiều cảm xúc. Nào có dịp tôi sẽ update bài viết sẽ nói chi tiết hơn khi ở đảo. Hen gặp lại Nam Du Hòn Sơn vào 1 ngày không xa.&nbsp;<br><br>&nbsp;Mạn phép note bài thơ hay của tác giả Thiên Ân.<br><br><i>VỀ VỚI NAM DU</i><br><i>Ngày anh về với Nam Du</i><br><i>Hòn Dầu xanh mát vi vu bóng dừa</i><br><i>Ru em êm ả giấc trưa</i><br><i>Dịu dàng cơn gió mới vừa đan tay</i><br><br><i>San hô lặng lẽ nơi này</i><br><i>Những con ốc biển, hôn mây ngập ngừng</i><br><i>Giếng Vua Bãi Ngự ,bụng ưng</i><br><i>Hòn Nồm,Bãi Chệt chân từng len qua</i><br><br><i>Thoắt trông Hòn Lớn ,chiều tà</i><br><i>Thả rông mặt biển em da trắng ngần</i><br><i>Hòn Ngang ,Bãi Chướng bâng khuâng</i><br><i>Biển khơi gió lộng ai mân mê đời?</i><br><br><i>Hòn Sơn,Hòn Mấu ,gượng cười</i><br><i>Đám mây quang đãng về khơi vết lòng</i><br><i>Long lanh như ngọc sáng trong</i><br><i>Êm êm lồng ngực ,tươi hồng môi em</i><br><br><i>Đồi Ma Thiên Lãnh buông rèm</i><br><i>Sân tiên giáng thế linh thiêng bao mùa?</i><br><i>Chiều vàng nghiêng dáng xa đưa</i><br><i>Nam Du tìm đến tình chưa bén nồng.</i></p>', 'Kiên Giang', '2022-04-30', NULL, NULL, '2022-05-08 06:57:18'),
(2, 'img/place/binhthuan.jpg', 'Bình Thuận - vùng đất đầy nắng gió.', 'Bình Thuận ơi, Bình Thuận hỡi! Anh về viết vội trăm lời ý thơ.', 'Updating...', 'Bình Thuận', '2021-04-30', NULL, NULL, NULL),
(3, 'img/place/angiang.jpg', 'An Giang - man mác hữu tình, thật thà chất phác.', 'Đất An Giang phù sa màu mỡ. Người An Giang muôn thuở hiền lành.', 'Updating...', 'An Giang', '2020-04-29', NULL, NULL, NULL),
(4, 'img/place/vungtau.jpg', 'Vũng Tàu - say đắm một tình yêu.', 'Biển xanh cát trắng Vũng Tàu. Dập dềnh bãi Trước, bãi Sau sóng đùa.', '<p>“Alo, Bắc hả, ra công viên quận 9 ăn chè Bắc ơi.”<br>Lúc đó tôi vừa have dinner xong, bụng no căng, nhưng tôi ham vui lắm nên “oke, ra ngay”.<br>Lúc tôi ra thì bạn bè rất đông, đâu đó cũng cỡ trên 10 người.<br>Bọn tôi cùng tâm sự về các môn học trên trường, tâm sự chuyện đời.<br>Một âm thanh đâu đó vang lên “Vũng Tàu nay đẹp ghê”, ẹc rồi âm thanh khác “Đi luôn mấy bạn ơi”.<br>Thế là chúng tôi có 1 Vũng Tàu trip đánh dấu cho bữa đi chơi xa cùng nhau đầu tiên của những cậu sinh viên năm 2. Đi luôn trong đêm tôi nhớ hôm đó cũng cỡ 10h hơn với sự đồng hành 8 members chúng tôi vi vu trên những đoạn đường Vũng Tàu đây thơ mộng, rồi tắm biển. Cảm giác lúc đó thật sảng khoái xóa tan đi những áp lực của những môn học đại cương lúc đó,<br>Đây là chúng tôi ăn tàu hủ ở Bãi sau Vũng Tàu nè, nhìn lại mà tôi nhớ mấy bạn quá.<br>Còn đây là chúng tôi ở ngọn hải đăng.<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/vungtau_1651986200.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/vungtau_1651986200.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p><a href=\"https://www.youtube.com/hashtag/tr%E1%BB%8Dng\">#Trọng</a> <a href=\"https://www.youtube.com/hashtag/%C4%91%C3%B4ng\">#Đông</a> <a href=\"https://www.youtube.com/hashtag/b%E1%BA%AFc\">#Bắc</a> <a href=\"https://www.youtube.com/hashtag/thanhh%E1%BA%A3i\">#ThanhHải</a> <a href=\"https://www.youtube.com/hashtag/ng%E1%BB%8Dch%E1%BA%A3i\">#NgọcHải</a> <a href=\"https://www.youtube.com/hashtag/hi%E1%BA%BFu\">#Hiếu</a> <a href=\"https://www.youtube.com/hashtag/th%E1%BB%8Bnh\">#Thịnh</a> <a href=\"https://www.youtube.com/hashtag/v%C4%83nquy%E1%BB%81n\">#VănQuyền</a></p><p>Cuối cùng là tổng kết bằng 1 clip xịn xò đến từ bạn Trọng.</p><p><a href=\"https://kitaexploring.s3.amazonaws.com/vungtau2.mp4\">https://kitaexploring.s3.amazonaws.com/vungtau2.mp4</a></p>', 'Vũng Tàu', '2018-04-14', NULL, NULL, '2022-05-08 05:59:11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
