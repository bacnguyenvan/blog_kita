-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 15, 2022 lúc 12:57 PM
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
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_07_093118_create_posts_table', 1),
(6, '2022_05_10_131141_create_tracks_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `view` int NOT NULL DEFAULT '0',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `posts` (`id`, `view`, `avatar`, `slug`, `title`, `content`, `content_detail`, `place`, `start_trip`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 12, 'img/place/namdu.jpg', 'nam-du-hon-son-islands-tha-hon-voi-thien-nhien', 'Nam Du - Hòn Sơn Islands, thả hồn với thiên nhiên.', 'Ngày anh về với Nam Du. Hòn Dầu xanh mát vi vu bóng dừa.', '<p>&nbsp; &nbsp; &nbsp; &nbsp; Chúng tôi lên kế hoạch trước 1 tháng trước khi đi các đảo ở tỉnh Kiên Giang, rồi chúng tôi quyết định chọn Nam Du và Hòn Sơn để khám phá, thế là 4 con người từ 4 vùng đất khác nhau lần đầu ra đảo để khám phá và trau dồi thêm văn hóa ở nơi đây.<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/namDU_1651990115.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/namDU_1651990115.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp;<a href=\"https://www.youtube.com/hashtag/b%E1%BA%AFc\">#Bắc</a> <a href=\"https://www.youtube.com/hashtag/hi%E1%BA%BFu\">#Hiếu</a> <a href=\"https://www.youtube.com/hashtag/th%E1%BB%8Bnh\">#Vũ</a> <a href=\"https://www.youtube.com/hashtag/v%C4%83nquy%E1%BB%81n\">#Phong</a></p><p>Ngày đầu tiên chúng tôi xuất phát từ bến xe miền Tây đi về Rạch Giá, &nbsp;mất 6h để đến nơi, chúng tôi cùng đi kiếm chỗ qua đêm để chuẩn bị cho chuyến Tàu đi ra Nam Du vào 6h sáng hôm sau, tại đây chúng tôi thưởng thức cơm tấm Rạch Giá, hủ tiếu Kiên Giang.<br>Đúng 6h sáng 30 chúng tôi lên Tàu vượt biển ra Nam Du islands, tàu nó rộng lắm mà cảm giác nó lạ lắm :))&nbsp;<br>Tôi ngồi kế cửa sổ của Tàu nên ngắm khá nhiều view đẹp khi tàu chạy qua.</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/tau_1651990868.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/tau_1651990868.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/tau2_1651990932.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/tau2_1651990932.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp;</p><p>Đến nơi chúng tôi cùng check-in tại cảng.<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/cang_1651991138.png\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/cang_1651991138.png 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp;</p><p>Check-in xong chúng tôi đi dạo vòng quanh cảng rồi gọi nhân viên HomeStay ra cảng đón chúng tôi về. Về tới nơi tắm luôn cho nóng :))<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/namdu2_1651991237.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/namdu2_1651991237.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Ăn trưa chúng tôi order lẩu cá xương xanh ( đặc sản đảo Nam Du ), cá có xương màu xanh ăn ngọt ngọt béo béo thơm ngậy.&nbsp;</p><p>Tối đến chúng tôi cùng vi vu thưởng thức từng con đường thơ mộng cùng ánh đèn phản ánh bên cạnh mặt biển.<br>&nbsp;</p><p>Sáng hôm sau chúng tôi ra đảo Hòn Sơn để tiếp tục khám phá, đến nơi chúng tôi làm cốc trà dâu full topping.<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/honSon_1651991963.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/honSon_1651991963.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp;</p><p>Sau đó cùng leo núi chinh phục Ma Thiên Lãnh.<br><img src=\"http://kitaexploring.tk/storage/uploads/mtl_1651992248.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/mtl_1651992248.jpg 500w\" sizes=\"100vw\" width=\"500\"><img src=\"http://kitaexploring.tk/storage/uploads/mtl2_1651992279.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/mtl2_1651992279.jpg 500w\" sizes=\"100vw\" width=\"500\"></p><p>Đây là các món ăn ở Hòn Sơn. Đặc sản Hòn Sơn là Gà Sốt Tỏi, chúng tôi ấn tượng nhất là dĩa cơm :v<br><img src=\"http://kitaexploring.tk/storage/uploads/food_1651992546.png\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/food_1651992546.png 500w\" sizes=\"100vw\" width=\"500\"></p><p>Kết thúc chuyến du lịch đảo 3 ngày 3 đêm, trong tôi và các bạn đều có nhiều cảm xúc. Nào có dịp tôi sẽ update bài viết sẽ nói chi tiết hơn khi ở đảo. Hen gặp lại Nam Du Hòn Sơn vào 1 ngày không xa.&nbsp;<br><br>&nbsp;Mạn phép note bài thơ hay của tác giả Thiên Ân.<br><br><i>VỀ VỚI NAM DU</i><br><i>Ngày anh về với Nam Du</i><br><i>Hòn Dầu xanh mát vi vu bóng dừa</i><br><i>Ru em êm ả giấc trưa</i><br><i>Dịu dàng cơn gió mới vừa đan tay</i><br><br><i>San hô lặng lẽ nơi này</i><br><i>Những con ốc biển, hôn mây ngập ngừng</i><br><i>Giếng Vua Bãi Ngự ,bụng ưng</i><br><i>Hòn Nồm,Bãi Chệt chân từng len qua</i><br><br><i>Thoắt trông Hòn Lớn ,chiều tà</i><br><i>Thả rông mặt biển em da trắng ngần</i><br><i>Hòn Ngang ,Bãi Chướng bâng khuâng</i><br><i>Biển khơi gió lộng ai mân mê đời?</i><br><br><i>Hòn Sơn,Hòn Mấu ,gượng cười</i><br><i>Đám mây quang đãng về khơi vết lòng</i><br><i>Long lanh như ngọc sáng trong</i><br><i>Êm êm lồng ngực ,tươi hồng môi em</i><br><br><i>Đồi Ma Thiên Lãnh buông rèm</i><br><i>Sân tiên giáng thế linh thiêng bao mùa?</i><br><i>Chiều vàng nghiêng dáng xa đưa</i><br><i>Nam Du tìm đến tình chưa bén nồng.</i></p>', 'Kiên Giang', '2022-04-30', NULL, NULL, '2022-05-11 13:49:20'),
(2, 10, 'img/place/vungtau.jpg', 'vung-tau-say-dam-mot-tinh-yeu', 'Vũng Tàu - say đắm một tình yêu.', 'Biển xanh cát trắng Vũng Tàu. Dập dềnh bãi Trước, bãi Sau sóng đùa.', '<p>“Alo, Bắc hả, ra công viên quận 9 ăn chè Bắc ơi.”<br>Lúc đó tôi vừa have dinner xong, bụng no căng, nhưng tôi ham vui lắm nên “oke, ra ngay”.<br>Lúc tôi ra thì bạn bè rất đông, đâu đó cũng cỡ trên 10 người.<br>Bọn tôi cùng tâm sự về các môn học trên trường, tâm sự chuyện đời.<br>Một âm thanh đâu đó vang lên “Vũng Tàu nay đẹp ghê”, ẹc rồi âm thanh khác “Đi luôn mấy bạn ơi”.<br>Thế là chúng tôi có 1 Vũng Tàu trip đánh dấu cho bữa đi chơi xa cùng nhau đầu tiên của những cậu sinh viên năm 2. Đi luôn trong đêm tôi nhớ hôm đó cũng cỡ 10h hơn với sự đồng hành 8 members chúng tôi vi vu trên những đoạn đường Vũng Tàu đây thơ mộng, rồi tắm biển. Cảm giác lúc đó thật sảng khoái xóa tan đi những áp lực của những môn học đại cương lúc đó,<br>Đây là chúng tôi ăn tàu hủ ở Bãi sau Vũng Tàu nè, nhìn lại mà tôi nhớ mấy bạn quá. &nbsp;(Update hình sau … )<br>Còn đây là chúng tôi ở ngọn hải đăng.<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/vungtau_1651986200.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/vungtau_1651986200.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p><a href=\"https://www.youtube.com/hashtag/tr%E1%BB%8Dng\">#Trọng</a> <a href=\"https://www.youtube.com/hashtag/%C4%91%C3%B4ng\">#Đông</a> <a href=\"https://www.youtube.com/hashtag/b%E1%BA%AFc\">#Bắc</a> <a href=\"https://www.youtube.com/hashtag/thanhh%E1%BA%A3i\">#ThanhHải</a> <a href=\"https://www.youtube.com/hashtag/ng%E1%BB%8Dch%E1%BA%A3i\">#NgọcHải</a> <a href=\"https://www.youtube.com/hashtag/hi%E1%BA%BFu\">#Hiếu</a> <a href=\"https://www.youtube.com/hashtag/th%E1%BB%8Bnh\">#Thịnh</a> <a href=\"https://www.youtube.com/hashtag/v%C4%83nquy%E1%BB%81n\">#VănQuyền</a></p><p>Cuối cùng là tổng kết bằng 1 clip xịn xò đến từ bạn Trọng.</p><p><a href=\"https://kitaexploring.s3.amazonaws.com/vungtau2.mp4\">https://kitaexploring.s3.amazonaws.com/vungtau2.mp4</a></p>', 'Vũng Tàu', '2018-04-14', NULL, NULL, '2022-05-11 13:58:39'),
(3, 10, 'img/place/angiang.jpg', 'an-giang-man-mac-huu-tinh-that-tha-chat-phac', 'An Giang - man mác hữu tình, thật thà chất phác.', 'Đất An Giang phù sa màu mỡ. Người An Giang muôn thuở hiền lành.', '<p>&nbsp; &nbsp; &nbsp; &nbsp; Nhân dịp lễ nghỉ dài ngày chúng tôi được bạn Phong Hào mời về quê bạn ấy chơi An Giang - vùng đất trù phú đậm chất miền Tây Nam Bộ.&nbsp;À nói sơ về bạn Hào, Hào mất cả bố mẹ khi còn là sinh viên, sau đó Hào quyết định xin nghỉ học, một quyết định gây sốc cho bọn tôi, nhưng bằng ý chí nổ lực giờ Hào đã là thầy dạy lập trình cho các bạn sinh viên ở Cybersoft và là 1 developer cho công ty ở khu phần mềm Quang Trung. Chúng tôi thật sự khâm phục ý chí của bạn ấy, chúc Hào luôn vui vẽ và thành công trên con đường đã chọn nhé. KMT mãi yêu Hào.<br><br>&nbsp; &nbsp; &nbsp; &nbsp; Chúng tôi xuất phát vào lúc 21h30 đêm 29/04 theo kế hoạch tầm khoảng 5 tiếng đồng hồ như trên map là chúng tôi đến nơi, tuy nhiên đến tận 4h sáng hôm sau chúng tôi mới tới nơi tính ra là gần 8h đồng hồ đó các bạn ơi, lần đầu tôi phượt về Miền Tây quá trời cầu luôn quý zị đặc biết là địa phận Đồng Tháp, đi hoài vẫn không &nbsp;qua hết đó là Tiền Giang province :)).<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/ag1_1652513993.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/ag1_1652513993.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; “Hello” - Các phượt thủ&nbsp;<br><br><a href=\"https://www.youtube.com/hashtag/tr%E1%BB%8Dng\">#Hào </a><a href=\"https://www.youtube.com/hashtag/%C4%91%C3%B4ng\">#Nam </a><a href=\"https://www.youtube.com/hashtag/b%E1%BA%AFc\">#Bắc</a> <a href=\"https://www.youtube.com/hashtag/tr%E1%BB%8Dng\">#Sinh </a><a href=\"https://www.youtube.com/hashtag/%C4%91%C3%B4ng\">#Đông</a> <a href=\"https://www.youtube.com/hashtag/b%E1%BA%AFc\">#Thịnh</a> &nbsp;<a href=\"https://www.youtube.com/hashtag/%C4%91%C3%B4ng\">#Phong </a><a href=\"https://www.youtube.com/hashtag/b%E1%BA%AFc\">#ThanhHải&nbsp;</a> <a href=\"https://www.youtube.com/hashtag/tr%E1%BB%8Dng\">#Hiếu </a><a href=\"https://www.youtube.com/hashtag/%C4%91%C3%B4ng\">#NgọcHải</a><br><img src=\"http://kitaexploring.tk/storage/uploads/photo_1652518157.png\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/photo_1652518157.png 500w\" sizes=\"100vw\" width=\"500\"><br><br>Ta nói về mới biết người miền Tây thật thà chất phác, xóm bạn Hào ai nấy đều thân thiện, đi đâu chúng tôi cũng chào hỏi và đáp lại là 1 nụ cười chất phác hiền từ. Đến nhà gì Ba, gì Út chúng tôi lần lượt được giới thiệu quê hương 10 con người ( trừ Hào ra còn 9 nè ) đến từ 9 vùng đất khác nhau trải dài từ Bắc vào Nam. Sau đó chúng tôi được các gì mời ăn hủ tiếu, uống trà đường, món kết hợp rất chi là ăn ý. Ăn xong thì làm gì quý zị? tắm sông thôi, chúng tôi kéo nhau ra con sông quê là nơi mà &nbsp;thời còn tắm tiên bạn Hào đã cùng thề ước với cô em hàng xóm ( đoạn này lấy cảm hứng thôi chứ không có thật nhá :))) ).&nbsp;<br>Full clip tại đây: <a href=\"https://kitaexploring.s3.amazonaws.com/tam_song.mp4\">https://kitaexploring.s3.amazonaws.com/tam_song.mp4</a></p><p><br>Tắm xong lên ăn thôi, share bạn món ăn xịn xò được chuẩn bị từ mấy gì của Hào nè.</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/d972aa8b0006c1589817_1652516140.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/d972aa8b0006c1589817_1652516140.jpg 500w\" sizes=\"100vw\" width=\"500\"><figcaption>Cá lóc hấp</figcaption></figure><p>&nbsp;</p><p>Món ăn ngon, béo lắm luôn, còn nhiều món nữa khi nào nhận được hình tui update lên liền.<br>Sáng hôm sau đi khám phá phong cảnh hữu tình thôi.<br>&nbsp;</p><figure class=\"image\"><img src=\"http://kitaexploring.tk/storage/uploads/444d73444dc88c96d5d9_1652516729.jpg\" srcset=\"http://kitaexploring.tk/storage/uploads/thumbnail/444d73444dc88c96d5d9_1652516729.jpg 500w\" sizes=\"100vw\" width=\"500\"></figure><p>Chỗ này cảnh non nước hữu tình, các vách núi nhìn thơ mộng lắm luôn, có cả lên núi luyện võ nữa nhé.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hẹn gặp An Giang một ngày không xa, hẹn gặp mấy Gì của Hào, hẹn gặp khu xóm thân thiện đó. &nbsp;<br>“Đất An Giang phù sa màu mỡ. Người An Giang muôn thuở hiền lành.”<br>&nbsp;</p>', 'An Giang', '2020-04-29', NULL, NULL, '2022-05-14 09:49:16'),
(4, 2, 'img/place/binhthuan.jpg', 'binh-thuan-vung-dat-day-nang-gio', 'Bình Thuận - vùng đất đầy nắng gió.', 'Bình Thuận ơi, Bình Thuận hỡi! Anh về viết vội trăm lời ý thơ.', '<p>Updating...</p>', 'Bình Thuận', '2021-04-30', NULL, NULL, '2022-05-11 13:50:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracks`
--

CREATE TABLE `tracks` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tracks`
--

INSERT INTO `tracks` (`id`, `post_id`, `ip`, `useragent`, `created_at`, `updated_at`) VALUES
(1, '2', '171.252.153.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-11 13:52:51', '2022-05-11 13:52:51'),
(2, '2', '171.252.153.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-11 13:55:03', '2022-05-11 13:55:03'),
(6, '2', '31.13.127.17', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.3 Mobile/15E148 Safari/604.1', '2022-05-11 13:57:54', '2022-05-11 13:57:54'),
(7, '2', '31.13.127.16', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2022-05-11 13:58:39', '2022-05-11 13:58:39'),
(8, '3', '171.252.153.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '2022-05-14 08:31:10', '2022-05-14 08:31:10'),
(14, '3', '125.235.231.60', 'Mozilla/5.0 (Linux; Android 11; SM-M515F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.61 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/360.0.0.10.113;]', '2022-05-14 09:07:12', '2022-05-14 09:07:12'),
(15, '3', '125.235.231.60', 'Mozilla/5.0 (Linux; Android 11; SM-M515F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.61 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/360.0.0.10.113;]', '2022-05-14 09:07:52', '2022-05-14 09:07:52'),
(16, '3', '171.252.153.112', 'Mozilla/5.0 (Linux; Android 10; Live Build/QKQ1.191215.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.61 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/360.0.0.10.113;]', '2022-05-14 09:09:12', '2022-05-14 09:09:12'),
(17, '3', '171.252.153.112', 'Mozilla/5.0 (Linux; Android 10; Live Build/QKQ1.191215.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.61 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/360.0.0.10.113;]', '2022-05-14 09:19:46', '2022-05-14 09:19:46'),
(18, '3', '125.235.231.60', 'Mozilla/5.0 (Linux; Android 11; SM-M515F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.61 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/360.0.0.10.113;]', '2022-05-14 09:49:16', '2022-05-14 09:49:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$I7W7yx4Qjb88cv8.uAv8Ee2tg/zTM7WOaSJeEXHwg2MyKPlRxRZw.', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
