-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 02, 2017 at 04:40 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `study`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `status`) VALUES
(1, 'Quảng cáo bên trái', 1),
(2, 'Quảng cáo bên phải', 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `cate_id` int(11) NOT NULL COMMENT '999 : landing page',
  `content` text,
  `is_hot` tinyint(1) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1',
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `type`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(1, 'Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD', 'hang-chuc-sinh-vien-moi-ra-truong-nhan-luong-khoi-diem-den-3000-usd', 'Hang chuc sinh vien moi ra truong nhan luong khoi diem den 3.000 USD', 'Theo Đại học Bách khoa Hà Nội, năm học 2015-2016, trường có hơn 60 sinh viên được tuyển dụng với mức lương 2.000 đến 3.000 USD một tháng.', '', 1, '<p>Trong bối cảnh 63% sinh vi&ecirc;n ra trường kh&ocirc;ng l&agrave;m được việc, 225.000 cử nh&acirc;n, thạc sĩ thất nghiệp, vấn đề &ldquo;lương 2.000 USD&rdquo; vẫn được coi l&agrave; ước mơ viển v&ocirc;ng, xa vời.</p>\r\n\r\n<h2>Giấc mơ từng bị &#39;n&eacute;m đ&aacute;&#39;</h2>\r\n\r\n<p>Năm 2011, một sinh vi&ecirc;n Đại học Ngoại thương tuy&ecirc;n bố ra trường lương dưới 1.000 USD kh&ocirc;ng l&agrave;m, g&acirc;y n&ecirc;n &ldquo;c&uacute; sốc&rdquo; với nhiều sinh vi&ecirc;n v&agrave; nh&agrave; tuyển dụng. Ph&aacute;t ng&ocirc;n n&agrave;y đ&atilde; trở th&agrave;nh chủ đề bị chế giễu tr&ecirc;n cộng đồng mạng.</p>\r\n\r\n<p>Năm 2016, một sinh vi&ecirc;n Học viện Kỹ thuật Mật m&atilde; đặt c&acirc;u hỏi trong hội thảo về cơ hội nghề nghiệp: &ldquo;Em phải học tập v&agrave; l&agrave;m việc như thế n&agrave;o để c&aacute;c nh&agrave; tuyển dụng ở đ&acirc;y nhận v&agrave;o l&agrave;m với mức lương khởi điểm 2.000 USD/th&aacute;ng?&quot;. C&acirc;u hỏi khiến nhiều con mắt đổ dồn về ph&iacute;a nữ sinh v&agrave; sau đ&oacute; c&ocirc; bạn bị &quot;n&eacute;m đ&aacute;&quot; tr&ecirc;n mạng.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/09/shares/083141_bk1.jpg\" /></p>\r\n\r\n<h3><em>Bảng thống k&ecirc; việc l&agrave;m của sinh vi&ecirc;n ĐH B&aacute;ch khoa H&agrave; Nội 6 th&aacute;ng đầu năm 2016. Ảnh: ĐHBKHN.</em></h3>\r\n\r\n<p>Hai c&acirc;u hỏi tr&ecirc;n của sinh vi&ecirc;n về mức lương ngh&igrave;n USD nhận được &yacute; kiến tr&aacute;i chiều của dư luận. Người cho rằng đ&oacute; l&agrave; giấc mơ &quot;hoang đường, kh&ocirc;ng c&oacute; cơ sở&quot; v&igrave; sinh vi&ecirc;n Việt Nam ra trường thường chưa l&agrave;m được việc. Thế nhưng, kh&ocirc;ng &iacute;t &yacute; kiến kh&aacute;c khẳng định &ldquo;nếu kh&ocirc;ng c&oacute; ước mơ th&igrave; kh&ocirc;ng thể l&agrave;m được những điều vĩ đại&quot;.</p>\r\n\r\n<p>Theo kết quả khảo s&aacute;t của một số trường đại học, sinh vi&ecirc;n mới ra trường ho&agrave;n to&agrave;n c&oacute; thể nhận được mức lương 2.000 USD/th&aacute;ng tại c&aacute;c c&ocirc;ng ty nước ngo&agrave;i.</p>\r\n\r\n<p>Mới đ&acirc;y, Đại học B&aacute;ch khoa H&agrave; Nội c&ocirc;ng bố bảng thống k&ecirc; mức lương trung b&igrave;nh của sinh vi&ecirc;n tốt nghiệp 6 th&aacute;ng đầu năm 2016 (80% số sinh vi&ecirc;n tốt nghiệp trả lời khảo s&aacute;t). Theo đ&oacute;, mức trung b&igrave;nh l&agrave; 8,2 triệu đồng/th&aacute;ng. Phổ lương trải rộng từ 3 đến 60 triệu đồng/th&aacute;ng.&nbsp;</p>\r\n\r\n<p>Tại Đại học Khoa học Tự nhi&ecirc;n (Đại học Quốc gia H&agrave; Nội), c&aacute;c khảo s&aacute;t thực tế do nh&agrave; trường thực hiện qua những năm gần đ&acirc;y cho thấy mức lương sinh vi&ecirc;n nhận được dao động từ 6-20 triệu đồng/th&aacute;ng. Số sinh vi&ecirc;n nhận lương 30-60 triệu đồng/th&aacute;ng kh&ocirc;ng nhiều. Một số sinh vi&ecirc;n xuất sắc c&oacute; lương 60 triệu đồng/th&aacute;ng.</p>\r\n\r\n<h2>Phải d&aacute;m nghĩ về mức lương 2.000 USD</h2>\r\n\r\n<p>Theo số liệu của Đại học Khoa học Tự nhi&ecirc;n, hai nữ sinh nhận được lương khởi điểm 2.000 USD khi chưa ra trường l&agrave; Nguyễn Thị Qu&yacute; (ng&agrave;nh Ti&ecirc;n tiến H&oacute;a học) v&agrave; Đỗ Thị Phương (ng&agrave;nh C&ocirc;ng nghệ Kỹ thuật H&oacute;a học). Họ đ&atilde; được C&ocirc;ng ty H&oacute;a chất Kyowa (Nhật Bản) nhận l&agrave;m việc.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/09/shares/083428_quy1.jpg\" /></p>\r\n\r\n<h3><em>Nguyễn Thị Qu&yacute; - sinh vi&ecirc;n ĐH Khoa học Tự nhi&ecirc;n, Đại học Quốc gia H&agrave; Nội. Ảnh: ĐHKHTN.</em></h3>\r\n\r\n<p>&Ocirc;ng Nguyễn Thanh B&igrave;nh - Trưởng ph&ograve;ng C&ocirc;ng t&aacute;c sinh vi&ecirc;n, Đại học Khoa học Tự nhi&ecirc;n - l&yacute; giải, sinh vi&ecirc;n trong trường c&oacute; nhiều cơ hội được nhận v&agrave;o l&agrave;m việc tại c&aacute;c tập đo&agrave;n lớn của nước ngo&agrave;i n&ecirc;n lương cao. Đ&oacute; phần lớn l&agrave; sinh vi&ecirc;n l&agrave;m việc li&ecirc;n quan c&aacute;c ng&agrave;nh như h&oacute;a chất, sinh học, c&ocirc;ng nghệ sinh học, c&ocirc;ng nghệ thực phẩm hoặc vi sinh...</p>\r\n\r\n<p>PGS Đinh Văn Hải, Trưởng ph&ograve;ng C&ocirc;ng t&aacute;c Ch&iacute;nh trị Sinh vi&ecirc;n, Đại học B&aacute;ch khoa H&agrave; Nội, cũng cho hay: Năm học 2015-2016, trường c&oacute; hơn 60 sinh vi&ecirc;n được tuyển dụng với mức lương 2.000 đến 3.000 USD/th&aacute;ng, hầu hết l&agrave;m cho c&ocirc;ng ty nước ngo&agrave;i, c&aacute;c ng&agrave;nh về c&ocirc;ng nghệ th&ocirc;ng tin.</p>\r\n\r\n<p>Trong đ&oacute;, em Nguyễn Xu&acirc;n B&aacute;ch (sinh vi&ecirc;n năm cuối) tr&uacute;ng tuyển vị tr&iacute; kỹ sư phần mềm, l&agrave;m việc ở Nhật Bản với mức lương 60 triệu đồng mỗi th&aacute;ng.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/09/shares/083501_luong_my_1_1.jpg\" /></p>\r\n\r\n<h3><em>Quy định mức lương tối thiểu v&ugrave;ng đối với người lao động l&agrave;m việc theo hợp đồng lao động. Nguồn: Bộ Lao động Thương binh v&agrave; X&atilde; hội. Đồ họa: Nguyễn Sương. &nbsp;</em></h3>\r\n\r\n<p>Tiến sĩ L&ecirc; Nh&acirc;n T&acirc;m - cố vấn c&ocirc;ng nghệ v&agrave; kiến tr&uacute;c sư về điện to&aacute;n đ&aacute;m m&acirc;y của Tập đo&agrave;n IBM - cho rằng sinh vi&ecirc;n phải d&aacute;m nghĩ về lương 2.000 USD. Hiện nay, sinh vi&ecirc;n mới ra trường c&oacute; thể nhận được mức lương n&agrave;y, chủ yếu ở lĩnh vực bảo mật c&ocirc;ng nghệ th&ocirc;ng tin.</p>\r\n\r\n<p>&Ocirc;ng T&acirc;m cũng cho rằng điều quan trọng hơn sinh vi&ecirc;n n&ecirc;n đặt c&acirc;u hỏi: Bạn l&agrave; ai sau 2-5 năm nữa. Từ đ&oacute;, bạn sẽ biết m&igrave;nh l&agrave;m g&igrave;, n&ecirc;n trang bị những g&igrave; để đạt được mục ti&ecirc;u.</p>\r\n\r\n<p>TS L&ecirc; Nh&acirc;n T&acirc;m l&yacute; giải c&aacute;c c&ocirc;ng ty lớn như IBM, Microsoft, Google... đều tuyển dụng những người c&oacute; nhiều kinh nghiệm. V&igrave; vậy, c&aacute;c bạn trẻ n&ecirc;n học hỏi từ ch&iacute;nh người quản l&yacute; của m&igrave;nh xem họ l&agrave;m c&ocirc;ng việc g&igrave;, thực hiện kỹ năng n&agrave;o để bổ sung những điều m&igrave;nh c&ograve;n khuyết thiếu.</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>Quy&ecirc;n Quy&ecirc;n</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Zing.vn</em></p>\r\n', 0, NULL, 1, 1, 0, 398, '2017-10-02 16:13:47', '2017-10-02 16:13:47', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles_cate`
--

CREATE TABLE `articles_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 : news, 2 services',
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_cate`
--

INSERT INTO `articles_cate` (`id`, `name`, `slug`, `alias`, `description`, `type`, `image_url`, `created_at`, `updated_at`, `created_user`, `updated_user`, `status`, `display_order`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`, `is_hot`) VALUES
(1, 'Tin giáo dục', 'tin-giao-duc', 'Tin giao duc', '', 1, '', '2017-10-02 16:11:51', '2017-10-02 16:11:51', 0, 0, 1, 0, 'Tin giáo dục', 'Tin giáo dục', '', '', 0),
(2, 'Góc chia sẻ', 'goc-chia-se', 'Goc chia se', '', 1, '', '2017-10-02 16:12:03', '2017-10-02 16:12:03', 0, 0, 1, 0, 'Góc chia sẻ', 'Góc chia sẻ', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `ads_url` varchar(255) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_type` tinyint(1) NOT NULL COMMENT '1 : danh muc cha , 2 : danh mục con',
  `type` int(11) NOT NULL COMMENT '1 : không liên kết, 2 : trỏ đến 1 trang, 3',
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image_url`, `ads_url`, `time_start`, `time_end`, `object_id`, `object_type`, `type`, `display_order`, `status`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(8, '2017/07/18/banner-landing-1500389797.png', '', 0, 0, 1, 4, 1, 0, 1, '2017-05-20 19:20:08', '2017-07-18 21:56:39', 1, 1),
(9, '2017/05/23/banner-slideshow-batdongsan4-1920x400-1495554794.jpg', '', 0, 0, 3, 4, 1, 0, 1, '2017-05-21 15:53:43', '2017-05-23 22:53:16', 1, 1),
(10, '2017/05/23/img-vision-1495554801.jpg', '', 0, 0, 3, 4, 1, 0, 1, '2017-05-21 15:57:11', '2017-05-23 22:53:23', 1, 1),
(11, '2017/05/24/phoi-canh-him-lam-cho-lon-1495606414.jpg', '', 0, 0, 4, 4, 1, 0, 1, '2017-05-24 13:13:37', '2017-05-24 13:13:37', 1, 1),
(12, '2017/05/24/tong-quan-du-an-can-ho-centana-thu-thiem1-1495606424.jpg', 'http://dothi9.com/du-an/du-an-can-ho-the-eastern-quan-9-3', 0, 0, 4, 4, 2, 0, 1, '2017-05-24 13:13:55', '2017-05-24 13:13:55', 1, 1),
(16, '2017/06/13/banner-loc-an-long-thanh-1497290433.jpg', '', 0, 0, 5, 4, 1, 0, 1, '2017-06-13 01:00:34', '2017-06-13 01:00:34', 1, 1),
(32, '2017/07/14/banner-slider-1500000281.gif', 'http://thanhphuthinhland.vn/du-an/kdc-an-thang-rach-kien', 0, 0, 2, 3, 2, 0, 1, '2017-07-09 22:24:11', '2017-07-16 09:15:21', 1, 1),
(33, '2017/07/14/banner-slider-1500000310.gif', 'http://thanhphuthinhland.vn/du-an/kdc-an-thang-rach-kien', 0, 0, 3, 3, 2, 0, 1, '2017-07-09 22:24:31', '2017-07-16 09:15:27', 1, 1),
(34, '2017/07/14/banner-top-an-thang-1500005035.jpg', 'http://thanhphuthinhland.vn/du-an/kdc-an-thang-rach-kien', 0, 0, 4, 3, 2, 0, 1, '2017-07-10 06:36:32', '2017-07-16 09:15:14', 1, 1),
(38, '/public/uploads/images/banner-2-min-1506613419.png', '', 0, 0, 1, 3, 1, 0, 1, '2017-09-27 07:29:45', '2017-09-28 22:43:44', 1, 1),
(39, '/public/uploads/images/banner-5-min-1506613432.png', '', 0, 0, 1, 3, 1, 0, 1, '2017-09-27 07:29:57', '2017-09-28 22:44:00', 1, 1),
(40, '/public/uploads/images/banner-giua-min-1506688208.png', '', 0, 0, 5, 3, 1, 0, 1, '2017-09-27 07:30:20', '2017-09-29 19:30:14', 1, 1),
(41, '/public/uploads/images/banner-4-min-1506613461.png', '', 0, 0, 1, 3, 1, 0, 1, '2017-09-28 15:17:03', '2017-09-28 22:44:27', 1, 1),
(42, '/public/uploads/images/banner-3-min-1506613486.jpg', '', 0, 0, 1, 3, 1, 0, 1, '2017-09-28 22:26:43', '2017-09-28 22:45:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE `cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `is_widget` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`id`, `name`, `alias`, `slug`, `description`, `image_url`, `parent_id`, `display_order`, `meta_id`, `is_hot`, `is_widget`, `status`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Thiết kế biệt thự cổ điển', '', 'thiet-ke-biet-thu-co-dien', 'Houseland chuyên thiết kế biệt thự cổ điển, thiết kế biệt thự tân cổ điển, thiết kế biệt thự bán cổ điển đẹp, uy tín chất lượng nhất hiện nay với kiến trúc độc đáo mang đậm phong cách kiến trúc phương tây', '/public/uploads/images/avata-thiet-ke-biet-thu-co-dien-min-1506862301.jpg', 1, 1, 211, 1, 0, 1, 1, 1, '2017-09-09 12:21:00', '2017-10-01 19:51:49'),
(2, 'Thiết kế biệt thự hiện đại', '', 'thiet-ke-biet-thu-hien-dai', 'Thiết kế biệt thự hiện đại đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-biet-thu-hien-dai-min-1506862379.jpg', 1, 2, 212, 1, 0, 1, 1, 1, '2017-09-09 12:22:22', '2017-10-01 19:53:04'),
(3, 'Thiết kế biệt thự phố', '', 'thiet-ke-biet-thu-pho', 'Thiết kế biệt thự phố đẹp, thiết kế biệt thự phố 1 mặt tiền, thiết kế biệt thự phố 2 mặt tiền sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-biet-thu-pho-min-1506862446.jpg', 1, 3, 213, 1, 0, 1, 1, 1, '2017-09-09 12:22:30', '2017-10-01 19:54:10'),
(4, 'Thiết kế biệt thự vườn', '', 'thiet-ke-biet-thu-vuon', 'Thiết kế biệt thự vườn đẹp, Thiết kế biệt thự nhà vườn đẹp sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-biet-thu-vuon-min-1506862429.jpg', 1, 4, 214, 1, 0, 1, 1, 1, '2017-09-09 12:22:38', '2017-10-01 19:53:54'),
(5, 'Thiết kế nhà phố', '', 'thiet-ke-nha-pho', 'Thiết kế nhà phố đẹp, Thiết kế nhà phố hiện đại, thiết kế nhà phố cổ điển sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-nha-pho-min-1506862026.jpg', 1, 5, 215, 1, 0, 1, 1, 1, '2017-09-09 12:22:46', '2017-10-01 19:47:14'),
(6, 'Thiết kế nhà hàng - Khách sạn', '', 'thiet-ke-nha-hang-khach-san', 'Thiết kế nhà hàng - Khách sạn đẹp, Thiết kế nhà hàng - Khách sạn hiện đại, Thiết kế nhà hàng - Khách sạn cổ điển sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-nha-hang-min-1506862089.jpg', 1, 6, 216, 0, 0, 1, 1, 1, '2017-09-09 12:23:59', '2017-10-01 19:48:15'),
(7, 'Thiết kế resort - Khu nghĩ dưỡng', '', 'thiet-ke-resort-khu-nghi-duong', 'Thiết kế resort - Khu nghĩ dưỡng đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-resort-min-1506862150.jpg', 1, 7, 217, 0, 0, 1, 1, 1, '2017-09-09 12:24:13', '2017-10-01 19:49:16'),
(8, 'Thiết kế chung cư mini', '', 'thiet-ke-chung-cu-mini', 'Thiết kế chung cư mini đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-chung-cu-mini-min-1506862184.jpg', 1, 8, 218, 1, 0, 1, 1, 1, '2017-09-09 12:24:20', '2017-10-01 19:49:50'),
(9, 'Thiết kế cao ốc - Văn Phòng', '', 'thiet-ke-cao-oc-van-phong', 'Thiết kế cao ốc - Văn Phòng đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-chung-cu-mini-min-1506862184.jpg', 1, 9, 219, 0, 0, 1, 1, 1, '2017-09-09 12:24:28', '2017-10-01 19:50:16'),
(10, 'Thiết kế showroom', '', 'thiet-ke-showroom', 'Thiết kế showroom đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-showroom-min-1506862243.jpg', 1, 10, 220, 0, 0, 1, 1, 1, '2017-09-09 12:24:36', '2017-10-01 19:50:46'),
(11, 'Thiết kế Cafe - Khu du lịch - Homestay', '', 'thiet-ke-cafe-khu-du-lich-homestay', 'Thiết kế Cafe - Khu du lịch - Homestay đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-biet-quan-cafe-min-1506862276.jpg', 1, 11, 221, 0, 0, 1, 1, 1, '2017-09-09 12:24:44', '2017-10-01 19:51:21'),
(12, 'Thi Công Biệt thự', '', 'thi-cong-biet-thu', 'Houseland chuyên thi công các dòng biệt thự như: thi công biệt thự cổ điển, thi công biệt thự phố, thi công biệt thự vườn, thi công biệt thự nhà vườn với giá rẻ nhất hiện nay trên thị trường.', '/public/uploads/images/avata-chung-test-min-1506859426.png', 2, 1, 222, 0, 0, 1, 1, 1, '2017-09-09 12:24:54', '2017-10-01 19:12:20'),
(13, 'Thi Công Nhà phố', '', 'thi-cong-nha-pho', 'Chuyên thi công nhà phố, thi công nhà phố hiện đại, thi công nhà phố cổ điển đẹp, sang trọng giá rẻ, uy tín nhất hiện nay.', '/public/uploads/images/avata-thiet-ke-nha-pho-min-1506862026.jpg', 2, 2, 223, 0, 0, 1, 1, 1, '2017-09-09 12:25:01', '2017-10-01 19:53:24'),
(14, 'Thi Công Resort', '', 'thi-cong-resort', 'Chuyên thi công Resort, thi công Resort hiện đại, thi công Resort cổ điển đẹp, sang trọng giá rẻ, uy tín nhất hiện nay.', '/public/uploads/images/avata-thiet-ke-resort-min-1506862150.jpg', 2, 3, 224, 0, 0, 1, 1, 1, '2017-09-09 12:25:07', '2017-10-01 20:03:52'),
(15, 'Thi Công Văn phòng', '', 'thi-cong-van-phong', 'Chuyên thi công Văn phòng, thi công Văn phòng hiện đại, thi công Văn phòng cổ điển đẹp, sang trọng giá rẻ, uy tín nhất hiện nay.', '/public/uploads/images/avata-thiet-ke-van-phong-min-1506863096.png', 2, 4, 225, 0, 0, 1, 1, 1, '2017-09-09 12:25:14', '2017-10-01 20:05:03'),
(16, 'Thi Công Chung cư', '', 'thi-cong-chung-cu', 'Chuyên thi công Chung cư đẹp, sang trọng giá rẻ, uy tín nhất hiện nay.', '/public/uploads/images/avata-thiet-ke-chung-cu-mini-min-1506862184.jpg', 2, 5, 226, 0, 0, 1, 1, 1, '2017-09-09 12:25:21', '2017-10-01 20:05:38'),
(17, 'Thi Công Nhà hàng - khách sạn', '', 'thi-cong-nha-hang-khach-san', 'Chuyên thi công Nhà hàng - khách sạn, thi công Nhà hàng - khách sạn hiện đại, thi công Nhà hàng - khách sạn cổ điển đẹp, sang trọng giá rẻ, uy tín nhất hiện nay.', '/public/uploads/images/avata-thiet-ke-nha-hang-min-1506862089.jpg', 2, 6, 227, 0, 0, 1, 1, 1, '2017-09-09 12:25:32', '2017-10-01 20:06:38'),
(18, 'Nội thất biệt thự', '', 'noi-that-biet-thu', 'Thiết kế nội thất biệt thự cổ điển, nội thất biệt thự hiện đại, đẹp, sang trọng nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-noi-that-min-1506862342.jpg', 3, 1, 228, 1, 0, 1, 1, 1, '2017-09-09 12:25:45', '2017-10-01 19:52:29'),
(19, 'Nội thất nhà phố', '', 'noi-that-nha-pho', 'Thiết kế Nội thất nhà phố, Nội thất nhà phố hiện đại, đẹp, sang trọng nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-noi-that-min-1506862342.jpg', 3, 2, 229, 0, 0, 1, 1, 1, '2017-09-09 12:25:53', '2017-10-01 19:55:40'),
(20, 'Nội thất văn phòng', '', 'noi-that-van-phong', 'Thiết kế Nội thất văn phòng, Nội thất văn phòng hiện đại, đẹp, sang trọng nhất hiện nay trên thị trường.', '/public/uploads/images/avata-thiet-ke-showroom-min-1506862243.jpg', 3, 3, 230, 0, 0, 1, 1, 1, '2017-09-09 12:26:00', '2017-10-01 19:56:35'),
(21, 'Biệt thự cổ điển', '', 'biet-thu-co-dien', 'Tổng hợp các mẫu biệt thự cổ điển, biệt thự tân cổ điển, biệt thự bán cổ điển, biệt thự cổ điển pháp do các KTS houseland thiết kế cho quý khách hàng tham khảo.', '/public/uploads/images/avata-thiet-ke-biet-thu-co-dien-min-1506862301.jpg', 4, 1, 231, 1, 0, 1, 1, 1, '2017-09-09 12:26:10', '2017-10-01 19:52:42'),
(22, 'Biệt thự hiện đại', '', 'biet-thu-hien-dai', 'Tổng hợp các mẫu thự hiện đại, biệt thự hiện đại đẹp với kiến trúc đẹp, độc lạ mang đậm Phong cách kiến trúc Phương Tây cho quý khách hàng tham khảo.', '/public/uploads/images/avata-thiet-ke-biet-thu-hien-dai-min-1506862379.jpg', 4, 2, 232, 1, 0, 1, 1, 1, '2017-09-09 12:26:23', '2017-10-01 19:58:22'),
(23, 'Biệt thự phố', '', 'biet-thu-pho', 'Tổng hợp các mẫu biệt thự phố, biệt thự phố hiện đại, biệt thự phố cổ điển, biệt thự phố 1 mặt tiền, biệt thự phố 2 mặt tiền đẹp với kiến trúc đẹp, độc lạ mang đậm Phong cách kiến trúc Phương Tây cho quý khách hàng tham khảo.', '/public/uploads/images/avata-thiet-ke-biet-thu-pho-min-1506862446.jpg', 4, 3, 233, 0, 0, 1, 1, 1, '2017-09-09 12:26:29', '2017-10-01 20:00:01'),
(24, 'Biệt thự vườn', '', 'biet-thu-vuon', 'Tổng hợp các mẫu biệt thự vườn đẹp với kiến trúc đẹp, độc lạ mang đậm Phong cách kiến trúc Phương Tây cho quý khách hàng tham khảo.', '/public/uploads/images/avata-thiet-ke-biet-thu-vuon-min-1506862429.jpg', 4, 4, 234, 0, 0, 1, 1, 1, '2017-09-09 12:26:37', '2017-10-01 20:00:41'),
(25, 'Mẫu showroom', '', 'mau-showroom', 'Tổng hợp các mẫu showroom đẹp với kiến trúc đẹp, độc lạ mang đậm Phong cách kiến trúc Phương Tây cho quý khách hàng tham khảo.', '/public/uploads/images/avata-thiet-ke-resort-min-1506862150.jpg', 4, 5, 235, 0, 0, 1, 1, 1, '2017-09-09 12:26:44', '2017-10-01 20:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `cate_parent`
--

CREATE TABLE `cate_parent` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `display_order` tinyint(4) NOT NULL DEFAULT '1',
  `meta_id` bigint(20) DEFAULT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  `is_widget` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cate_parent`
--

INSERT INTO `cate_parent` (`id`, `name`, `alias`, `slug`, `description`, `image_url`, `display_order`, `meta_id`, `is_hot`, `is_widget`, `status`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Thiết kế kiến trúc', NULL, 'thiet-ke-kien-truc', 'Chuyên thiết kế biệt thự cổ điển, thiết kế biệt thự hiện đại, thiết kế biệt thự phố, thiết kế nhà phố, thiết kế biệt thự vườn, thiết kế resort, thiết kế chung cư mini, thiết kế nhà hàng...uy tín chất lượng nhất hiện nay trên thị trường.', '', 1, 207, 1, 0, 1, 1, 1, '2017-09-09 12:18:08', '2017-10-01 19:04:05'),
(2, 'Thi công xây dựng', NULL, 'thi-cong-xay-dung', 'Chuyên thi công xây dựng biệt thự, thi công xây dựng nhà phố, thi công xây dựng resort, chung cư uy tín nhất hiện nay với hơn 10 năm kinh nghiệm houseland cam kết sẽ đến đến chất lượng tốt nhất cho khách hàng', '/public/uploads/images/avata-chung-test-min-1506859426.png', 1, 208, 1, 0, 1, 1, 1, '2017-09-09 12:18:55', '2017-10-01 19:05:53'),
(3, 'Thiết kế nội thất', NULL, 'thiet-ke-noi-that', 'Thiết kế nội nhất nhà phố, thiết kế nội thất biệt thự, nội thất chung cư rẻ, chất lượng uy tín nhất hiện nay ', '/public/uploads/images/avata-chung-test-min-1506859426.png', 1, 209, 1, 0, 1, 1, 1, '2017-09-09 12:19:03', '2017-10-01 19:07:06'),
(4, 'Kho nhà mẫu', NULL, 'kho-nha-mau', 'Tập hợp tất cả các mẫu thiết kế biệt thự cổ điển, thiết kế biệt thự vườn, hiện đại phố, mẫu thiết kế nhà phố, mẫu thiết kế chung cư, resort....đẹp nhất hiện nay cho quý khách hàng tham khảo.', '/public/uploads/images/avata-chung-test-min-1506859426.png', 1, 210, 1, 0, 1, 1, 1, '2017-09-09 12:19:14', '2017-10-01 19:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `type`, `title`, `gender`, `full_name`, `email`, `phone`, `content`, `status`, `project_id`, `created_at`, `updated_at`, `updated_user`) VALUES
(6, 2, '', 1, 'Triệu Dĩnh Trinh', 'kitty_miu_online_love@yahoo.com', '0911139978', 'Tư vấn', 1, 1, '2017-07-28 13:48:53', '2017-07-28 13:48:53', 0),
(7, 2, '', 1, 'Nguyễn Thị Ngọc Trinh ', 'ngoctrinh2279@gmail.com', '0917244108', 'Xem đất \r\n', 1, 1, '2017-07-31 11:21:39', '2017-07-31 11:21:39', 0),
(8, 2, '', 1, 'Định', 'vandinhmobi@gmail.com', '0913034268', 'Đăng ký đi xem đất', 1, 1, '2017-08-01 20:36:45', '2017-08-01 20:36:45', 0),
(9, 2, '', 1, 'Trần Ánh Hoa', 'solotran67@gmail.com', '0961244525', 'đất chia nền chưa,mỗi miếng dài? ngang?, trả góp 50% có lãi không trong bao nhiêu tháng, có xe đưa đi xem không', 1, 1, '2017-08-09 07:38:02', '2017-08-09 07:38:02', 0),
(10, 2, '', 1, 'Duyen', 'duyen_nguyen6699@yahoo.com', '01204655810', 'Công ty còn bán đất nền kdc an thắng không?\r\nTôi muốn tham quan dự án, công ty có tổ chức đưa khách đi tham quan vào thứ 7, cn không?', 1, 1, '2017-08-11 20:23:30', '2017-08-11 20:23:30', 0),
(11, 0, '', 1, 'Trần Quan Thành', 'test@gmail.com', '903171040', 'dfsaf', 1, NULL, '2017-09-13 06:42:19', '2017-09-13 06:42:19', 0),
(12, 0, '', 1, 'Nguyễn Huy Hoàng', 'hoangnhpublic@gmail.com', '0917492306', 'Test gửi liên hệ\r\n', 1, NULL, '2017-09-14 09:00:13', '2017-09-14 09:00:13', 0),
(13, 0, '', 1, 'Nguyễn Huy Hoàng', 'hoangnhpublic@gmail.com', '0917492306', 'Test gửi liên hệ\r\n', 1, NULL, '2017-09-14 09:01:08', '2017-09-14 09:01:08', 0),
(14, 0, '', 1, 'Nguyen Huy Hoang', 'hoangnhpublic@gmail.com', '0917492306', 'Hoang tesst gui lien he', 1, NULL, '2017-09-14 09:01:28', '2017-09-14 09:01:28', 0),
(15, 0, '', 1, 'Nguyen Huy Hoang', 'hoangnhpublic@gmail.com', '0917492306', 'Hoang tesst gui lien he', 1, NULL, '2017-09-14 09:02:16', '2017-09-14 09:02:16', 0),
(16, 0, '', 1, 'Lê văn sơn', 'vanson29193@gmail.com', '0906 011 038', 'gửi mẫu cho tôi', 1, NULL, '2017-09-27 21:48:38', '2017-09-27 21:48:38', 0),
(17, 0, '', 1, 'Lê Thị Cẩm Hằng', 'vanthai251292@gmail.com', '0906011038', '55555555555vvvvvvvvvvvvvvvv', 1, NULL, '2017-09-27 21:49:31', '2017-09-27 21:49:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `counter_ips`
--

CREATE TABLE `counter_ips` (
  `ip` varchar(15) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_type` tinyint(4) NOT NULL COMMENT '1 : product 2: articles 3 :home',
  `visit` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter_ips`
--

INSERT INTO `counter_ips` (`ip`, `object_id`, `object_type`, `visit`) VALUES
('118.69.36.195', 1, 1, 1506913036),
('203.113.152.5', 16, 1, 1506916553),
('203.113.152.7', 13, 1, 1506916553),
('203.113.152.7', 19, 1, 1506916554),
('203.113.152.7', 17, 1, 1506916554),
('203.113.152.7', 18, 1, 1506916555),
('203.113.152.5', 14, 1, 1506916556),
('203.113.152.4', 20, 1, 1506916558),
('115.78.10.26', 24, 1, 1506916651),
('118.69.36.195', 19, 1, 1506917529),
('115.78.10.26', 19, 1, 1506917624),
('115.78.10.26', 18, 1, 1506917975),
('171.253.193.183', 19, 1, 1506918141),
('171.253.193.183', 24, 1, 1506918197),
('171.253.193.183', 14, 1, 1506919173),
('115.78.10.26', 20, 1, 1506920030),
('171.253.223.89', 117, 2, 1506921701);

-- --------------------------------------------------------

--
-- Table structure for table `counter_values`
--

CREATE TABLE `counter_values` (
  `id` bigint(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_type` tinyint(4) NOT NULL COMMENT '1 : product 2: articles 3 :home',
  `day_id` bigint(11) NOT NULL,
  `day_value` bigint(11) NOT NULL,
  `all_value` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter_values`
--

INSERT INTO `counter_values` (`id`, `object_id`, `object_type`, `day_id`, `day_value`, `all_value`) VALUES
(1, 1, 1, 274, 2, 2),
(2, 117, 2, 274, 2, 2),
(3, 100, 2, 274, 1, 1),
(4, 4, 1, 274, 1, 1),
(5, 21, 1, 274, 1, 1),
(6, 22, 1, 274, 1, 1),
(7, 24, 1, 274, 3, 3),
(8, 15, 1, 274, 1, 1),
(9, 13, 1, 274, 2, 2),
(10, 16, 1, 274, 2, 2),
(11, 19, 1, 274, 5, 5),
(12, 17, 1, 274, 2, 2),
(13, 18, 1, 274, 3, 3),
(14, 14, 1, 274, 3, 3),
(15, 20, 1, 274, 3, 3),
(16, 23, 1, 274, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` text,
  `image_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `object` text,
  `benefit` text,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int(11) DEFAULT NULL,
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_link`
--

CREATE TABLE `custom_link` (
  `id` int(11) NOT NULL,
  `link_text` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `block_id` int(11) NOT NULL COMMENT '1 : lien ket noi bat'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_link`
--

INSERT INTO `custom_link` (`id`, `link_text`, `link_url`, `display_order`, `block_id`) VALUES
(1, 'Thiết Kế Biệt thự cổ điển', '#', 1, 1),
(2, 'Thiết kế biệt thự hiện đại', '#', 3, 1),
(3, 'Thiết Kế Biệt Thự phố', '#', 2, 1),
(4, 'Tin tức', '#', 1, 2),
(5, 'Quy chế hoạt động', '#', 3, 2),
(6, 'Bảo mật thông tin', '#', 4, 2),
(10, 'Thiết Kế Biệt thự vườn', '#', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hot_cate`
--

CREATE TABLE `hot_cate` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : cha 2 : con',
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hot_cate`
--

INSERT INTO `hot_cate` (`id`, `title`, `object_id`, `type`, `display_order`, `status`) VALUES
(1, 'Thiết kế kiến trúc', 1, 1, 1, 0),
(2, 'Thiết kế chung cư mini', 8, 2, 4, 0),
(6, 'Thi công xây dựng', 2, 1, 3, 0),
(7, 'Thiết kế biệt thự hiện đại', 2, 2, 6, 0),
(8, 'Thi Công Biệt thự', 12, 2, 5, 0),
(9, 'Thiết kế biệt thự vườn', 4, 2, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `info_seo`
--

CREATE TABLE `info_seo` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `custom_text` text NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : loai  2 cha 3 con 4 page 5 articles 6 custom',
  `url` varchar(255) DEFAULT NULL,
  `title_attr` varchar(255) DEFAULT NULL,
  `menu_id` tinyint(4) NOT NULL DEFAULT '1',
  `parent_id` tinyint(4) NOT NULL DEFAULT '0',
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `slug`, `object_id`, `type`, `url`, `title_attr`, `menu_id`, `parent_id`, `display_order`, `status`) VALUES
(1, 'Trang chủ', 'trang-chu', 0, 6, 'http://thicongxaydungnha.vn', 'trang-chu', 1, 0, 1, 0),
(2, 'Thiết kế kiến trúc', 'thiet-ke-kien-truc', 1, 1, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc', 'thiet-ke-kien-truc', 1, 0, 3, 0),
(4, 'Thiết kế nội thất', 'thiet-ke-noi-that', 3, 1, 'http://thicongxaydungnha.vn/thiet-ke-noi-that', 'thiet-ke-noi-that', 1, 0, 5, 0),
(6, 'Kho nhà mẫu', 'kho-nha-mau', 4, 1, 'http://thicongxaydungnha.vn/kho-nha-mau', 'kho-nha-mau', 1, 0, 6, 0),
(7, 'Thiết kế biệt thự cổ điển', 'thiet-ke-biet-thu-co-dien', 1, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-biet-thu-co-dien', 'thiet-ke-biet-thu-co-dien', 1, 2, 1, 0),
(8, 'Thiết kế biệt thự hiện đại', 'thiet-ke-biet-thu-hien-dai', 2, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-biet-thu-hien-dai', 'thiet-ke-biet-thu-hien-dai', 1, 2, 2, 0),
(9, 'Thiết kế biệt thự phố', 'thiet-ke-biet-thu-pho', 3, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-biet-thu-pho', 'thiet-ke-biet-thu-pho', 1, 2, 3, 0),
(10, 'Thiết kế biệt thự vườn', 'thiet-ke-biet-thu-vuon', 4, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-biet-thu-vuon', 'thiet-ke-biet-thu-vuon', 1, 2, 4, 0),
(11, 'Thiết kế nhà phố', 'thiet-ke-nha-pho', 5, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-nha-pho', 'thiet-ke-nha-pho', 1, 2, 5, 0),
(12, 'Thiết kế nhà hàng - Khách sạn', 'thiet-ke-nha-hang-khach-san', 6, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-nha-hang-khach-san', 'thiet-ke-nha-hang-khach-san', 1, 2, 6, 0),
(13, 'Thiết kế resort - Khu nghĩ dưỡng', 'thiet-ke-resort-khu-nghi-duong', 7, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-resort-khu-nghi-duong', 'thiet-ke-resort-khu-nghi-duong', 1, 2, 7, 0),
(14, 'Thiết kế chung cư mini', 'thiet-ke-chung-cu-mini', 8, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-chung-cu-mini', 'thiet-ke-chung-cu-mini', 1, 2, 8, 0),
(15, 'Thiết kế cao ốc - Văn Phòng', 'thiet-ke-cao-oc-van-phong', 9, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-cao-oc-van-phong', 'thiet-ke-cao-oc-van-phong', 1, 2, 9, 0),
(16, 'Thiết kế showroom', 'thiet-ke-showroom', 10, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-showroom', 'thiet-ke-showroom', 1, 2, 10, 0),
(17, 'Thiết kế Cafe - Khu du lịch - Homestay', 'thiet-ke-cafe-khu-du-lich-homestay', 11, 2, 'http://thicongxaydungnha.vn/thiet-ke-kien-truc/thiet-ke-cafe-khu-du-lich-homestay', 'thiet-ke-cafe-khu-du-lich-homestay', 1, 2, 11, 0),
(18, 'Biệt thự', 'biet-thu', 12, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/biet-thu', 'biet-thu', 1, 3, 1, 0),
(19, 'Nhà phố', 'nha-pho', 13, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/nha-pho', 'nha-pho', 1, 3, 2, 0),
(20, 'Resort', 'resort', 14, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/resort', 'resort', 1, 3, 3, 0),
(21, 'Văn phòng', 'van-phong', 15, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/van-phong', 'van-phong', 1, 3, 4, 0),
(22, 'Chung cư', 'chung-cu', 16, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/chung-cu', 'chung-cu', 1, 3, 5, 0),
(23, 'Nhà hàng - khách sạn', 'nha-hang-khach-san', 17, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/nha-hang-khach-san', 'nha-hang-khach-san', 1, 3, 6, 0),
(24, 'Nội thất biệt thự', 'noi-that-biet-thu', 18, 2, 'http://thicongxaydungnha.vn/thiet-ke-noi-that/noi-that-biet-thu', 'noi-that-biet-thu', 1, 4, 1, 0),
(25, 'Nội thất nhà phố', 'noi-that-nha-pho', 19, 2, 'http://thicongxaydungnha.vn/thiet-ke-noi-that/noi-that-nha-pho', 'noi-that-nha-pho', 1, 4, 2, 0),
(26, 'Nội thất văn phòng', 'noi-that-van-phong', 20, 2, 'http://thicongxaydungnha.vn/thiet-ke-noi-that/noi-that-van-phong', 'noi-that-van-phong', 1, 4, 3, 0),
(27, 'Biệt thự cổ điển', 'biet-thu-co-dien', 21, 2, 'http://thicongxaydungnha.vn/kho-nha-mau/biet-thu-co-dien', 'biet-thu-co-dien', 1, 6, 1, 0),
(28, 'Biệt thự hiện đại', 'biet-thu-hien-dai', 22, 2, 'http://thicongxaydungnha.vn/kho-nha-mau/biet-thu-hien-dai', 'biet-thu-hien-dai', 1, 6, 2, 0),
(29, 'Biệt thự phố', 'biet-thu-pho', 23, 2, 'http://thicongxaydungnha.vn/kho-nha-mau/biet-thu-pho', 'biet-thu-pho', 1, 6, 3, 0),
(30, 'Biệt thự vườn', 'biet-thu-vuon', 24, 2, 'http://thicongxaydungnha.vn/kho-nha-mau/biet-thu-vuon', 'biet-thu-vuon', 1, 6, 4, 0),
(31, 'Mẫu showroom', 'mau-showroom', 25, 2, 'http://thicongxaydungnha.vn/kho-nha-mau/mau-showroom', 'mau-showroom', 1, 6, 5, 0),
(32, 'Dịch vụ', 'dich-vu', 0, 6, 'http://thicongxaydungnha.vn/dich-vu.html', 'dich-vu', 1, 0, 7, 0),
(33, 'Liên hệ', 'lien-he', 0, 6, 'http://thicongxaydungnha.vn/lien-he.html', 'lien-he', 1, 0, 9, 0),
(34, 'Tin tức', 'tin-tuc', 0, 6, '#', 'tin-tuc', 1, 0, 8, 0),
(35, 'Phong thủy', 'phong-thuy', 4, 5, 'http://thicongxaydungnha.vn/tin-tuc/phong-thuy', 'phong-thuy', 1, 34, 1, 0),
(36, 'Tư vấn luật', 'tu-van-luat', 5, 5, 'http://thicongxaydungnha.vn/tin-tuc/tu-van-luat', 'tu-van-luat', 1, 34, 2, 0),
(38, 'Giới thiệu', 'gioi-thieu', 0, 6, 'http://thicongxaydungnha.vn/gioi-thieu.html', 'gioi-thieu', 1, 0, 2, 0),
(42, 'Thi Công Biệt thự', 'thi-cong-biet-thu', 12, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/biet-thu', 'thi-cong-biet-thu', 1, 3, 7, 0),
(45, 'Thi Công Nhà phố', 'thi-cong-nha-pho', 13, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/nha-pho', 'thi-cong-nha-pho', 1, 43, 2, 0),
(46, 'Thi Công Resort', 'thi-cong-resort', 14, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/thi-cong-resort', 'thi-cong-resort', 1, 43, 3, 0),
(47, 'Chung cư', 'chung-cu', 16, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/chung-cu', 'chung-cu', 1, 43, 4, 0),
(48, 'Văn phòng', 'van-phong', 15, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/van-phong', 'van-phong', 1, 43, 5, 0),
(49, 'Nhà hàng - khách sạn', 'nha-hang-khach-san', 17, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/nha-hang-khach-san', 'nha-hang-khach-san', 1, 43, 6, 0),
(52, 'Thi công xây dựng', 'thi-cong-xay-dung', 2, 1, 'http://thicongxaydungnha.vn/thi-cong-xay-dung', 'thi-cong-xay-dung', 1, 0, 4, 0),
(53, 'Thi Công Biệt thự', 'thi-cong-biet-thu', 12, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/thi-cong-biet-thu', 'thi-cong-biet-thu', 1, 52, 1, 0),
(54, 'Thi Công Nhà phố', 'thi-cong-nha-pho', 13, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/thi-cong-nha-pho', 'thi-cong-nha-pho', 1, 52, 2, 0),
(55, 'Thi Công Resort', 'thi-cong-resort', 14, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/thi-cong-resort', 'thi-cong-resort', 1, 52, 3, 0),
(56, 'Thi Công Văn phòng', 'thi-cong-van-phong', 15, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/thi-cong-van-phong', 'thi-cong-van-phong', 1, 52, 4, 0),
(57, 'Thi Công Chung cư', 'thi-cong-chung-cu', 16, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/thi-cong-chung-cu', 'thi-cong-chung-cu', 1, 52, 5, 0),
(58, 'Thi Công Nhà hàng - khách sạn', 'thi-cong-nha-hang-khach-san', 17, 2, 'http://thicongxaydungnha.vn/thi-cong-xay-dung/thi-cong-nha-hang-khach-san', 'thi-cong-nha-hang-khach-san', 1, 52, 6, 0),
(59, 'Lịch Sử Hình Thành', 'lich-su-hinh-thanh', 10, 4, 'http://thicongxaydungnha.vn/lich-su-hinh-thanh.html', 'lich-su-hinh-thanh', 1, 38, 1, 0),
(60, 'Lĩnh Vực Hoạt Động', 'linh-vuc-hoat-dong', 11, 4, 'http://thicongxaydungnha.vn/linh-vuc-hoat-dong.html', 'linh-vuc-hoat-dong', 1, 38, 2, 0),
(61, 'Tuyển Dụng', 'tuyen-dung', 9, 5, 'http://thicongxaydungnha.vn/tin-tuc/tuyen-dung', 'tuyen-dung', 1, 34, 3, 0),
(62, 'Kiến Trúc Đẹp', 'kien-truc-dep', 10, 5, 'http://thicongxaydungnha.vn/tin-tuc/kien-truc-dep', 'kien-truc-dep', 1, 34, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `custom_text` text,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `title`, `description`, `keywords`, `custom_text`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Bán nhà riêng tại TP.HCM giá rẻ | Thanh Phú Thịnh Land', 'Bán nhà riêng giá rẻ tại tp.hcm, củ chi và long an. Thanh Phú Thịnh Land chuyên mua bán nhà riêng chính chủ đứng tên sổ hồng, thủ tục sang tên nhanh gọn.', 'bán nhà riêng', '', 2, 2, '2017-07-09 08:52:06', '2017-07-12 08:49:20'),
(2, 'Cách giải quyết tranh chấp đất đai theo luật hiện nay', '', '', '', 2, 2, '2017-07-09 11:01:51', '2017-07-09 11:01:51'),
(3, 'Tranh chấp quyền sử dụng đất có sổ đỏ như thế nào', '', '', '', 2, 2, '2017-07-09 14:23:55', '2017-07-09 14:23:55'),
(4, 'Chi phí sang tên sổ đỏ nhà đất và thủ tục như thế nào', '', '', '', 2, 2, '2017-07-09 14:53:42', '2017-07-09 14:53:42'),
(5, 'Đất thổ cư có được phép đào ao hay không', '', '', '', 2, 2, '2017-07-09 15:24:31', '2017-07-09 15:24:31'),
(6, 'Nếu quý vị là người quan tâm đến phong thủy, thì những linh vật được đặt trong nhà mang lại tài lộc, may mắn cho gia đình chắc hẵn quý vị không nên bỏ qua. Sau đây là bài viết chia sẻ về linh vật Thiềm Thừ, nó là linh vật gì, tác dụng và cách đặt như thế ', '', '', '', 2, 2, '2017-07-09 16:05:04', '2017-07-09 16:05:04'),
(7, 'Cách chuyển đất trồng lâu năm thành đất thổ cư như thế nào', '', '', '', 2, 2, '2017-07-09 16:24:56', '2017-07-09 16:24:56'),
(8, 'Thừa kế thế vị là gì? Quy định thừa kế như thế nào', '', '', '', 2, 2, '2017-07-09 16:55:30', '2017-07-09 16:55:30'),
(9, 'những điều cấm kỵ trong phong thủy phòng ngủ', '', 'những điều cấm kỵ trong phong thủy phòng ngủ', '', 3, 3, '2017-07-10 08:37:51', '2017-07-10 08:37:51'),
(10, 'Bán đất thổ cư Phan Văn Mảng Bến Lức Long An giá 300 triệu', '', '', '', 2, 2, '2017-07-10 08:42:25', '2017-07-10 13:46:46'),
(11, 'Mẫu nhà phố 1 trệt 2 lầu có sân thượng', '', '', '', 2, 2, '2017-07-10 09:22:53', '2017-07-10 09:22:53'),
(12, '', '', '', '', 2, 2, '2017-07-10 10:03:52', '2017-07-10 10:03:52'),
(13, '', '', '', '', 2, 2, '2017-07-10 10:04:58', '2017-07-10 10:04:58'),
(14, '', '', '', '', 2, 2, '2017-07-10 10:07:06', '2017-07-10 10:07:06'),
(15, '', '', '', '', 2, 2, '2017-07-10 10:09:49', '2017-07-10 10:09:49'),
(16, 'Những điều cấm kỵ trong phong thủy phòng ngủ', '', 'những điều cấm kỵ trong phong thủy phòng ngủ', '', 3, 2, '2017-07-10 13:26:54', '2017-07-14 09:02:15'),
(17, 'Những điều kiêng kỵ trong phong thủy nhà ở', '', 'phong thủy nhà ở', '', 3, 2, '2017-07-10 14:03:01', '2017-07-14 09:01:56'),
(18, 'Bán đất nền dự án Gia Long River Town Cần Đước Long An giá 350 triệu', '', '', '', 2, 2, '2017-07-10 14:12:56', '2017-07-10 14:12:56'),
(19, 'Cách khắc phục hướng nhà không tốt', '', '', '', 3, 2, '2017-07-10 14:30:03', '2017-07-14 09:01:38'),
(20, 'Bán đất thổ cư xã Mỹ Lộc Cần Giuộc Long An giá 400 triệu', '', '', '', 2, 2, '2017-07-10 14:36:40', '2017-07-10 14:36:40'),
(21, 'Cách hóa giải hướng nhà xấu', '', 'cách hóa giải hướng nhà xấu', '', 3, 1, '2017-07-10 14:46:32', '2017-09-22 16:27:09'),
(22, 'Bán đất mặt tiền xã Hòa Phú Châu Thành Long An giá 1 tỷ', '', '', '', 2, 2, '2017-07-10 14:57:16', '2017-07-10 14:57:16'),
(23, 'Bán đất nền gần công viên Võ Văn Tần Đức Hòa Long An', '', '', '', 2, 2, '2017-07-10 15:16:34', '2017-07-10 15:16:34'),
(24, 'Những loại cây không nên trồng trong nhà', '', 'những loại cây không nên trồng trong nhà', '', 3, 1, '2017-07-10 15:23:38', '2017-09-22 16:26:40'),
(25, 'Thị trường giao dịch căn hộ tại TP.HCM vượt đỉnh', '', '', '', 2, 2, '2017-07-10 15:36:54', '2017-07-10 15:36:54'),
(26, 'Sóng ngầm bất động sản siêu sang trên đất vàng Hồ Chí Minh', '', '', '', 2, 2, '2017-07-10 15:44:00', '2017-07-10 15:44:00'),
(27, 'Bất động sản quận 8 đang dần trở thành điểm sáng nhờ hạ tầng', '', '', '', 2, 2, '2017-07-10 15:55:26', '2017-07-10 15:55:26'),
(28, 'Những kiêng kỵ khi nhà có tang', '', 'những kiêng kỵ khi nhà có tang', '', 3, 3, '2017-07-10 16:15:26', '2017-07-10 16:32:51'),
(29, 'Nghề môi giới bất động sản không hề dễ giàu', '', '', '', 2, 2, '2017-07-10 16:18:24', '2017-07-10 16:18:24'),
(30, 'Đua nhau đặt mục tiêu lãi nghìn tỷ của các đại gia bất động sản', '', '', '', 2, 2, '2017-07-10 16:26:52', '2017-07-10 16:26:52'),
(31, 'Bất động sản quận 8 phát triển mạnh nhờ quy hoạch', '', '', '', 2, 2, '2017-07-10 16:36:32', '2017-07-10 16:36:32'),
(32, 'Những điều cấm kỵ khi xây nhà', '', 'những điều cấm kỵ khi xây nhà', '', 3, 1, '2017-07-10 16:53:18', '2017-09-22 16:26:06'),
(33, 'Mẫu nhà 2 tầng đẹp theo phong cách Nhật Bản', '', '', '', 2, 2, '2017-07-10 17:03:03', '2017-07-10 17:03:03'),
(34, 'Cách khai quang gương bát quái', '', 'cách khai quang gương bát quái', '', 3, 1, '2017-07-10 17:10:53', '2017-09-22 16:25:01'),
(35, 'Bán biệt thự giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Bán biệt thự giá rẻ tại tp.hcm, huyện củ chi và long an. Thanh Phú Thịnh Land chuyên mua bán biệt thự cao cấp giấy tờ pháp lý rõ ràng, sang tên nhanh chóng.', 'bán biệt thự giá rẻ', '', 2, 2, '2017-07-12 08:51:13', '2017-07-12 08:51:13'),
(36, 'Bán nhà mặt phố giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Bán nhà mặt phố giá rẻ tại tp.hcm và long an. Thanh Phú Thịnh Land chuyên mua bán nhà mặt phố giá rẻ, giấy tờ pháp lý rõ ràng, sang tên nhanh chóng.', 'bán nhà mặt phố', '', 2, 2, '2017-07-12 08:53:07', '2017-07-12 08:53:07'),
(37, 'Bán đất nền giá rẻ tại TP.HCM và Long An | Thanh Phú Thịnh Land', 'Bán đất nền giá rẻ tại Tp.HCM và Long An. Thanh Phú Thịnh Land chuyên mua bán đất nền giá rẻ, giấy tờ rõ ràng, tách sổ sang tên nhanh chóng.', 'bán đất nền', '', 2, 2, '2017-07-12 08:56:45', '2017-07-12 08:56:45'),
(38, 'Bán đất thổ cư giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Bán đất thổ cư giá rẻ tại Tp.HCM và Long An. Thanh Phú Thịnh Land chuyên mua bán đất thổ cư 100%, tách sổ riêng, sang tên nhanh chóng.', 'bán đất thổ cư', '', 2, 2, '2017-07-12 09:00:30', '2017-07-12 09:00:30'),
(39, 'Bán đất nông nghiệp giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Bán đất nông nghiệp giá rẻ. Thanh Phú Thịnh Land chuyên mua bán đất nông nghiệp, đất sào, đất mẫu, bán đất lâm nghiệp, đất rẫy giá rẻ.', 'bán đất nông nghiệp', '', 2, 2, '2017-07-12 10:33:49', '2017-07-12 10:33:49'),
(40, 'Cho thuê căn hộ chung cư giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Cho thuê căn hộ chung cư giá rẻ tại TP.HCM và Long An. Thanh Phú Thịnh Land chuyên cho thuê căn hộ chung cư cao cấp, họp đồng rõ ràng.', 'cho thuê căn hộ chung cư', '', 2, 2, '2017-07-12 10:49:30', '2017-07-12 10:49:30'),
(41, 'Cho thuê nhà riêng giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Cho thuê nhà riêng giá rẻ tại TP.HCM và Long An. Thanh Phú Thịnh Land chuyên cho thuê nhà riêng với nhiều diện tích khác nhau, nhiều mẫu nhà riêng các loại.', 'cho thuê nhà riêng', '', 2, 2, '2017-07-12 10:53:19', '2017-07-12 10:53:19'),
(42, 'Cho thuê nhà mặt phố giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Cho thuê nhà mặt phố giá rẻ tại TP.HCM và Long An. Thanh Phú Thịnh Land chuyên cho thuê nhà mặt phố nhiều diện tích và mẫu các loại khác nhau.', 'cho thuê nhà mặt phố', '', 2, 2, '2017-07-12 10:54:44', '2017-07-12 10:54:44'),
(43, 'Cho thuê nhà trọ giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Cho thuê nhà trọ giá rẻ tại TP.HCM và Long An. Thanh Phú Thịnh Land chuyên cho thuê nhà trọ nhiều diện tích khác nhau.', 'cho thuê nhà trọ', '', 2, 2, '2017-07-12 10:57:18', '2017-07-12 10:57:18'),
(44, 'Bán đất nông nghiệp giá rẻ tại Long An | Thanh Phú Thịnh Land', 'Bán đất nông nghiệp giá rẻ tại Long An. Thanh Phú Thịnh Land chuyên mua bán  đất sào, đất mẫu, bán đất lâm nghiệp, đất rẫy giá rẻ.', 'bán đất nông nghiệp', '', 2, 2, '2017-07-12 11:03:34', '2017-07-12 11:03:34'),
(45, 'Bán đất huyện Đức Hòa giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Đức Hòa giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Đức Hòa Long An.\r\n', 'bán đất huyện đức hòa', '', 2, 2, '2017-07-12 11:25:06', '2017-07-12 11:25:06'),
(46, 'Bán đất huyện Châu Thành giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Châu Thành giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Châu Thành Long An.', 'bán đất huyện châu thành', '', 2, 2, '2017-07-12 11:27:52', '2017-07-12 11:27:52'),
(47, 'Bán đất huyện Bến Lức giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Bến Lức giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Bến Lức Long An.', 'bán đất huyện bến lức', '', 2, 2, '2017-07-12 13:17:59', '2017-07-12 13:17:59'),
(48, 'Bán đất huyện Cần Đước giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Cần Đước giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Cần Đước Long An.', 'bán đất huyện cần đước', '', 2, 2, '2017-07-12 13:18:55', '2017-07-12 13:18:55'),
(49, 'Bán đất huyện Cần Giuộc giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Cần Giuộc giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Cần Giuộc Long An.', 'bán đất huyện cần giuộc', '', 2, 2, '2017-07-12 13:19:34', '2017-07-12 13:19:34'),
(50, 'Bán đất huyện Mộc Hóa giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Mộc Hóa giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Mộc Hóa Long An.', 'bán đất huyện mộc hóa', '', 2, 2, '2017-07-12 13:21:46', '2017-07-12 13:21:46'),
(51, 'Bán đất huyện Vĩnh Hưng giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Vĩnh Hưng giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Vĩnh Hưng Long An.', 'bán đất huyện vĩnh hưng', '', 2, 2, '2017-07-12 13:24:42', '2017-07-12 13:24:42'),
(52, 'Bán đất huyện Đức Huệ giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Đức Huệ giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Đức Huệ Long An.', 'bán đất huyện đức huệ', '', 2, 2, '2017-07-12 13:26:17', '2017-07-12 13:26:17'),
(53, 'Bán đất huyện Tân trụ giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Tân Trụ giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Tân Trụ Long An.', 'bán đất huyện tân trụ', '', 2, 2, '2017-07-12 13:59:59', '2017-07-12 13:59:59'),
(54, 'Bán đất huyện Tân Thanh giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Tân Thanh giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Tân Thanh Long An.', 'bán đất huyện tân thanh', '', 2, 2, '2017-07-12 14:02:02', '2017-07-12 14:02:02'),
(55, 'Bán đất huyện Thạnh Hóa giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Thạnh Hóa giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Thạnh Hóa Long An.', 'bán đất huyện thạnh hóa', '', 2, 2, '2017-07-12 14:07:08', '2017-07-12 14:07:08'),
(56, 'Bán đất huyện Thủ Thừa giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Thủ Thừa  giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Thủ Thừa Long An.', 'bán đất huyện thủ thừa', '', 2, 2, '2017-07-12 14:09:09', '2017-07-12 14:09:09'),
(57, 'Bán đất thị xã Kiến Tường giá rẻ | Thanh Phú Thịnh Land', 'Bán đất thị xã Kiến Tường giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại thị xã Kiến Tường Long An.\r\n', 'bán đất thị xã kiến tường', '', 2, 2, '2017-07-12 14:12:04', '2017-07-12 14:12:04'),
(58, 'Bán đất thành phố Tân An giá rẻ | Thanh Phú Thịnh Land', 'Bán đất thành phố Tân An giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại thành phố Tân An Long An.', 'bán đất thành phố tân an', '', 2, 2, '2017-07-12 14:22:53', '2017-07-12 14:22:53'),
(59, 'Bán đất thổ cư 100% tại Long An | Thanh Phú Thịnh Land', 'Bán đất thổ cư 100% tại long an, chuyên mua bán đất thổ cư với nhiều diện tích, giá cả khác nhau.', 'bán đất thổ cư 100% tại long an', '', 2, 2, '2017-07-12 14:31:01', '2017-07-12 14:31:01'),
(60, 'Mẫu nhà đẹp bên bờ biển ở Cape Cod', '', 'mẫu nhà đẹp', '', 2, 2, '2017-07-12 14:57:00', '2017-07-12 14:57:00'),
(61, 'Mẫu nhà Residence Private Elegant mang phong cách hiện đại', '', '', '', 2, 2, '2017-07-12 15:13:42', '2017-07-12 15:13:42'),
(62, 'Mẫu nhà Wategos Residence 2 tầng thiết kế mang phong cách hiện đại', '', '', '', 2, 2, '2017-07-12 15:38:48', '2017-07-12 15:38:48'),
(63, 'Phân tích dự án khu đô thị Xuân Ngọc', '', 'khu đô thị xuân ngọc', '', 2, 2, '2017-07-12 16:23:55', '2017-07-12 16:23:55'),
(64, 'Phân tích khu đô thị Waterpoint Huyện Bến Lức Long An', '', '', '', 2, 2, '2017-07-12 16:39:40', '2017-07-12 16:39:40'),
(65, 'Phân tích khu dân cư Nam Long - Long An', '', '', '', 2, 2, '2017-07-12 16:54:05', '2017-07-12 16:54:05'),
(66, 'Phân tích dự án khu dân cư Long Hậu - Long An', '', '', '', 2, 2, '2017-07-12 17:03:17', '2017-07-12 17:03:17'),
(67, 'Phân tích dự án khu căn hộ Everluck Residence', '', '', '', 2, 2, '2017-07-12 17:10:45', '2017-07-12 17:10:45'),
(68, 'Phân tích dự án khu dân cư Hồng Phát - Long An', '', '', '', 2, 1, '2017-07-12 17:18:28', '2017-07-14 08:39:07'),
(69, 'Bán đất KDC Tân Đức - Đức Huệ - Long An giá 1,5 triệu/m2', '', '', '', 2, 2, '2017-07-13 08:58:38', '2017-07-13 08:58:38'),
(70, 'Bán đất nền mặt tiền QL62 - Tân Lập - Mộc Hóa -Long An giá 1,5 tỷ', '', '', '', 2, 2, '2017-07-13 09:14:51', '2017-07-13 09:14:51'),
(71, 'Bán đất nền huyện Tân Hưng - Long An giá 450 triệu', '', '', '', 2, 2, '2017-07-13 09:35:20', '2017-07-13 09:35:20'),
(72, 'Bán đất mặt tiền tỉnh lộ 829, Tân Thạnh - Long An', '', '', '', 2, 2, '2017-07-13 10:04:10', '2017-07-13 10:04:10'),
(73, 'Nghĩa vụ tài chính khi chuyển mục đích sử dụng đất như thế nào', '', '', '', 2, 2, '2017-07-13 13:15:06', '2017-07-13 13:15:06'),
(74, 'Người nước ngoài có được nhận hoặc tặng nhà tại Việt Nam hay không', '', '', '', 2, 2, '2017-07-13 13:55:55', '2017-07-13 13:55:55'),
(75, 'Tài sản đất chưa có sổ đỏ lập di chúc như thế nào', '', '', '', 2, 2, '2017-07-13 15:30:57', '2017-07-13 15:30:57'),
(76, 'Thủ tục chuyển nhượng đất liền kề như thế nào', '', '', '', 2, 2, '2017-07-13 16:35:01', '2017-07-13 16:35:01'),
(77, 'Chuyển đất từ sổ đỏ sang sổ hồng như thế nào', '', '', '', 2, 2, '2017-07-14 10:03:16', '2017-07-14 10:03:16'),
(78, 'Thủ tục chuyển nhượng nhà chung cư chưa có sổ đỏ như thế nào', '', '', '', 2, 2, '2017-07-14 10:22:33', '2017-07-14 10:22:33'),
(79, 'Quy định về thủ tục sang tên quyền sử dụng đất như thế nào', '', '', '', 2, 2, '2017-07-14 11:13:05', '2017-07-14 11:13:05'),
(80, 'Thủ tục sang tên đổi chủ nhà đất như thế nào', '', '', '', 2, 2, '2017-07-14 11:21:32', '2017-07-14 11:21:32'),
(81, 'Thủ tục sang tên quyền sử dụng đất từ cha mẹ cho con như thế nào', '', '', '', 2, 2, '2017-07-14 14:11:26', '2017-07-14 14:11:26'),
(82, 'Thủ tục sang tên sổ đỏ đất thổ cư như thế nào', '', '', '', 2, 2, '2017-07-14 14:24:48', '2017-07-14 14:24:48'),
(83, 'Thủ tục sang tên sổ đỏ nhà chung cư như thế nào', '', '', '', 2, 2, '2017-07-14 14:51:49', '2017-07-14 14:51:49'),
(84, 'Thủ tục chuyển nhượng nhà chung cư chưa nhận bàn giao như thế nào', '', '', '', 2, 2, '2017-07-14 15:22:54', '2017-07-14 15:22:54'),
(85, 'Cách lấy ánh sáng cho phòng khách nhà phố', '', '', '', 2, 2, '2017-07-15 09:49:06', '2017-07-15 09:49:06'),
(86, 'Cách chọn giấy dán tường cho phòng khách', '', '', '', 2, 2, '2017-07-15 10:12:36', '2017-07-15 10:12:36'),
(87, 'Thủ tục cấp lại giấy chứng nhận quyền sử dụng đất như thế nào', '', '', '', 2, 2, '2017-07-15 11:25:16', '2017-07-15 11:25:16'),
(88, '', '', '', '', 1, 1, '2017-07-15 12:09:49', '2017-07-15 12:09:49'),
(89, '', '', '', '', 1, 2, '2017-07-15 12:11:07', '2017-07-27 14:49:39'),
(90, 'Những rủi ro khi bán nhà đất bằng giấy tờ viết tay cần biết', '', '', '', 2, 2, '2017-07-15 14:07:29', '2017-07-15 14:07:29'),
(91, 'Vị Trí - Sơ Đồ Khu Dân Cư An Thắng - Rạch Kiến', '', '', '', 2, 12, '2017-07-15 14:54:50', '2017-07-19 14:32:34'),
(92, 'Tiện ích Khu Dân Cư An Thắng - Rạch Kiến', '', '', '', 2, 12, '2017-07-15 16:24:46', '2017-07-19 14:25:29'),
(93, 'Quy Mô Dự Án KDC An Thắng - Rạch Kiến', '', '', '', 2, 12, '2017-07-15 16:55:39', '2017-07-19 14:39:03'),
(94, 'Phương Thức Thanh Toán Dự Án KDC An Thắng - Rạch Kiến', '', '', '', 2, 12, '2017-07-16 00:26:06', '2017-07-21 09:58:49'),
(95, 'Bản đồ quy hoạch huyện cần giuộc mới nhất', '', '', '', 2, 12, '2017-07-16 17:05:53', '2017-07-22 12:06:41'),
(96, 'Thủ tục cấp giấy phép xây dựng như thế nào', '', '', '', 2, 2, '2017-07-17 12:06:07', '2017-07-17 12:06:07'),
(97, 'Những thủ tục cần thiết khi xây nhà mới cần nên biết', '', '', '', 2, 2, '2017-07-17 14:12:37', '2017-07-17 14:12:37'),
(98, 'Những đối tượng được cấp giấy phép chứng nhận quyền sử dụng đất', '', '', '', 2, 2, '2017-07-17 15:15:21', '2017-07-17 15:15:21'),
(99, 'Trình tự thủ tục và thời gian giải quyết tách thửa như thế nào', '', '', '', 2, 2, '2017-07-17 15:56:26', '2017-07-17 15:56:26'),
(100, 'Tách thửa chia đất cho con như thế nào', '', '', '', 2, 2, '2017-07-17 16:10:47', '2017-07-17 16:10:47'),
(101, 'Chia tài sản thừa kế cho con chung và con riêng như thế nào', '', '', '', 2, 2, '2017-07-17 17:08:43', '2017-07-17 17:08:43'),
(102, 'Cách hóa giải hướng nhà tuyệt mệnh như thế nào', '', '', '', 2, 1, '2017-07-19 09:59:53', '2017-09-12 22:35:00'),
(103, 'Đất nền Long An - Miếng mồi béo bỡ của giới đầu tư', '', '', '', 2, 2, '2017-07-19 10:25:02', '2017-07-19 10:25:02'),
(104, 'Bản đồ quy hoạch huyện Cần Đước mới nhất', '', '', '', 2, 12, '2017-07-19 16:44:23', '2017-07-22 12:06:06'),
(105, 'Mua bán nhà đất cần chuẩn bị những giấy tờ gì', '', '', '', 2, 2, '2017-07-19 21:13:12', '2017-07-19 21:13:12'),
(106, 'Xin cấp sỏ đỏ chung cư cần những thủ tục gì', '', '', '', 2, 1, '2017-07-19 21:49:00', '2017-09-22 16:23:23'),
(107, 'Bản đồ quy hoạch chung thành phố Tân An mới nhất', '', '', '', 2, 2, '2017-07-20 09:36:44', '2017-07-20 09:36:44'),
(108, 'Bản đồ quy hoạch chung Kiến Tường Long An mới nhất', '', '', '', 2, 2, '2017-07-20 10:17:39', '2017-07-20 10:17:39'),
(109, 'Bản đồ quy hoạch chung huyện Bến Lức - Long An mới nhất', '', '', '', 2, 2, '2017-07-20 10:46:19', '2017-07-20 10:46:19'),
(110, 'Bản đồ quy hoạch chung huyện Thủ Thừa - Long An mới nhất', '', '', '', 2, 2, '2017-07-20 12:03:07', '2017-07-20 12:03:07'),
(111, 'Danh sách các phòng ban đơn vị trực thuộc huyện thạnh hóa', '', '', '', 2, 2, '2017-07-20 14:14:08', '2017-07-20 14:14:08'),
(112, 'Danh sách xã phường thị trấn tại Thạnh Hóa tỉnh Long An', '', '', '', 2, 2, '2017-07-20 15:12:34', '2017-07-20 15:12:34'),
(113, 'Thủ tục đổi sổ hồng cũ sang sổ mới như thế nào', '', '', '', 2, 1, '2017-07-20 15:57:10', '2017-09-22 16:23:15'),
(114, 'Thủ tục và giấy tờ hoàn công nhà như thế nào', '', '', '', 2, 1, '2017-07-20 16:06:52', '2017-09-22 16:23:09'),
(115, 'Thủ tục làm sổ đỏ và lệ phí như thế nào', '', '', '', 2, 1, '2017-07-20 16:23:57', '2017-09-16 15:45:12'),
(116, 'Diện tích bao nhiêu mới được cấp giấy phép xây dựng nhà ở', '', '', '', 2, 1, '2017-07-20 17:10:26', '2017-09-06 10:15:30'),
(117, 'Bản đồ quy hoạch tổng thế phát triển kinh tế xã hội huyện Cần Đước', '', '', '', 2, 2, '2017-07-21 10:05:29', '2017-07-21 10:05:29'),
(118, 'Thông tin chung về huyện Cần Đước, tỉnh Long An', '', '', '', 2, 2, '2017-07-21 17:42:08', '2017-07-21 17:42:08'),
(119, 'Danh sách xã phường thị trấn tại Cần Đước tỉnh Long An mới nhất', '', '', '', 2, 2, '2017-07-22 10:32:16', '2017-07-22 10:32:16'),
(120, 'Danh sách các phòng ban đơn vị trực thuộc huyện Cần Đước mới nhất', '', '', '', 2, 2, '2017-07-22 12:13:26', '2017-07-22 12:13:26'),
(121, 'Thông tin chung về huyện Cần Giuộc, tỉnh Long An', '', '', '', 2, 2, '2017-07-22 14:05:41', '2017-07-22 14:05:41'),
(122, 'Danh sách xã phường thị trấn tại Cần Giuộc tỉnh Long An', '', '', '', 2, 2, '2017-07-22 14:37:18', '2017-07-22 14:37:18'),
(123, 'Danh sách các phòng ban đơn vị trực thuộc huyện Cần Giuộc', '', '', '', 2, 2, '2017-07-22 16:14:29', '2017-07-22 16:14:29'),
(124, 'Bản đồ xây dựng quy hoạch đô thị huyện Cần Giuộc', '', '', '', 2, 2, '2017-07-22 16:46:36', '2017-07-22 16:46:36'),
(125, 'Thông tin chung về Thành Phố Tân An mới nhất', '', '', '', 2, 2, '2017-07-22 17:10:38', '2017-07-22 17:10:38'),
(126, 'Danh sách xã phường thị trấn tại thành phố Tân An tỉnh Long An', '', '', '', 2, 2, '2017-07-23 15:39:12', '2017-07-23 15:39:12'),
(127, 'Danh sách các phòng ban đơn vị trực thuộc thành phố Tân An', '', '', '', 2, 2, '2017-07-23 16:43:04', '2017-07-23 16:43:04'),
(128, 'Thông tin chung về huyện Bến Lức, tỉnh Long An', '', '', '', 2, 2, '2017-07-24 10:12:03', '2017-07-24 10:12:03'),
(129, 'Danh sách xã phường thị trấn tại huyện Bến Lức tỉnh Long An', '', '', '', 2, 2, '2017-07-24 10:57:37', '2017-07-24 10:57:37'),
(130, 'Danh sách các phòng ban đơn vị trực thuộc huyện Bến Lức, tỉnh Long An', '', '', '', 2, 2, '2017-07-24 14:39:28', '2017-07-24 14:39:28'),
(131, 'Thông tin chung về huyện Thủ Thừa, tỉnh Long An', '', '', '', 2, 2, '2017-07-24 15:08:08', '2017-07-24 15:08:08'),
(132, 'Danh sách các phòng ban đơn vị trực thuộc huyện Thủ Thừa, tỉnh Long An', '', '', '', 2, 2, '2017-07-24 15:45:52', '2017-07-24 15:45:52'),
(133, 'Danh sách xã phường thị trấn tại huyện Thủ Thừa tỉnh Long An', '', '', '', 2, 2, '2017-07-24 16:15:54', '2017-07-24 16:15:54'),
(134, 'Công chứng giấy tờ nhà đất huyện Cần Đước ở đâu', '', '', '', 2, 2, '2017-07-24 17:03:47', '2017-07-26 08:52:15'),
(135, 'Phòng công chứng và Văn phòng công chứng khác nhau như thế nào', '', '', '', 2, 2, '2017-07-24 17:29:06', '2017-07-24 17:29:06'),
(136, 'Công chứng giấy tờ nhà đất tại thành phố Tân An ở đâu', '', '', '', 2, 2, '2017-07-26 10:02:00', '2017-07-26 10:02:00'),
(137, 'Danh sách phòng công chứng nhà nước và tư nhân tại Long An', '', '', '', 2, 2, '2017-07-26 10:22:54', '2017-07-26 10:22:54'),
(138, 'Bán Đất Nền Thành Phố Tân An Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền thành phố Tân An giá rẻ, đất thổ cư 100%, pháp lý sổ hồng chính chủ. Dat nen thanh pho tan an thích hợp cho lướt sóng đầu tư, định cư lâu dài giá rẻ.', 'đất nền thành phố tân an', '', 2, 2, '2017-07-26 11:13:07', '2017-07-26 11:13:07'),
(139, 'Bán Đất Nền Thị Xã Kiến Tường Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền thị xã Kiến Tường giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen thi xa kien tuong rất thích hợp cho đầu tư lướt sóng hoặc định cư lâu dài.', 'đất nền thị xã kiến tường', '', 2, 2, '2017-07-26 11:28:30', '2017-07-26 11:28:30'),
(140, 'Bán Đất Nền Huyện Cần Đước Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Cần Đước giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen can duoc gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện cần đước', '', 2, 2, '2017-07-26 11:31:44', '2017-07-26 11:31:44'),
(141, 'Bán Đất Nền Huyện Cần Giuộc Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Cần Giuộc giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen can giuoc gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện cần giuộc', '', 2, 2, '2017-07-26 11:34:57', '2017-07-26 11:34:57'),
(142, 'Bán Đất Nền Huyện Bến Lức Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Bến Lức giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen ben luc gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện bến lức', '', 2, 2, '2017-07-26 11:35:45', '2017-07-26 14:57:20'),
(143, 'Bán Đất Nền Huyện Thủ Thừa Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Thủ Thừa giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen thu thua gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện thủ thừa', '', 2, 2, '2017-07-26 11:36:25', '2017-07-26 11:36:25'),
(144, 'Bán Đất Nền Huyện Châu Thành Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Châu Thành giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen chau thanh gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện châu thành', '', 2, 2, '2017-07-26 11:37:13', '2017-07-26 11:37:13'),
(145, 'Bán Đất Nền Huyện Đức Hòa Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Đức Hòa giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen duc hoa gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện đức hòa', '', 2, 2, '2017-07-26 11:37:57', '2017-07-26 11:37:57'),
(146, 'Bán Đất Nền Huyện Mộc Hóa Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Mộc Hóa giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen moc hoa gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện mộc hóa', '', 2, 2, '2017-07-26 11:38:35', '2017-07-26 11:38:35'),
(147, 'Bán Đất Nền Huyện Thạnh Hóa Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Thạnh Hóa giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen thanh hoa gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện thạnh hóa', '', 2, 2, '2017-07-26 11:40:14', '2017-07-26 11:40:14'),
(148, 'Bán Đất Nền Huyện Tân Hưng Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Tân Hưng giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen tan hung gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện tân hưng', '', 2, 2, '2017-07-26 11:41:02', '2017-07-26 11:41:02'),
(149, 'Bán Đất Nền Huyện Tân Thạnh Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Tân Thạnh giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen tan thanh gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện tân thanh', '', 2, 2, '2017-07-26 11:41:47', '2017-07-27 14:45:02'),
(150, 'Bán Đất Nền Huyện Tân Trụ Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Tân Trụ giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen tan tru gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện tân trụ', '', 2, 2, '2017-07-26 11:42:37', '2017-07-26 11:42:37'),
(151, 'Bán Đất Nền Huyện Vĩnh Hưng Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Vĩnh Hưng giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen vinh hung gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện vĩnh hưng', '', 2, 2, '2017-07-26 11:43:27', '2017-07-26 11:43:27'),
(152, 'Mua bán nhà đất Long An, đất nền dự án, đất thổ cư 100% giá rẻ', 'Mua bán nhà đất long an giá rẻ, chuyên bán đất nền dự án, đất thổ cư 100%,  giấy tờ chính chủ, pháp lý rõ ràng. Dat Long An gia re đầu tư sinh lời cao.', 'nhà đất long an', 'Mua bán nhà đất long an giá rẻ, chuyên bán đất nền dự án, đất thổ cư 100%,  giấy tờ chính chủ, pháp lý rõ ràng. Dat Long An gia re đầu tư sinh lời cao.', 2, 1, '2017-07-26 11:51:37', '2017-07-26 15:57:46'),
(153, 'Bán đất nền đường Nguyễn Hữu Trí, Xã An Thạnh, Huyện Bến Lức, Tỉnh Long An', '', '', '', 2, 2, '2017-07-26 14:52:45', '2017-07-26 14:52:45'),
(154, 'Bán đất nền đường tỉnh lộ 826, Xã Long Trạch, Huyện Cần Đước', '', 'đất nền đường tỉnh lộ 826', '', 2, 2, '2017-07-26 15:52:29', '2017-07-26 15:52:29'),
(155, 'Bán đất thổ cư gần ngã 3 Tân Kim, Huyện Cần Giuộc', '', '', '', 2, 2, '2017-07-26 16:10:58', '2017-07-26 16:10:58'),
(156, 'Bán đất nền đường tỉnh 827B, Bình Quới, Huyện Châu Thành', '', '', '', 2, 2, '2017-07-26 16:26:06', '2017-07-26 16:26:06'),
(157, 'Bán đất đường tỉnh lộ 10 gần KCN Tân Đức, Huyện Đức Hòa', '', '', '', 2, 2, '2017-07-26 17:09:27', '2017-07-26 17:09:27'),
(158, 'Bán đất thổ cư xã Mỹ Thạnh Tây, Huyện Cần Đước, tỉnh Long An', '', '', '', 2, 2, '2017-07-27 10:43:20', '2017-07-27 10:43:20'),
(159, 'Bán đất nền đường quốc lộ 62, xã Bình Thạnh, Huyện Mộc Hóa', '', '', '', 2, 2, '2017-07-27 11:01:36', '2017-07-27 11:01:36'),
(160, 'Bán đất nền mặt tiền xã Bình Thạnh, Huyện Tân Hưng giá rẻ', '', '', '', 2, 2, '2017-07-27 11:36:04', '2017-07-27 11:36:04'),
(161, 'Chuyện lạ có thật đất Long An đắt hơn đất Sài Gòn', '', '', '', 2, 2, '2017-07-27 11:56:37', '2017-07-27 11:56:37'),
(162, 'Bán đất nền đường tỉnh 819 xã Tân Lập, Huyện Tân Thạnh', '', '', '', 2, 2, '2017-07-27 14:44:25', '2017-07-27 14:44:25'),
(163, 'Công chứng giấy tờ nhà đất tại huyện Cần Giuộc ở đâu', '', '', '', 2, 2, '2017-07-27 15:43:32', '2017-07-27 15:43:32'),
(164, 'Công chứng giấy tờ nhà đất tại huyện Mộc Hóa ở đâu', '', '', '', 2, 2, '2017-07-27 15:55:27', '2017-07-27 15:55:27'),
(165, 'Công chứng giấy tờ nhà đất tại huyện Đức Hòa ở đâu', '', '', '', 2, 2, '2017-07-27 16:30:35', '2017-07-27 16:30:35'),
(166, 'Văn phòng công chứng giấy tờ nhà đất huyện Thủ Thừa ở đâu', '', '', '', 2, 2, '2017-07-27 17:32:09', '2017-07-27 17:32:09'),
(167, 'Văn phòng công chứng giấy tờ nhà đất huyện Bến Lức ở đâu', '', '', '', 2, 2, '2017-07-28 13:54:43', '2017-07-28 13:54:43'),
(168, 'Văn phòng công chứng giấy tờ nhà đất huyện Đức Hòa ở đâu', '', '', '', 2, 2, '2017-07-28 14:09:49', '2017-07-28 14:09:49'),
(169, 'Diện tích tối thiểu để tách thửa đối với đất ở và đất nông nghiệp tại Long An', '', '', '', 2, 2, '2017-07-28 16:21:42', '2017-07-28 16:21:42'),
(170, 'Bán đất nền đường tỉnh 833 xã Mỹ Bình, Huyện Tân Trụ', '', '', '', 2, 2, '2017-07-31 09:23:11', '2017-07-31 09:23:11'),
(171, 'Bán đất mặt tiền quốc lộ 62 tại thị trấn Thạnh Hóa', '', '', '', 2, 2, '2017-08-02 10:42:01', '2017-08-02 10:42:01'),
(172, 'Bán đất xã Tân Thành, Huyện Thủ Thừa giá 380 triệu', '', '', '', 2, 2, '2017-08-03 09:06:57', '2017-08-03 09:06:57'),
(173, 'Bán đất nền tại 12 xã Vĩnh Bình huyện Vĩnh Hưng', '', '', '', 2, 2, '2017-08-04 10:54:24', '2017-08-04 10:54:24'),
(174, 'Bán đất hẻm 386, phường 7 thành phố Tân An, Long An', '', '', '', 2, 2, '2017-08-09 09:37:25', '2017-08-09 09:37:25'),
(175, 'dfsgsdf', 'dfhds', 'fhsdh', 'dfhds', 1, 1, '2017-08-23 21:48:25', '2017-08-23 21:48:25'),
(176, '', '', '', '', 1, 1, '2017-08-23 23:07:19', '2017-08-23 23:07:19'),
(177, 'dsfas', 'dsgasd', 'gsgasd', 'gsdgds', 1, 1, '2017-08-23 23:09:17', '2017-08-23 23:09:29'),
(178, '', '', '', '', 1, 1, '2017-08-28 15:07:03', '2017-08-28 15:07:03'),
(179, '', '', '', '', 1, 1, '2017-08-28 15:10:14', '2017-08-28 15:10:14'),
(180, '', '', '', '', 1, 1, '2017-08-28 15:10:23', '2017-08-28 15:10:23'),
(181, '', '', '', '', 1, 1, '2017-08-28 15:10:51', '2017-08-28 15:10:51'),
(182, '', '', '', '', 1, 1, '2017-08-28 15:12:25', '2017-08-28 15:12:25'),
(183, '', '', '', '', 1, 1, '2017-08-28 15:13:18', '2017-08-28 15:13:18'),
(184, '', '', '', '', 1, 1, '2017-08-28 15:13:27', '2017-08-28 15:13:27'),
(185, '', '', '', '', 1, 1, '2017-08-28 15:13:44', '2017-08-28 15:13:44'),
(186, '', '', '', '', 1, 1, '2017-08-28 15:20:46', '2017-08-28 15:20:46'),
(187, '', '', '', '', 1, 1, '2017-08-28 15:22:19', '2017-08-28 15:22:19'),
(188, '', '', '', '', 1, 1, '2017-08-28 15:22:29', '2017-08-28 15:22:29'),
(189, '', '', '', '', 1, 1, '2017-08-28 15:22:38', '2017-08-28 15:22:38'),
(190, '', '', '', '', 1, 1, '2017-08-28 15:22:47', '2017-08-28 15:22:47'),
(191, '', '', '', '', 1, 1, '2017-08-28 15:22:57', '2017-08-28 15:22:57'),
(192, '', '', '', '', 1, 1, '2017-08-28 15:23:10', '2017-08-28 15:23:10'),
(193, '', '', '', '', 1, 1, '2017-08-28 15:31:39', '2017-08-28 15:31:39'),
(194, '', '', '', '', 1, 1, '2017-08-28 15:31:57', '2017-08-28 15:31:57'),
(195, '', 'Quy trình thiết kế kiến trúc tại houseland gồm các bước sau đây?', 'Quy trình thiết kế kiến trúc', '', 1, 1, '2017-08-29 09:47:17', '2017-10-01 20:29:56'),
(196, 'Đơn giá thiết kế kiến trúc', 'Tư vấn báo giá thiết kế kiến trúc. Nếu quý khách hàng có nhu cầu, hoặc những vấn đề gì cần giải đáp hãy gửi thông tin về cho chúng tôi, chúng tôi sẽ giúp quý khách hàng giải đáp, tư vấn báo giá cho quý khách hàng chính xác nhất.', 'Đơn giá thiết kế kiến trúc', '', 1, 1, '2017-08-29 09:48:03', '2017-10-01 20:28:35'),
(197, '', 'Mẫu hợp đồng thiết kế kiến trúc, thiết kế nhà, thiết kế biệt thự...cho quý khách hàng tham khảo. Đây là mẫu thiết kế công ty chúng tôi sẽ thực hiện ký hợp đồng trực tiếp với khách hàng, nếu như khách hàng có  nhu cầu thiết kế kiến trúc tại công ty chúng t', 'Hợp đồng thiết kế kiến trúc mẫu', '', 1, 1, '2017-08-29 09:48:17', '2017-10-01 20:17:39'),
(198, 'Quy trình thi công xây dựng', 'Quy trình Thi công xây dựng tại houseland gồm các bước sau đây?', 'Quy trình thi công xây dựng', '', 1, 1, '2017-08-29 09:48:29', '2017-10-01 20:32:09'),
(199, 'Đơn giá thi công xây dựng', 'Tư vấn báo giá thi công xây dựng. Nếu quý khách hàng có nhu cầu, hoặc những vấn đề gì cần giải đáp hãy gửi thông tin về cho chúng tôi, chúng tôi sẽ giúp quý khách hàng giải đáp, tư vấn báo giá cho quý khách hàng chính xác nhất.', 'Đơn giá thi công xây dựng', '', 1, 1, '2017-08-29 09:48:42', '2017-10-01 20:27:51'),
(200, 'Hợp đồng thi công mẫu', '', 'Mẫu hợp đồng thi công kiến trúc,thi công nhà, thi công biệt thự...cho quý khách hàng tham khảo. Đây là mẫu hợp đồng thi công công ty chúng tôi sẽ thực hiện ký hợp đồng trực tiếp với khách hàng, nếu như khách hàng có  nhu cầu thi công xây dựng tại công ty ', 'Hợp đồng thi công mẫu', 1, 1, '2017-08-29 09:48:56', '2017-10-01 20:18:59'),
(201, 'Tại sao chọn Houseland', 'Tại sao chúng ta chọn houseland thiết kế kế kiến trúc, thi công xây dựng nhà, thi công xây dựng biệt thự.... bới vì houseland là một công ty rất uy tín hoạt động trong lĩnh vực thiết kế - thi công xây dựng nhà đã hơn 10 năm kinh nghiệm và có thương hiệu v', 'thi công xây dựng biệt thự,thiết kế kế kiến trúc, thi công xây dựng nhà', '', 1, 1, '2017-08-29 09:49:06', '2017-10-01 20:14:15'),
(202, 'Nội thất Houseland', 'Chuyên thiết kế nội thất, thi công nội thất, bán hàng nội thất thanh lý giá rẻ, đẹp uy tín chất lượng với những mẫu thiết kế nội thất đẹp nhất hiện nay, gia thành phải chăng.', 'thiết kế nội thất, thi công nội thất, bán hàng nội thất thanh lý giá rẻ', '', 1, 1, '2017-08-29 09:49:19', '2017-10-01 20:11:51'),
(203, 'Phân phối sơn SPEC', 'Phân phối tất cả các loại sơn, thi công, phối màu tất cả các công trình, nhà phố, biệt thự, chung cư... với giá rẻ nhất hiện nay uy tín chất lượng đảm bảo quý khách hài lòng', 'Phân phối sơn SPEC', '', 1, 1, '2017-08-29 09:49:32', '2017-10-01 20:09:24'),
(204, '', '', '', '', 1, 1, '2017-09-07 08:50:58', '2017-09-07 08:50:58'),
(205, '', '', '', '', 1, 1, '2017-09-07 08:51:46', '2017-09-07 08:51:46'),
(206, '', '', '', '', 1, 1, '2017-09-07 08:52:49', '2017-09-07 08:52:49'),
(207, 'Thiết kế kiến trúc', 'Chuyên thiết kế biệt thự cổ điển, thiết kế biệt thự hiện đại, thiết kế biệt thự phố, thiết kế nhà phố, thiết kế biệt thự vườn, thiết kế resort, thiết kế chung cư mini, thiết kế nhà hàng...uy tín chất lượng nhất hiện nay trên thị trường.', 'thiết kế biệt thự cổ điển, thiết kế biệt thự hiện đại, thiết kế biệt thự phố, thiết kế nhà phố, thiết kế biệt thự vườn, thiết kế resort, thiết kế chung cư mini, thiết kế nhà hàng', '', 1, 1, '2017-09-09 12:18:08', '2017-10-01 19:04:05'),
(208, 'Thi công xây dựng', 'Chuyên thi công xây dựng biệt thự, thi công xây dựng nhà phố, thi công xây dựng resort, chung cư uy tín nhất hiện nay với hơn 10 năm kinh nghiệm houseland cam kết sẽ đến đến chất lượng tốt nhất cho khách hàng', 'thi công xây dựng biệt thự, thi công xây dựng nhà phố, thi công xây dựng resort', '', 1, 1, '2017-09-09 12:18:55', '2017-10-01 19:05:53'),
(209, 'Thiết kế nội thất', 'Thiết kế nội nhất nhà phố, thiết kế nội thất biệt thự, nội thất chung cư rẻ, chất lượng uy tín nhất hiện nay ', 'Thiết kế nội nhất nhà phố, thiết kế nội thất biệt thự, nội thất chung cư', '', 1, 1, '2017-09-09 12:19:03', '2017-10-01 19:07:06'),
(210, 'Kho nhà mẫu', 'Tập hợp tất cả các mẫu thiết kế biệt thự cổ điển, thiết kế biệt thự vườn, hiện đại phố, mẫu thiết kế nhà phố, mẫu thiết kế chung cư, resort....đẹp nhất hiện nay cho quý khách hàng tham khảo.', 'mẫu thiết kế biệt thự cổ điển, thiết kế biệt thự vườn, hiện đại phố, mẫu thiết kế nhà phố, mẫu thiết kế chung cư', '', 1, 1, '2017-09-09 12:19:14', '2017-10-01 19:08:55'),
(211, 'Thiết kế biệt thự cổ điển', 'Houseland chuyên thiết kế biệt thự cổ điển, thiết kế biệt thự tân cổ điển, thiết kế biệt thự bán cổ điển đẹp, uy tín chất lượng nhất hiện nay với kiến trúc độc đáo mang đậm phong cách kiến trúc phương tây', 'thiết kế biệt thự cổ điển, thiết kế biệt thự tân cổ điển, thiết kế biệt thự bán cổ điển đẹp', '', 1, 1, '2017-09-09 12:21:00', '2017-10-01 19:10:36'),
(212, 'Thiết kế biệt thự hiện đại', 'Thiết kế biệt thự hiện đại đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', 'Thiết kế biệt thự hiện đại đẹp', '', 1, 1, '2017-09-09 12:22:22', '2017-10-01 19:17:29'),
(213, 'Thiết kế biệt thự phố', 'Thiết kế biệt thự phố đẹp, thiết kế biệt thự phố 1 mặt tiền, thiết kế biệt thự phố 2 mặt tiền sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', 'Thiết kế biệt thự phố đẹp, thiết kế biệt thự phố 1 mặt tiền, thiết kế biệt thự phố 2 mặt tiền', '', 1, 1, '2017-09-09 12:22:30', '2017-10-01 19:20:46'),
(214, 'Thiết kế biệt thự vườn', 'Thiết kế biệt thự vườn đẹp, Thiết kế biệt thự nhà vườn đẹp sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', 'Thiết kế biệt thự vườn đẹp, Thiết kế biệt thự nhà vườn đẹp', '', 1, 1, '2017-09-09 12:22:38', '2017-10-01 19:21:46'),
(215, 'Thiết kế nhà phố', 'Thiết kế nhà phố đẹp, Thiết kế nhà phố hiện đại, thiết kế nhà phố cổ điển sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', 'iết kế nhà phố đẹp, Thiết kế nhà phố hiện đại, thiết kế nhà phố cổ điển', '', 1, 1, '2017-09-09 12:22:46', '2017-10-01 19:22:52'),
(216, 'Thiết kế nhà hàng - Khách sạn', 'Thiết kế nhà hàng - Khách sạn đẹp, Thiết kế nhà hàng - Khách sạn hiện đại, Thiết kế nhà hàng - Khách sạn cổ điển sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', 'Thiết kế nhà hàng - Khách sạn đẹp, Thiết kế nhà hàng - Khách sạn hiện đại, Thiết kế nhà hàng - Khách sạn cổ điển', '', 1, 1, '2017-09-09 12:23:59', '2017-10-01 19:48:15'),
(217, 'Thiết kế resort - Khu nghĩ dưỡng', 'Thiết kế resort - Khu nghĩ dưỡng đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', 'Thiết kế resort - Khu nghĩ dưỡng đẹp', '', 1, 1, '2017-09-09 12:24:13', '2017-10-01 19:49:16'),
(218, 'Thiết kế chung cư mini', 'Thiết kế chung cư mini đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', 'Thiết kế chung cư mini', '', 1, 1, '2017-09-09 12:24:20', '2017-10-01 19:49:50'),
(219, 'Thiết kế cao ốc - Văn Phòng', 'Thiết kế cao ốc - Văn Phòng đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', 'Thiết kế cao ốc - Văn Phòng', '', 1, 1, '2017-09-09 12:24:28', '2017-10-01 19:50:16'),
(220, 'Thiết kế showroom', 'Thiết kế showroom đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', 'Thiết kế showroom', '', 1, 1, '2017-09-09 12:24:36', '2017-10-01 19:50:46'),
(221, 'Thiết kế Cafe - Khu du lịch - Homestay', 'Thiết kế Cafe - Khu du lịch - Homestay đẹp, sang trọng với kiến trúc đẹp độc lạ phù hợp với yêu cầu, sở thích của từng khách hàng với chi phí thiết kế rẻ nhất hiện nay trên thị trường.', 'Thiết kế Cafe - Khu du lịch - Homestay', '', 1, 1, '2017-09-09 12:24:44', '2017-10-01 19:51:21'),
(222, 'Thi Công Biệt thự', 'Houseland chuyên thi công các dòng biệt thự như: thi công biệt thự cổ điển, thi công biệt thự phố, thi công biệt thự vườn, thi công biệt thự nhà vườn với giá rẻ nhất hiện nay trên thị trường.', 'thi công biệt thự cổ điển, thi công biệt thự phố, thi công biệt thự vườn, thi công biệt thự nhà vườn', '', 1, 1, '2017-09-09 12:24:54', '2017-10-01 19:12:20'),
(223, 'Nhà phố', 'Chuyên thi công nhà phố, thi công nhà phố hiện đại, thi công nhà phố cổ điển đẹp, sang trọng giá rẻ, uy tín nhất hiện nay.', 'thi công nhà phố hiện đại, thi công nhà phố cổ điển đẹp', '', 1, 1, '2017-09-09 12:25:01', '2017-10-01 19:19:03'),
(224, 'Thi Công Resort', 'Chuyên thi công Resort, thi công Resort hiện đại, thi công Resort cổ điển đẹp, sang trọng giá rẻ, uy tín nhất hiện nay.', 'thi công Resort, thi công Resort hiện đại, thi công Resort cổ điển đẹp', '', 1, 1, '2017-09-09 12:25:07', '2017-10-01 20:03:52'),
(225, 'Thi Công Văn phòng', 'Chuyên thi công Văn phòng, thi công Văn phòng hiện đại, thi công Văn phòng cổ điển đẹp, sang trọng giá rẻ, uy tín nhất hiện nay.', 'thi công Văn phòng, thi công Văn phòng hiện đại, thi công Văn phòng cổ điển đẹp', '', 1, 1, '2017-09-09 12:25:14', '2017-10-01 20:05:03'),
(226, 'Thi Công Chung cư', 'Chuyên thi công Chung cư đẹp, sang trọng giá rẻ, uy tín nhất hiện nay', 'thi công Chung cư đẹp', '', 1, 1, '2017-09-09 12:25:21', '2017-10-01 20:05:38'),
(227, 'Thi Công Nhà hàng - khách sạn', 'Chuyên thi công Nhà hàng - khách sạn, thi công Nhà hàng - khách sạn hiện đại, thi công Nhà hàng - khách sạn cổ điển đẹp, sang trọng giá rẻ, uy tín nhất hiện nay.', 'thi công Nhà hàng - khách sạn, thi công Nhà hàng - khách sạn hiện đại, thi công Nhà hàng - khách sạn cổ điển đẹp', '', 1, 1, '2017-09-09 12:25:32', '2017-10-01 20:06:38'),
(228, 'Nội thất biệt thự', 'Thiết kế nội thất biệt thự cổ điển, nội thất biệt thự hiện đại, đẹp, sang trọng nhất hiện nay trên thị trường.', 'Thiết kế nội thất biệt thự ', '', 1, 1, '2017-09-09 12:25:45', '2017-10-01 19:13:34'),
(229, 'Nội thất nhà phố', 'Thiết kế Nội thất nhà phố, Nội thất nhà phố hiện đại, đẹp, sang trọng nhất hiện nay trên thị trường.', 'Thiết kế Nội thất nhà phố, Nội thất nhà phố hiện đại', '', 1, 1, '2017-09-09 12:25:53', '2017-10-01 19:55:40'),
(230, 'Nội thất văn phòng', 'Thiết kế Nội thất văn phòng, Nội thất văn phòng hiện đại, đẹp, sang trọng nhất hiện nay trên thị trường.', 'Thiết kế Nội thất văn phòng, Nội thất văn phòng hiện đại', '', 1, 1, '2017-09-09 12:26:00', '2017-10-01 19:56:35'),
(231, 'Biệt thự cổ điển', 'Tổng hợp các mẫu biệt thự cổ điển, biệt thự tân cổ điển, biệt thự bán cổ điển, biệt thự cổ điển pháp do các KTS houseland thiết kế cho quý khách hàng tham khảo.', 'mẫu biệt thự cổ điển, biệt thự tân cổ điển, biệt thự bán cổ điển, biệt thự cổ điển pháp ', '', 1, 1, '2017-09-09 12:26:10', '2017-10-01 19:15:55'),
(232, 'Biệt thự hiện đại', 'Tổng hợp các mẫu thự hiện đại, biệt thự hiện đại đẹp với kiến trúc đẹp, độc lạ mang đậm Phong cách kiến trúc Phương Tây cho quý khách hàng tham khảo.', 'mẫu thự hiện đại, biệt thự hiện đại đẹp', '', 1, 1, '2017-09-09 12:26:23', '2017-10-01 19:58:22'),
(233, 'Biệt thự phố', 'Tổng hợp các mẫu biệt thự phố, biệt thự phố hiện đại, biệt thự phố cổ điển, biệt thự phố 1 mặt tiền, biệt thự phố 2 mặt tiền đẹp với kiến trúc đẹp, độc lạ mang đậm Phong cách kiến trúc Phương Tây cho quý khách hàng tham khảo.', 'mẫu biệt thự phố, biệt thự phố hiện đại, biệt thự phố cổ điển, biệt thự phố 1 mặt tiền, biệt thự phố 2 mặt tiền đẹp', '', 1, 1, '2017-09-09 12:26:29', '2017-10-01 20:00:01'),
(234, 'Biệt thự vườn', 'Tổng hợp các mẫu biệt thự vườn đẹp với kiến trúc đẹp, độc lạ mang đậm Phong cách kiến trúc Phương Tây cho quý khách hàng tham khảo.', ' mẫu biệt thự vườn đẹp', '', 1, 1, '2017-09-09 12:26:37', '2017-10-01 20:00:41'),
(235, 'Mẫu showroom', 'Tổng hợp các mẫu showroom đẹp với kiến trúc đẹp, độc lạ mang đậm Phong cách kiến trúc Phương Tây cho quý khách hàng tham khảo.', 'mẫu showroom đẹp', '', 1, 1, '2017-09-09 12:26:44', '2017-10-01 20:01:43'),
(236, 'Mẫu resort đẹp', '', '', '', 1, 1, '2017-09-09 12:26:53', '2017-09-09 12:26:53'),
(237, '', '', '', '', 1, 1, '2017-09-09 13:10:29', '2017-09-09 13:10:29'),
(238, '', '', '', '', 1, 1, '2017-09-09 14:04:15', '2017-09-09 14:04:15'),
(239, '', '', '', '', 1, 1, '2017-09-09 14:04:36', '2017-09-09 14:04:36'),
(240, '', '', '', '', 1, 1, '2017-09-09 14:04:56', '2017-09-09 14:04:56'),
(241, '', '', '', '', 1, 1, '2017-09-09 14:05:13', '2017-09-09 14:05:13'),
(242, '', '', '', '', 1, 1, '2017-09-09 14:05:34', '2017-09-09 14:05:34'),
(243, '', '', '', '', 1, 1, '2017-09-09 14:16:14', '2017-09-09 14:16:14'),
(244, '', '', '', '', 1, 1, '2017-09-09 14:24:29', '2017-09-09 14:24:29'),
(245, '', '', '', '', 1, 1, '2017-09-09 14:24:57', '2017-09-09 14:24:57'),
(246, '', '', '', '', 1, 1, '2017-09-09 14:25:16', '2017-09-09 14:25:16'),
(247, '', '', '', '', 1, 1, '2017-09-12 21:07:12', '2017-09-12 21:07:12'),
(248, '', '', '', '', 1, 1, '2017-09-12 21:07:58', '2017-09-12 21:07:58'),
(249, '', '', '', '', 1, 1, '2017-09-12 21:26:31', '2017-09-12 21:26:31'),
(250, '', '', '', '', 1, 1, '2017-09-12 22:14:23', '2017-09-12 22:14:23'),
(251, '', '', '', '', 1, 1, '2017-09-12 22:14:33', '2017-09-12 22:14:33'),
(252, '', '', '', '', 1, 1, '2017-09-12 22:14:41', '2017-09-12 22:14:41'),
(253, '', '', '', '', 1, 1, '2017-09-12 22:34:44', '2017-09-12 22:34:44'),
(254, '', '', '', '', 1, 1, '2017-09-13 07:12:03', '2017-09-13 07:12:03'),
(255, '', '', '', '', 1, 1, '2017-09-13 07:12:49', '2017-09-13 07:12:49'),
(256, '', '', '', '', 1, 1, '2017-09-15 09:18:46', '2017-09-15 09:18:46'),
(257, '', '', '', '', 1, 1, '2017-09-15 10:09:45', '2017-09-15 10:09:45'),
(258, '', '', '', '', 1, 1, '2017-09-15 11:58:30', '2017-09-15 11:58:30'),
(259, '', '', '', '', 1, 1, '2017-09-15 13:50:23', '2017-09-15 13:50:23'),
(260, '', '', '', '', 1, 1, '2017-09-15 16:46:49', '2017-09-15 16:46:49'),
(261, '', '', '', '', 1, 1, '2017-09-15 17:10:01', '2017-09-15 17:10:01'),
(262, '', '', '', '', 1, 1, '2017-09-15 19:06:30', '2017-09-15 19:06:30'),
(263, '', '', '', '', 1, 1, '2017-09-15 19:18:20', '2017-09-15 19:18:20'),
(264, '', '', '', '', 1, 1, '2017-09-15 19:38:11', '2017-09-15 19:38:11'),
(265, '', '', '', '', 1, 1, '2017-09-15 19:41:16', '2017-09-15 19:41:16'),
(266, '', '', '', '', 1, 1, '2017-09-16 09:22:58', '2017-09-16 09:22:58'),
(267, '', '', '', '', 1, 1, '2017-09-16 09:46:50', '2017-09-16 09:46:50'),
(268, '', '', '', '', 1, 1, '2017-09-16 09:53:55', '2017-09-16 09:53:55'),
(269, '', '', '', '', 1, 1, '2017-09-16 13:48:24', '2017-09-16 13:48:24'),
(270, '', '', '', '', 1, 1, '2017-09-18 09:08:50', '2017-09-18 09:08:50'),
(271, '', '', '', '', 1, 1, '2017-09-18 09:13:01', '2017-09-18 09:13:01'),
(272, '', '', '', '', 1, 1, '2017-09-18 11:05:40', '2017-09-18 11:05:40'),
(273, '', '', '', '', 1, 1, '2017-09-22 10:34:47', '2017-09-22 10:34:47'),
(274, 'Xu hướng thiết kế biệt thự phố độc đáo', 'Xu hướng thiết kế biệt thự phố mới nhất đang được nhiều người tìm kiếm với mong muốn có được những căn nhà độc đáo, mới nhất, thu người và đặc biệt, tạo được ấn tượng và đảm bảo tính thẩm mỹ, công năng cho ngôi nhà', 'Xu hướng thiết kế biệt thự phố', '', 1, 1, '2017-09-22 11:52:18', '2017-09-27 13:26:15'),
(275, '', '', '', '', 1, 1, '2017-09-22 14:43:24', '2017-09-22 14:43:24'),
(276, '', '', '', '', 1, 1, '2017-09-22 16:32:25', '2017-09-22 16:32:25'),
(277, '', '', '', '', 1, 1, '2017-09-23 07:36:56', '2017-09-23 07:36:56'),
(278, 'test 1', 'test 2', 'test 3', 'test 4', 1, 1, '2017-09-23 07:37:51', '2017-09-23 07:38:20'),
(279, '', '', '', '', 1, 1, '2017-09-23 11:12:59', '2017-09-23 11:12:59'),
(280, '', '', '', '', 1, 1, '2017-09-23 11:13:33', '2017-09-23 11:13:33'),
(281, '', '', '', '', 1, 1, '2017-09-23 11:14:22', '2017-09-23 11:14:22'),
(282, '', '', '', '', 1, 1, '2017-09-23 11:14:53', '2017-09-23 11:14:53'),
(283, 'Biệt thự hiện đại 3 tầng đẹp sang trọng 110m2 nhà anh Nguyên ở Phú Quốc ', 'Biệt thự hiện đại 3 tầng đẹp sang trọng 110m2 nhà anh Nguyên ở Phú Quốc. Tại Việt Nam, những ngày vừa qua Chuck II đã tạo nên một cơn sốt sục sôi trong cộng đồng các bạn trẻ. Dạo một vòng quanh Instagram và Facebook, không khó để bắt gặp những bức ảnh kho', 'Biệt thự hiện đại 3 tầng đẹp sang trọng 110m2 nhà anh Nguyên ở Phú Quốc ', '', 1, 1, '2017-09-24 21:33:11', '2017-09-27 10:30:47'),
(284, '', '', '', '', 1, 1, '2017-09-25 13:35:29', '2017-09-25 13:35:29'),
(285, '', '', '', '', 1, 1, '2017-09-25 21:28:24', '2017-09-27 14:22:41'),
(286, '', '', '', '', 1, 1, '2017-09-26 07:11:59', '2017-09-26 07:11:59'),
(287, '', '', '', '', 3, 1, '2017-09-26 09:11:07', '2017-09-27 07:19:54'),
(288, '', '', '', '', 1, 1, '2017-09-26 16:42:10', '2017-09-26 16:42:10'),
(289, '', '', '', '', 1, 1, '2017-09-26 16:43:28', '2017-09-26 16:43:28'),
(290, '', '', '', '', 1, 1, '2017-09-26 16:47:17', '2017-09-26 16:47:17'),
(291, '', '', '', '', 1, 1, '2017-09-26 16:58:37', '2017-09-26 16:58:37'),
(292, '', '', '', '', 1, 1, '2017-09-27 06:05:01', '2017-09-27 06:05:01'),
(293, 'dfsa', 'fdasfas', 'fsadf', 'dsfa', 1, 1, '2017-09-27 07:07:02', '2017-09-27 07:07:02'),
(294, '', '', '', '', 1, 1, '2017-09-27 07:08:00', '2017-09-27 07:08:00'),
(295, '', '', '', '', 1, 1, '2017-09-27 07:09:04', '2017-09-27 07:09:04'),
(296, '', '', '', '', 1, 1, '2017-09-27 07:31:43', '2017-09-27 07:31:43'),
(297, '', '', '', '', 1, 1, '2017-09-27 07:31:57', '2017-09-27 07:31:57'),
(298, '', '', '', '', 5, 5, '2017-09-27 09:40:24', '2017-09-27 09:40:24'),
(299, '', '', '', '', 6, 6, '2017-09-27 09:44:29', '2017-09-27 09:44:29'),
(300, 'Thiết kế biệt thự cổ điển pháp 3 tầng đẹp sang trọng 110m2 nhà anh Nguyên ở Phú Quốc ', 'Dự án thiết kế biệt thự cổ điển pháp 3 tầng nhà anh Nguyễn Hoàng Gia ở Quận 7, Tp. Hồ Chí Minh với diện tích 13x22m (diện tích 286m2) với 3 tầng do công ty Houseland thiết kế và xây dựng. Căn biệt thự với thiết kế sang trọng, đẳng cấp, thể hiện được bề th', 'thiết kế biệt thự cổ điển pháp 3 tầng', '', 1, 1, '2017-09-27 10:44:06', '2017-09-27 10:44:06'),
(301, '', '', '', '', 1, 1, '2017-09-27 12:15:30', '2017-09-27 12:15:30'),
(302, '', '', '', '', 1, 1, '2017-09-27 12:15:56', '2017-09-27 12:15:56'),
(303, '', '', '', '', 1, 1, '2017-09-27 12:16:40', '2017-09-27 12:16:40'),
(304, '', '', '', '', 1, 1, '2017-09-27 12:21:13', '2017-09-27 12:21:13'),
(305, '', '', '', '', 1, 1, '2017-09-28 09:32:36', '2017-09-28 09:32:36'),
(306, '', '', '', '', 1, 1, '2017-09-28 09:33:37', '2017-09-28 09:33:37'),
(307, '', '', '', '', 1, 1, '2017-09-28 09:34:12', '2017-09-28 09:34:12'),
(308, '', '', '', '', 1, 1, '2017-09-28 09:36:27', '2017-09-28 09:36:27'),
(309, '', '', '', '', 1, 1, '2017-09-28 09:41:52', '2017-09-28 09:41:52'),
(310, '', '', '', '', 1, 1, '2017-09-28 09:45:22', '2017-09-28 09:45:22'),
(311, '', '', '', '', 1, 1, '2017-09-28 09:47:28', '2017-09-28 09:47:28'),
(312, '', '', '', '', 1, 1, '2017-09-28 09:50:50', '2017-09-28 09:50:50'),
(313, '', '', '', '', 1, 1, '2017-09-28 09:54:58', '2017-09-28 09:54:58');
INSERT INTO `meta_data` (`id`, `title`, `description`, `keywords`, `custom_text`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(314, 'Thiết kế biệt thự cổ điển quận 1', 'Chuyên thiết kế biệt thự cổ điển, bán cổ điển, tân cổ điển, biệt thự cổ điển pháp giá rẻ nhất hiện  nay trên thị trường cùng với đội ngũ KTS giàu kinh ngiệm sẽ làm cho quý khách hàng hài lòng.', 'Thiết kế biệt thự cổ điển quận 1, Thiết kế biệt thự cổ điển tại quận 1, Thiết kế biệt thự cổ điển ở quận 1, Thiết kế biệt thự cổ điển', '', 1, 1, '2017-09-28 10:59:10', '2017-09-28 10:59:10'),
(315, '', '', '', '', 1, 1, '2017-09-28 11:27:01', '2017-09-28 11:27:01'),
(316, '', '', '', '', 1, 1, '2017-09-28 11:28:02', '2017-09-28 11:28:02'),
(317, '', '', '', '', 1, 1, '2017-09-28 11:29:11', '2017-09-28 11:29:11'),
(318, '', '', '', '', 1, 1, '2017-09-28 11:30:20', '2017-09-28 11:30:20'),
(319, '', '', '', '', 1, 1, '2017-09-28 11:30:54', '2017-09-28 11:30:54'),
(320, '', '', '', '', 1, 1, '2017-09-28 11:31:19', '2017-09-28 11:31:19'),
(321, '', '', '', '', 1, 1, '2017-09-28 11:31:45', '2017-09-28 11:31:45'),
(322, '', '', '', '', 1, 1, '2017-09-28 11:32:30', '2017-09-28 11:32:30'),
(323, '', '', '', '', 1, 1, '2017-09-28 11:33:03', '2017-09-28 11:33:03'),
(324, '', '', '', '', 1, 1, '2017-09-28 11:33:42', '2017-09-28 11:33:42'),
(325, '', '', '', '', 1, 1, '2017-09-28 11:34:27', '2017-09-28 11:34:27'),
(326, '', '', '', '', 1, 1, '2017-09-28 11:35:24', '2017-09-28 11:35:24'),
(327, '', '', '', '', 1, 1, '2017-09-28 11:35:55', '2017-09-28 11:35:55'),
(328, '', '', '', '', 1, 1, '2017-09-28 11:45:18', '2017-09-28 11:45:18'),
(329, '', '', '', '', 1, 1, '2017-09-28 11:59:18', '2017-09-28 11:59:18'),
(330, '', '', '', '', 1, 1, '2017-09-28 12:00:13', '2017-09-28 12:00:13'),
(331, '', '', '', '', 1, 1, '2017-09-28 12:01:02', '2017-09-28 12:01:02'),
(332, '', '', '', '', 1, 1, '2017-09-28 13:58:49', '2017-09-28 13:58:49'),
(333, 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Chia sẻ một số kinh nghiệm, Những Điều Bạn Cần biết Khi Xây dựng Nhà giúp gia chủ làm ăn tiền vô như nước, phát tài phát lộc.', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', '', 1, 1, '2017-09-28 16:04:21', '2017-09-28 16:04:21'),
(334, 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Chia sẻ một số kiến thức Phong Thủy Trong thiết kế thi công xây dựng nhà được các KTS và Kỹ Sư houseland đúc kết lại hôm nay chia sẻ cho quý khách hàng.', 'Phong Thủy Trong thiết kế thi công xây dựng nhà', '', 1, 1, '2017-09-28 16:22:05', '2017-09-28 16:22:05'),
(335, 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', '', 1, 1, '2017-09-28 16:25:26', '2017-09-28 16:25:26'),
(336, 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', '', 1, 1, '2017-09-28 16:26:21', '2017-09-28 16:26:21'),
(337, 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', '', 1, 1, '2017-09-28 16:27:19', '2017-09-28 16:27:19'),
(338, 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', '', 1, 1, '2017-09-28 16:31:56', '2017-09-28 16:31:56'),
(339, 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', '', 1, 1, '2017-09-28 16:33:51', '2017-09-28 16:33:51'),
(340, 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', '', 1, 1, '2017-09-28 16:36:04', '2017-09-28 16:36:04'),
(341, '', '', '', '', 1, 1, '2017-10-01 22:57:56', '2017-10-01 22:57:56'),
(342, '', '', '', '', 1, 1, '2017-10-02 06:12:06', '2017-10-02 06:12:06'),
(343, '', '', '', '', 1, 1, '2017-10-02 08:28:33', '2017-10-02 08:28:33'),
(344, '', '', '', '', 1, 1, '2017-10-02 08:28:56', '2017-10-02 08:28:56'),
(345, '', '', '', '', 1, 1, '2017-10-02 08:30:33', '2017-10-02 08:30:33'),
(346, '', '', '', '', 1, 1, '2017-10-02 09:17:26', '2017-10-02 09:17:26'),
(347, '', '', '', '', 1, 1, '2017-10-02 09:22:31', '2017-10-02 09:22:31'),
(348, '', '', '', '', 1, 1, '2017-10-02 09:23:06', '2017-10-02 09:23:06'),
(349, '', '', '', '', 1, 1, '2017-10-02 09:31:35', '2017-10-02 09:31:35'),
(350, '', '', '', '', 1, 1, '2017-10-02 09:32:17', '2017-10-02 09:32:17'),
(351, '', '', '', '', 1, 1, '2017-10-02 09:41:11', '2017-10-02 09:41:11'),
(352, '', '', '', '', 1, 1, '2017-10-02 09:53:44', '2017-10-02 09:53:44'),
(353, '', '', '', '', 1, 1, '2017-10-02 09:55:58', '2017-10-02 09:55:58'),
(354, '', '', '', '', 1, 1, '2017-10-02 09:57:10', '2017-10-02 09:57:10'),
(355, '', '', '', '', 1, 1, '2017-10-02 09:58:40', '2017-10-02 09:58:40'),
(356, '', '', '', '', 1, 1, '2017-10-02 10:00:00', '2017-10-02 10:00:00'),
(357, '', '', '', '', 1, 1, '2017-10-02 10:03:03', '2017-10-02 10:03:03'),
(358, '', '', '', '', 1, 1, '2017-10-02 10:16:19', '2017-10-02 10:16:19'),
(359, '', '', '', '', 1, 1, '2017-10-02 10:17:00', '2017-10-02 10:17:00'),
(360, '', '', '', '', 1, 1, '2017-10-02 10:17:57', '2017-10-02 10:17:57'),
(361, '', '', '', '', 1, 1, '2017-10-02 10:18:28', '2017-10-02 10:18:28'),
(362, '', '', '', '', 1, 1, '2017-10-02 10:19:00', '2017-10-02 10:19:00'),
(363, '', '', '', '', 1, 1, '2017-10-02 10:19:57', '2017-10-02 10:19:57'),
(364, '', '', '', '', 1, 1, '2017-10-02 10:20:53', '2017-10-02 10:20:53'),
(365, '', '', '', '', 1, 1, '2017-10-02 10:21:41', '2017-10-02 10:21:41'),
(366, '', '', '', '', 1, 1, '2017-10-02 10:22:21', '2017-10-02 10:22:21'),
(367, '', '', '', '', 1, 1, '2017-10-02 10:23:28', '2017-10-02 10:23:28'),
(368, '', '', '', '', 1, 1, '2017-10-02 10:23:51', '2017-10-02 10:23:51'),
(369, '', '', '', '', 1, 1, '2017-10-02 10:25:50', '2017-10-02 10:25:50'),
(370, '', '', '', '', 1, 1, '2017-10-02 10:26:25', '2017-10-02 10:26:25'),
(371, '', '', '', '', 1, 1, '2017-10-02 10:26:58', '2017-10-02 10:26:58'),
(372, '', '', '', '', 1, 1, '2017-10-02 10:27:27', '2017-10-02 10:27:27'),
(373, '', '', '', '', 1, 1, '2017-10-02 10:29:48', '2017-10-02 10:29:48'),
(374, '', '', '', '', 1, 1, '2017-10-02 10:30:22', '2017-10-02 10:30:22'),
(375, '', '', '', '', 1, 1, '2017-10-02 10:30:57', '2017-10-02 10:30:57'),
(376, '', '', '', '', 1, 1, '2017-10-02 10:31:29', '2017-10-02 10:31:29'),
(377, '', '', '', '', 1, 1, '2017-10-02 11:29:59', '2017-10-02 11:29:59'),
(378, '', '', '', '', 1, 1, '2017-10-02 11:30:37', '2017-10-02 11:30:37'),
(379, '', '', '', '', 1, 1, '2017-10-02 11:31:07', '2017-10-02 11:31:07'),
(380, '', '', '', '', 1, 1, '2017-10-02 11:31:37', '2017-10-02 11:31:37'),
(381, '', '', '', '', 1, 1, '2017-10-02 11:32:20', '2017-10-02 11:32:20'),
(382, '', '', '', '', 1, 1, '2017-10-02 11:32:46', '2017-10-02 11:32:46'),
(383, '', '', '', '', 1, 1, '2017-10-02 11:33:37', '2017-10-02 11:33:37'),
(384, '', '', '', '', 1, 1, '2017-10-02 11:33:59', '2017-10-02 11:33:59'),
(385, '', '', '', '', 1, 1, '2017-10-02 11:34:38', '2017-10-02 11:34:38'),
(386, '', '', '', '', 1, 1, '2017-10-02 11:35:15', '2017-10-02 11:35:15'),
(387, '', '', '', '', 1, 1, '2017-10-02 11:35:44', '2017-10-02 11:35:44'),
(388, '', '', '', '', 1, 1, '2017-10-02 11:36:31', '2017-10-02 11:36:31'),
(389, '', '', '', '', 1, 1, '2017-10-02 11:37:02', '2017-10-02 11:37:02'),
(390, '', '', '', '', 1, 1, '2017-10-02 11:37:28', '2017-10-02 11:37:28'),
(391, '', '', '', '', 1, 1, '2017-10-02 11:38:17', '2017-10-02 11:38:17'),
(392, '', '', '', '', 1, 1, '2017-10-02 11:38:42', '2017-10-02 11:38:42'),
(393, '', '', '', '', 1, 1, '2017-10-02 11:39:22', '2017-10-02 11:39:22'),
(394, '', '', '', '', 1, 1, '2017-10-02 11:39:46', '2017-10-02 11:39:46'),
(395, '', '', '', '', 1, 1, '2017-10-02 11:40:37', '2017-10-02 11:40:37'),
(396, '', '', '', '', 1, 1, '2017-10-02 11:41:04', '2017-10-02 11:41:04'),
(397, '', '', '', '', 1, 1, '2017-10-02 11:41:41', '2017-10-02 11:41:41'),
(398, '', '', '', '', 1, 1, '2017-10-02 16:13:47', '2017-10-02 16:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_member` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `is_member`, `status`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'aaaa@aaaa.com', 0, 1, NULL, '2017-08-29 06:37:23', '2017-08-29 06:37:23'),
(2, 'te@gmail.com', 0, 1, NULL, '2017-09-06 10:19:29', '2017-09-06 10:19:29'),
(3, 'test@gmail.com', 0, 1, NULL, '2017-09-13 06:36:46', '2017-09-13 06:36:46'),
(4, 'fdsljkalfsda@gmail.com', 0, 1, NULL, '2017-09-15 13:57:10', '2017-09-15 13:57:10'),
(5, 'vanson29193@gmail.com', 0, 1, NULL, '2017-09-27 21:47:37', '2017-09-27 21:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1: teacher, 2 : student',
  `subjects` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int(11) DEFAULT NULL,
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` text,
  `image_url` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` varchar(255) DEFAULT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `alias`, `description`, `content`, `image_url`, `slug`, `status`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(8, 'Giới thiệu', 'Gioi thieu', 'Giới thiệu', '<strong>C&ocirc;ng ty Cổ phần Thiết kế X&acirc;y dựng v&agrave; Tư vấn Đầu tư Nguyễn Gia Ph&aacute;t (Houseland)&nbsp;</strong>l&agrave; một C&ocirc;ng ty chuy&ecirc;n về thiết kế, thi c&ocirc;ng x&acirc;y mới, sửa chữa, cải tạo n&acirc;ng cấp Nh&agrave; phố v&agrave; Biệt thự cao cấp. Trụ sở c&ocirc;ng ty đặt tại T&ograve;a nh&agrave; văn ph&ograve;ng số 166 đường Nguyễn Ho&agrave;ng, phường An Ph&uacute;, quận 2,Th&agrave;nh phố Hồ Ch&iacute; Minh.<br />\r\n<br />\r\nNg&agrave;y nay, c&ugrave;ng với sự ph&aacute;t triển của th&agrave;nh phố đ&ocirc; thị, nhu cầu x&acirc;y dựng mới Nh&agrave; ở của nh&acirc;n d&acirc;n ng&agrave;y c&agrave;ng tăng. Tuy nhi&ecirc;n, lĩnh vực&nbsp;Sửa chữa, Cải tạo n&acirc;ng cấp, Sơn bả ma t&iacute;t trang tr&iacute;&nbsp;c&aacute;c Nh&agrave;, Khu nh&agrave;, Khu chung cư cũng l&agrave; một nhu cầu hết sức bức thiết.<br />\r\n<br />\r\nC&ocirc;ng việc Sửa chữa, n&acirc;ng cấp cải tạo đ&ograve;i hỏi ngo&agrave;i chuy&ecirc;n m&ocirc;n, người kiến tr&uacute;c sư, kỹ sư c&ograve;n cần phải c&oacute; nhiều kinh nghiệm thực tế, sự tinh tế sắc sảo trong đ&aacute;nh gi&aacute;, đưa ra phương &aacute;n thiết kế xử l&yacute; tối ưu.Người thợ l&agrave;m c&ocirc;ng t&aacute;c Sửa chữa cần kỹ năng nghề nghiệp cao, sự chuy&ecirc;n nghiệp, l&agrave;nh nghề c&ograve;n cao hơn c&ocirc;ng t&aacute;c x&acirc;y mới. Nhận thức đ&uacute;ng đắn được điều đ&oacute;, C&ocirc;ng ty Cổ phần Thiết kế X&acirc;y dựng v&agrave; Tư vấn Đầu tư Nguyễn Gia Ph&aacute;t với đội ngũ c&aacute;n bộ l&agrave; những kiến tr&uacute;c sư, kỹ sư giỏi, c&oacute; kinh nghiệm l&acirc;u năm trong nghề v&agrave; đội ngũ thợ l&agrave;nh nghề, chuy&ecirc;n nghiệp sẽ đ&aacute;p ứng được những đ&ograve;i hỏi cao của Qu&yacute; kh&aacute;ch h&agrave;ng, kể cả những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.<br />\r\n<br />\r\nCh&uacute;ng t&ocirc;i: Kiến tr&uacute;c sư L&ecirc; Xu&acirc;n Nguy&ecirc;n &ndash; Gi&aacute;m đốc điều h&agrave;nh; Kỹ sư x&acirc;y dựng Nguyễn Xu&acirc;n Sắc &ndash; Ph&oacute; gi&aacute;m đốc kỹ thuật c&ugrave;ng với đội ngũ gần 20 kiến tr&uacute;c sư, kỹ sư x&acirc;y dựng, kỹ sư điện, cấp tho&aacute;t nước v&agrave; hơn 80 c&ocirc;ng nh&acirc;n l&agrave;nh nghề xin trung thực, nhiệt t&igrave;nh, t&acirc;m huyết phục vụ Qu&yacute; kh&aacute;ch h&agrave;ng khu vực th&agrave;nh phố Hồ Ch&iacute; Minh.<br />\r\nNội dung giới thiệu HOUSELAND', '', 'gioi-thieu', 1, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', '', 1, 1, '2017-08-29 00:00:00', '2017-09-27 07:47:13'),
(10, 'Lịch Sử Hình Thành', 'Lich Su Hinh Thanh', '', '', '', 'lich-su-hinh-thanh', 1, 'Lịch Sử Hình Thành', '', 'Lịch Sử Hình Thành', '', 1, 1, '2017-09-28 21:40:36', '2017-09-28 21:46:12'),
(11, 'Lĩnh Vực Hoạt Động', 'Linh Vuc Hoat Dong', '', '', '', 'linh-vuc-hoat-dong', 1, 'Lĩnh Vực Hoạt Động', '', 'Lĩnh Vực Hoạt Động', '', 1, 1, '2017-09-28 21:43:29', '2017-09-28 21:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `score` tinyint(4) NOT NULL,
  `amount` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_type` tinyint(4) NOT NULL COMMENT '1 : product 2 : articles'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `score`, `amount`, `object_id`, `object_type`) VALUES
(1, 1, 0, 1, 2),
(2, 2, 0, 1, 2),
(3, 3, 0, 1, 2),
(4, 4, 0, 1, 2),
(5, 5, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'base_url', 'http://houseland.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(2, 'site_title', 'Thiết kế biệt thự, thiết kế nhà phố đẹp', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(3, 'site_description', 'Chuyên thiết kế biệt thự, thiết kế biệt thự đẹp, thiết kế biệt thự cổ điển, thiết kế biệt thự hiện đại, thiết kế biệt thự phố, thiết kế biệt thự vườn, thiết kế biệt thự phố 2 mặt tiền, thiết kế nhà phố, thiết kế resort, thiết kế chung cư mini đẹp, sang trọng giá rẻ nhất hiện nay trên thị trường', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(4, 'site_keywords', 'hiết kế biệt thự, thiết kế biệt thự đẹp, thiết kế biệt thự cổ điển, thiết kế biệt thự hiện đại, thiết kế biệt thự phố, thiết kế biệt thự vườn, thiết kế biệt thự phố 2 mặt tiền, thiết kế nhà phố, thiết kế resort, thiết kế chung cư mini đẹp, thiết kế khách sạn, thiết kế nhà hàng, thiết kế showroom, thiết kế quán cà phê, thiết kế cao ốc văn phòng', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(5, 'admin_email', 'tungocsang88@gmail.com', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(22, 'mail_server', 'mail.example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(23, 'mail_login_name', 'login@example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(24, 'mail_password', 'password', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(105, 'site_name', 'houseland.com.vn', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(113, 'google_analystic', '<!-- Global Site Tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-88738631-22\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments)};\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-88738631-22\');\r\n</script>', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(114, 'facebook_appid', '', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(115, 'google_fanpage', 'https://plus.google.com/u/0/+Thi%E1%BA%BFtk%E1%BA%BFnh%C3%A0%C4%91%E1%BA%B9pHouseland', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(116, 'facebook_fanpage', 'https://www.facebook.com/tuvanthietkexaydungnha/', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(117, 'twitter_fanpage', 'https://twitter.com/houseland21', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(130, 'logo', '/public/uploads/images/logo.png', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(131, 'favicon', '2017/08/29/favicon-1504021257.ico', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(141, 'banner', '/public/uploads/images/logo.png', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(142, 'custom_text', '', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(143, 'email_cc', '', '2016-11-11 00:00:00', '2017-08-29 13:06:32'),
(144, 'thong_bao_chung', '\n', '2017-05-11 00:00:00', '2017-08-07 11:20:56'),
(145, 'cty_info', '', '0000-00-00 00:00:00', '2017-08-29 13:06:32'),
(146, 'hotline', '(08) 35 603 247 - 0909 787 111', '2017-07-27 00:00:00', '2017-10-01 18:57:42'),
(163, 'so_nam', '10', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(164, 'so_kien_truc_su', '60', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(165, 'so_cong_nhan', '900', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(166, 'so_cong_trinh', '800', '2016-07-27 14:37:52', '2017-10-01 18:57:42'),
(167, 'so_tin_lien_quan', '10', '2016-11-11 00:00:00', '2017-10-01 18:57:42'),
(168, 'gioi_thieu_chung', '', '2017-05-11 00:00:00', '2017-10-01 18:57:42'),
(169, 'gioi_thieu_tin_tuc', '', '0000-00-00 00:00:00', '2017-10-01 18:57:42'),
(170, 'email_header', 'houseland.com.vn@gmail.com', '2017-07-27 00:00:00', '2017-10-01 18:57:42'),
(171, 'su_lua_chon_dung_dan', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(172, 'chi_nhanh_phia_nam', '<p><strong>Đại diện chi nh&aacute;nh ph&iacute;a Nam:</strong></p>\r\n\r\n<p>Địa chỉ: 166 Nguyễn Ho&agrave;ng, phường An Ph&uacute;, quận 2</p>\r\n\r\n<p>Hotline: (08) 35 00 32 47 - 0909 787 111</p>\r\n\r\n<p>Email: <a href=\"mailto:#\">houseland.com.vn@gmail.com</a></p>\r\n', '2017-08-29 00:00:00', '2017-10-01 18:57:42'),
(173, 'chi_nhanh_phia_bac', '<p><strong>Đại diện chi nh&aacute;nh ph&iacute;a Bắc:</strong></p>\r\n\r\n<p>Địa chỉ: 166 Nguyễn Ho&agrave;ng, phường An Ph&uacute;, quận 2</p>\r\n\r\n<p>Hotline: (08) 35 00 32 47 - 0909 787 111</p>\r\n\r\n<p>Email: <a href=\"mailto:#\">houseland.com.vn@gmail.com</a></p>\r\n', '2017-08-29 00:00:00', '2017-10-01 18:57:42'),
(174, 'articles_per_page', '5', '2017-08-29 00:00:00', '2017-10-01 18:57:42'),
(175, 'product_related', '4', '2017-08-29 00:00:00', '2017-10-01 18:57:42'),
(176, 'mau_nen_menu', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(177, 'mau_nen_footer', '#0f1416', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(178, 'mau_nen_search', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(179, 'mau_nen_copyright', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(180, 'mau_nen_block', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(181, 'mau_nut_dang_ky', '#fb7c28', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(182, 'mau_nut_top', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(183, 'mau_menu_hover', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(184, 'icon_nam_hinh_thanh', '/public/uploads/images/banner-3-min-1506858353.png', '2017-08-29 00:00:00', '2017-10-01 18:57:42'),
(185, 'icon_kien_truc_su', '/public/uploads/images/banner-6-min-1506858372.png', '2017-08-29 00:00:00', '2017-10-01 18:57:42'),
(186, 'icon_cong_nhan', '/public/uploads/images/banner-15-min-1506858518.png', '2017-08-29 00:00:00', '2017-10-01 18:57:42'),
(187, 'icon_cong_trinh', '/public/uploads/images/banner-13-min-1506858549.png', '2017-08-29 00:00:00', '2017-10-01 18:57:42'),
(188, 'icon_tieu_de', '/public/uploads/images/banner-2-min-1506858286.png', '2017-08-29 00:00:00', '2017-10-01 18:57:42'),
(189, 'product_widget', '5', '0000-00-00 00:00:00', '2017-10-01 18:57:42'),
(190, 'article_related', '4', '2017-09-15 00:00:00', '2017-10-01 18:57:42'),
(191, 'mau_nen_header', '#ffffff', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(192, 'mau_header_title', '#000000', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(193, 'mau_header_value', '#000000', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(194, 'mau_header_icon', '#ff6600', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(195, 'mau_nen_header_top', '#000000', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(196, 'mau_chu_header_top', '#ffffff', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(197, 'mau_chu_dao', '#ff6600', '0000-00-00 00:00:00', '2017-10-01 18:57:42'),
(198, 'hover_parent', '#ff781e', '0000-00-00 00:00:00', '2017-10-01 18:57:42'),
(199, 'menu_border', '#cc5608', '0000-00-00 00:00:00', '2017-10-01 18:57:42'),
(200, 'icon_mui_ten', '/public/uploads/images/banner-1-min-1506858314.png', '0000-00-00 00:00:00', '2017-10-01 18:57:42'),
(201, 'hot_homepage', '5', '0000-00-00 00:00:00', '2017-10-01 18:57:42'),
(202, 'product_per_page', '9', '0000-00-00 00:00:00', '2017-10-01 18:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(20) DEFAULT NULL,
  `zalo` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `display_order` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 bds 2 tin tuc 3 tien ich',
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` varchar(32) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL COMMENT 'danh cho tien ich',
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `meta_id`, `slug`, `type`, `name`, `alias`, `description`, `district_id`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(6, NULL, 'thu-tuc-tranh-chap-dat-dai-gom-nhung-gi', 2, 'Thủ tục tranh chấp đất đai gồm những gì', NULL, NULL, NULL, 2, 2, '2017-07-09 11:06:13', '2017-07-09 11:06:13'),
(7, NULL, 'trinh-tu-giai-quyet-tranh-chap-dat-dai', 2, 'Trình tự giải quyết tranh chấp đất đai', NULL, NULL, NULL, 2, 2, '2017-07-09 11:06:27', '2017-07-09 11:06:27'),
(8, NULL, 'nguyen-tac-giai-quyet-tranh-chap-dat-dai', 2, 'Nguyên tắc giải quyết tranh chấp đất đai', NULL, NULL, NULL, 2, 2, '2017-07-09 11:06:55', '2017-07-09 11:06:55'),
(9, NULL, 'nhung-diem-moi-luat-dat-dai-2013', 2, 'Những điểm mới luật đất đai 2013', NULL, NULL, NULL, 2, 2, '2017-07-09 11:07:23', '2017-07-09 11:07:23'),
(10, NULL, 'cac-loai-tranh-chap-dat-dai-hien-nay', 2, 'Các loại tranh chấp đất đai hiện nay', NULL, NULL, NULL, 2, 2, '2017-07-09 11:07:36', '2017-07-09 11:07:36'),
(11, NULL, 'the-nao-la-tranh-chap-dat-dai', 2, 'thế nào là tranh chấp đất đai', NULL, NULL, NULL, 2, 2, '2017-07-09 13:27:13', '2017-07-09 13:27:13'),
(12, NULL, 'nhung-kieng-ky-trong-phong-ngu', 2, 'những kiêng kỵ trong phòng ngủ', NULL, NULL, NULL, 3, 3, '2017-07-10 08:49:24', '2017-07-10 08:49:24'),
(13, NULL, 'nhung-dieu-can-tranh-khi-trang-tri-phong-ngu', 2, 'những điều cần tránh khi trang trí phòng ngủ', NULL, NULL, NULL, 3, 3, '2017-07-10 08:49:24', '2017-07-10 08:49:24'),
(16, NULL, 'nhung-dieu-can-tranh-trong-phong-thuy-nha-o', 2, 'những điều cần tránh trong phong thủy nhà ở', NULL, NULL, NULL, 3, 3, '2017-07-10 13:37:16', '2017-07-10 13:37:16'),
(18, NULL, 'chon-nha-dung-phong-thuy', 2, 'chọn nhà đúng phong thủy', NULL, NULL, NULL, 3, 3, '2017-07-10 14:11:50', '2017-07-10 14:11:50'),
(19, NULL, 'nhung-dieu-can-biet-de-khong-sai-lam-trong-phong-thuy-nha-o', 2, 'những điều cần biết để không sai lầm trong phong thủy nhà ở', NULL, NULL, NULL, 3, 3, '2017-07-10 14:11:50', '2017-07-10 14:11:50'),
(21, NULL, 'cach-tranh-huong-nha-xau', 2, 'cách tránh hướng nhà xấu', NULL, NULL, NULL, 3, 3, '2017-07-10 14:35:15', '2017-07-10 14:35:15'),
(23, NULL, 'nhung-loai-cay-tuyet-doi-khong-duoc-trong-trong-nha', 2, 'những loại cây tuyệt đối không được trồng trong nhà', NULL, NULL, NULL, 3, 3, '2017-07-10 15:00:09', '2017-07-10 15:00:09'),
(25, NULL, 'co-nen-xay-nha-khi-nha-co-dam-tang', 2, 'có nên xây nhà khi nhà có đám tang', NULL, NULL, NULL, 3, 3, '2017-07-10 15:37:10', '2017-07-10 15:37:10'),
(26, NULL, 'kieng-ky-xay-nha-khi-co-dam-tang', 2, 'kiêng kỵ xây nhà khi có đám tang', NULL, NULL, NULL, 3, 3, '2017-07-10 15:37:10', '2017-07-10 15:37:10'),
(27, NULL, 'khong-nen-lam-khi-nha-co-dam-tang', 2, 'không nên làm khi nhà có đám tang', NULL, NULL, NULL, 3, 3, '2017-07-10 16:15:17', '2017-07-10 16:15:17'),
(28, NULL, 'nhung-dieu-khong-nen-lam-khi-nha-co-tang', 2, 'những điều không nên làm khi nhà có tang', NULL, NULL, NULL, 3, 3, '2017-07-10 16:31:43', '2017-07-10 16:31:43'),
(29, NULL, 'nhung-luu-y-khi-xay-nha', 2, 'những lưu ý khi xây nhà', NULL, NULL, NULL, 3, 3, '2017-07-10 16:35:27', '2017-07-10 16:35:27'),
(30, NULL, 'nhung-dieu-can-tranh-khi-xay-nha', 2, 'những điều cần tránh khi xây nhà', NULL, NULL, NULL, 3, 3, '2017-07-10 16:35:27', '2017-07-10 16:35:27'),
(31, NULL, 'cach-su-dung-cua-guong-bat-quai', 2, 'cách sử dụng của gương bát quái', NULL, NULL, NULL, 3, 3, '2017-07-10 17:01:22', '2017-07-10 17:01:22'),
(32, NULL, 'khai-quang-guong-bat-quai', 2, 'khai quang gương bát quái', NULL, NULL, NULL, 3, 3, '2017-07-10 17:01:22', '2017-07-10 17:01:22'),
(33, NULL, 'hoa-giai-nha-co-huong-tuyet-menh', 2, 'hóa giải nhà có hướng tuyệt mệnh', NULL, NULL, NULL, 3, 3, '2017-07-11 09:19:28', '2017-07-11 09:19:28'),
(34, NULL, 'phuong-phap-hoa-giai-nha-huong-xau', 2, 'phương pháp hóa giải nhà hướng xấu', NULL, NULL, NULL, 3, 3, '2017-07-11 09:20:05', '2017-07-11 09:20:05'),
(45, NULL, 'mau-nha-dep', 2, 'mẫu nhà đẹp', NULL, NULL, NULL, 2, 2, '2017-07-12 14:40:44', '2017-07-12 14:40:44'),
(47, NULL, 'the-nao-la-dat-lien-ke', 2, 'Thế nào là đất liền kề', NULL, NULL, NULL, 2, 2, '2017-07-13 16:02:27', '2017-07-13 16:02:27'),
(48, NULL, 'thu-tuc-chuyen-nhuong-dat-lien-ke', 2, 'Thủ tục chuyển nhượng đất liền kề', NULL, NULL, NULL, 2, 2, '2017-07-13 16:02:33', '2017-07-13 16:02:33'),
(49, NULL, 'thu-tuc-mua-them-dat-lien-ke', 2, 'Thủ tục mua thêm đất liền kề', NULL, NULL, NULL, 2, 2, '2017-07-13 16:02:39', '2017-07-13 16:02:39'),
(50, NULL, 'thu-tuc-mua-ban-dat-vuon-lien-ke', 2, 'Thủ tục mua bán đất vườn liền kề', NULL, NULL, NULL, 2, 2, '2017-07-13 16:02:54', '2017-07-13 16:02:54'),
(51, NULL, 'thu-tuc-chuyen-tu-so-do-len-so-hong-nhu-the-nao', 2, 'Thủ tục chuyển từ sổ đổ lên sổ hồng như thế nào', NULL, NULL, NULL, 2, 2, '2017-07-14 09:43:10', '2017-07-14 09:43:10'),
(52, NULL, 'ban-do-hanh-chinh-huyen-can-giuoc', 2, 'bản đồ hành chính huyện cần giuộc', NULL, NULL, NULL, 2, 2, '2017-07-16 17:05:10', '2017-07-16 17:05:10'),
(53, NULL, 'quy-dinh-ve-cap-phep-xay-dung-moi-nhat', 2, 'quy định về cấp phép xây dựng mới nhất', NULL, NULL, NULL, 2, 2, '2017-07-17 12:08:19', '2017-07-17 12:08:19'),
(54, NULL, 'ho-so-xin-phep-xay-dung-gom-nhung-gi', 2, 'hồ sơ xin phép xây dựng gồm những gì', NULL, NULL, NULL, 2, 2, '2017-07-17 12:08:29', '2017-07-17 12:08:29'),
(55, NULL, 'ho-so-xin-giay-phep-xay-dung-nha-o', 2, 'hồ sơ xin giấy phép xây dựng nhà ở', NULL, NULL, NULL, 2, 2, '2017-07-17 12:08:34', '2017-07-17 12:08:34'),
(56, NULL, 'nhung-loai-phap-ly-can-thiet-khi-xay-nha', 2, 'Những loại pháp lý cần thiết khi xây nhà', NULL, NULL, NULL, 2, 2, '2017-07-17 14:13:05', '2017-07-17 14:13:05'),
(57, NULL, 'quy-trinh-xin-phep-xay-dung-sua-chua-nha-o', 2, 'Quy trình xin phép xây dựng sửa chữa nhà ở', NULL, NULL, NULL, 2, 2, '2017-07-17 14:13:15', '2017-07-17 14:13:15'),
(58, NULL, 'mot-so-muc-phat-doi-voi-hanh-vi-khong-xin-phep-xay-dung', 2, 'Một số mức phạt đối với hành vi không xin phép xây dựng', NULL, NULL, NULL, 2, 2, '2017-07-17 14:13:24', '2017-07-17 14:13:24'),
(59, NULL, 'cac-truong-hop-khong-duoc-cap-giay-chung-nhan-quyen-su-dung-dat', 2, 'Các trường hợp không được cấp Giấy chứng nhận quyền sử dụng đất', NULL, NULL, NULL, 2, 2, '2017-07-17 15:15:47', '2017-07-17 15:15:47'),
(60, NULL, 'dieu-kien-tach-thua-nhu-the-nao', 2, 'Điều kiện tách thửa như thế nào', NULL, NULL, NULL, 2, 2, '2017-07-17 15:58:59', '2017-07-17 15:58:59'),
(61, NULL, 'thoi-gian-giai-quyet-tach-thua-bao-lau', 2, 'Thời gian giải quyết tách thửa bao lâu', NULL, NULL, NULL, 2, 2, '2017-07-17 15:59:13', '2017-07-17 15:59:13'),
(62, NULL, 'huong-nha-tuyet-menh-la-gi', 2, 'Hướng nhà tuyệt mệnh là gì', NULL, NULL, NULL, 2, 2, '2017-07-19 10:00:44', '2017-07-19 10:00:44'),
(63, NULL, 'cach-hoa-giai-huong-nha-tuyet-menh-nhu-the-nao', 2, 'Cách hóa giải hướng nhà tuyệt mệnh như thế nào', NULL, NULL, NULL, 2, 2, '2017-07-19 10:00:51', '2017-07-19 10:00:51'),
(64, NULL, 'nhung-cach-khac-phuc-huong-nha-khong-tot', 2, 'Những cách khắc phục hướng nhà không tốt', NULL, NULL, NULL, 2, 2, '2017-07-19 10:01:00', '2017-07-19 10:01:00'),
(65, NULL, 'ban-do-hanh-chinh-huyen-can-duoc', 2, 'bản đồ hành chính huyện cần đước', NULL, NULL, NULL, 2, 2, '2017-07-19 16:25:28', '2017-07-19 16:25:28'),
(66, NULL, 'ban-do-duong-banh-dai-tp-tan-an', 2, 'bản đồ đường bành đai tp tân an', NULL, NULL, NULL, 2, 2, '2017-07-20 09:36:39', '2017-07-20 09:36:39'),
(70, NULL, 'ban-do-co-so-ha-tang-huyen-can-duoc', 2, 'Bản đồ cơ sở hạ tầng huyện Cần Đước', NULL, NULL, NULL, 2, 2, '2017-07-21 09:31:12', '2017-07-21 09:31:12'),
(71, NULL, 'ban-do-huyen-trang-kinh-te-huyen-can-duoc', 2, 'Bản đồ huyện trạng kinh tế huyện Cần Đước', NULL, NULL, NULL, 2, 2, '2017-07-21 09:31:19', '2017-07-21 09:31:19'),
(72, NULL, 'ban-do-phan-vung-phat-trien-kinh-te-huyen-can-duoc', 2, 'Bản đồ phân vùng phát triển kinh tế huyện Cần Đước', NULL, NULL, NULL, 2, 2, '2017-07-21 09:31:33', '2017-07-21 09:31:33'),
(73, NULL, 'ban-do-quy-hoach-tong-the-kinh-te-xa-hoi-huyen-can-duoc', 2, 'Bản đồ quy hoạch tổng thể kinh tế xã hội huyện Cần Đước', NULL, NULL, NULL, 2, 2, '2017-07-21 09:31:39', '2017-07-21 09:31:39'),
(74, NULL, 'thong-tin-huyen-can-duoc', 2, 'Thông tin huyện Cần Đước', NULL, NULL, NULL, 2, 2, '2017-07-21 14:40:39', '2017-07-21 14:40:39'),
(75, NULL, 'huyen-can-duoc-co-bao-nhieu-xa-va-thi-tran', 2, 'Huyện Cần Đước có bao nhiêu xã và thị trấn', NULL, NULL, NULL, 2, 2, '2017-07-21 22:16:56', '2017-07-21 22:16:56'),
(76, NULL, 'huyen-can-duoc-co-bao-nhieu-xa', 2, 'Huyện cần đước có bao nhiêu xã', NULL, NULL, NULL, 2, 2, '2017-07-22 10:35:21', '2017-07-22 10:35:21'),
(77, NULL, 'ban-do-co-so-ha-tang-huyen-can-giuoc', 2, 'Bản đồ cơ sở hạ tầng huyện Cần Giuộc', NULL, NULL, NULL, 2, 2, '2017-07-22 16:47:31', '2017-07-22 16:47:31'),
(78, NULL, 'ban-do-to-chuc-lanh-tho-huyen-can-giuoc', 2, 'Bản đồ tổ chức lãnh thổ huyện Cần Giuộc', NULL, NULL, NULL, 2, 2, '2017-07-22 16:47:38', '2017-07-22 16:47:38'),
(79, NULL, 'ban-do-hien-trang-va-quy-hoach-phat-trien-kinh-te-huyen-can-giuoc', 2, 'Bản đồ hiện trạng và quy hoạch phát triển kinh tế huyện Cần Giuộc', NULL, NULL, NULL, 2, 2, '2017-07-22 16:47:56', '2017-07-22 16:47:56'),
(80, NULL, 'ban-do-vi-tri-moi-quan-he-lien-vung-huyen-can-giuoc', 2, 'Bản đồ vị trí & mối quan hệ liên vùng huyện Cần Giuộc', NULL, NULL, NULL, 2, 2, '2017-07-22 16:48:03', '2017-07-22 16:48:03'),
(81, NULL, 'huyen-thu-thua-co-bao-nhieu-xa', 2, 'Huyện Thủ Thừa có bao nhiêu xã', NULL, NULL, NULL, 2, 2, '2017-07-24 15:47:04', '2017-07-24 15:47:04'),
(82, NULL, 'van-phong-cong-chung-huyen-can-duoc', 2, 'Văn phòng công chứng huyện Cần Đước', NULL, NULL, NULL, 2, 2, '2017-07-24 16:43:33', '2017-07-24 16:43:33'),
(83, NULL, 'cong-chung-cac-hop-dong-giao-dich-tai-huyen-can-duoc', 2, 'Công chứng các hợp đồng, giao dịch tại huyện Cần Đước', NULL, NULL, NULL, 2, 2, '2017-07-24 17:07:13', '2017-07-24 17:07:13'),
(84, NULL, 'cong-chung-cac-di-chuc-thua-ke-tai-huyen-can-duoc', 2, 'Công chứng các di chúc, thừa kế tại huyện Cần Đước', NULL, NULL, NULL, 2, 2, '2017-07-24 17:07:31', '2017-07-24 17:07:31'),
(85, NULL, 'cong-chung-uy-quyen-tai-huyen-can-duoc', 2, 'Công chứng ủy quyền tại  huyện Cần Đước', NULL, NULL, NULL, 2, 2, '2017-07-24 17:07:46', '2017-07-24 17:07:46'),
(86, NULL, 'phong-cong-chung-la-gi', 2, 'Phòng công chứng là gì', NULL, NULL, NULL, 2, 2, '2017-07-24 17:30:43', '2017-07-24 17:30:43'),
(87, NULL, 'van-phong-cong-chung-la-gi', 2, 'Văn phòng công chứng là gì', NULL, NULL, NULL, 2, 2, '2017-07-24 17:30:49', '2017-07-24 17:30:49'),
(88, NULL, 'dia-chi-cong-chung-tai-thanh-pho-tan-an', 2, 'Địa chỉ công chứng tại thành phố Tân An', NULL, NULL, NULL, 2, 2, '2017-07-26 09:04:25', '2017-07-26 09:04:25'),
(116, NULL, 'dia-chi-phong-cong-chung-huyen-can-giuoc', 2, 'Địa chỉ phòng công chứng huyện Cần Giuộc', NULL, NULL, NULL, 2, 2, '2017-07-27 15:45:27', '2017-07-27 15:45:27'),
(117, NULL, 'dia-chi-cong-chung-giay-to-dat-huyen-moc-hoa', 2, 'Địa chỉ công chứng giấy tờ đất huyện mộc hóa', NULL, NULL, NULL, 2, 2, '2017-07-27 15:52:41', '2017-07-27 15:52:41'),
(118, NULL, 'dia-chi-cong-chung-nha-dat-tai-huyen-duc-hoa', 2, 'Địa chỉ công chứng nhà đất tại huyện Đức Hòa', NULL, NULL, NULL, 2, 2, '2017-07-27 16:05:54', '2017-07-27 16:05:54'),
(119, NULL, 'dia-chi-cong-chung-giay-to-nha-dat-huyen-thu-thua', 2, 'Địa chỉ công chứng giấy tờ nhà đất huyện thủ thừa', NULL, NULL, NULL, 2, 2, '2017-07-27 17:24:25', '2017-07-27 17:24:25'),
(120, NULL, 'dia-chi-cong-chung-giay-to-nha-dat-huyen-ben-luc', 2, 'Địa chỉ công chứng giấy tờ nhà đất huyện bến lức', NULL, NULL, NULL, 2, 2, '2017-07-28 13:48:33', '2017-07-28 13:48:33'),
(121, NULL, 'dia-chi-cong-chung-giay-to-nha-dat-huyen-duc-hoa', 2, 'Địa chỉ công chứng giấy tờ nhà đất huyện đức hòa', NULL, NULL, NULL, 2, 2, '2017-07-28 14:03:28', '2017-07-28 14:03:28'),
(131, 314, 'thiet-ke-biet-thu-co-dien-quan-1', 1, 'Thiết kế biệt thự cổ điển quận 1', 'Thiet ke biet thu co dien quan 1', 'Chuyên thiết kế biệt thự cổ điển', NULL, 1, 1, '2017-09-28 10:59:10', '2017-09-28 10:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `tag_objects`
--

CREATE TABLE `tag_objects` (
  `object_id` int(20) NOT NULL,
  `tag_id` int(20) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : product, 2 : tin tuc',
  `object_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 : product, 2 : album, 3 : video , 4 : tin tức'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`id`, `content`) VALUES
(1, 'Chào mừng bạn đến với bất động sản Houseland!'),
(2, 'THI CÔNG XÂY DỰNG HOUSELAND'),
(3, 'TIN TỨC BẤT ĐỘNG SẢN'),
(4, 'DỊCH VỤ KIẾN TRÚC HOUSELAND'),
(5, 'THÔNG TIN CÔNG TY'),
(6, 'LIÊN HỆ VỚI CHÚNG TÔI'),
(7, 'NHẬN THÔNG TIN VỀ HOUSELAND'),
(8, 'CHÚNG TÔI LÀ SỰ LỰA CHỌN ĐÚNG ĐẮN'),
(9, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `leader_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `changed_password` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `display_name`, `email`, `password`, `role`, `leader_id`, `status`, `changed_password`, `remember_token`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@study.vn', '$2y$10$7sDXZ9TpALmzuP0yvzZt7O.g/R/T7q1kZq/mzR3swNOv5kUKCN4Ry', 3, 1, 1, 0, '2qvaPwFc1AnAthE6cRDLsffHrVJoGnitYRMknwBHBVTkDVkZS0PwUYlPt6SX', 1, 1, '2017-06-28 00:00:00', '2017-10-02 06:13:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles_cate`
--
ALTER TABLE `articles_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `cate_parent`
--
ALTER TABLE `cate_parent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`slug`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `full_name` (`full_name`),
  ADD KEY `email` (`email`),
  ADD KEY `phone` (`phone`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `counter_ips`
--
ALTER TABLE `counter_ips`
  ADD UNIQUE KEY `ip` (`ip`,`object_id`,`object_type`);

--
-- Indexes for table `counter_values`
--
ALTER TABLE `counter_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`,`object_type`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_link`
--
ALTER TABLE `custom_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hot_cate`
--
ALTER TABLE `hot_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_seo`
--
ALTER TABLE `info_seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `score` (`score`,`object_id`,`object_type`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`) USING BTREE;

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_objects`
--
ALTER TABLE `tag_objects`
  ADD PRIMARY KEY (`object_id`,`tag_id`,`type`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles_cate`
--
ALTER TABLE `articles_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cate`
--
ALTER TABLE `cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cate_parent`
--
ALTER TABLE `cate_parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `counter_values`
--
ALTER TABLE `counter_values`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_link`
--
ALTER TABLE `custom_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hot_cate`
--
ALTER TABLE `hot_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `info_seo`
--
ALTER TABLE `info_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
