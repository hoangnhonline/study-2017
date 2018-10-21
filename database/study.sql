-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2018 at 01:09 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

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
  `youtube_id` varchar(255) DEFAULT NULL,
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

INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `youtube_id`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `type`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(1, 'Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD', 'hang-chuc-sinh-vien-moi-ra-truong-nhan-luong-khoi-diem-den-3000-usd', 'Hang chuc sinh vien moi ra truong nhan luong khoi diem den 3.000 USD', 'Theo Đại học Bách khoa Hà Nội, năm học 2015-2016, trường có hơn 60 sinh viên được tuyển dụng với mức lương 2.000 đến 3.000 USD một tháng.', NULL, '/public/uploads/images/thumb00_081905408995654-1506935578.jpg', 1, '<p>Trong bối cảnh 63% sinh vi&ecirc;n ra trường kh&ocirc;ng l&agrave;m được việc, 225.000 cử nh&acirc;n, thạc sĩ thất nghiệp, vấn đề &ldquo;lương 2.000 USD&rdquo; vẫn được coi l&agrave; ước mơ viển v&ocirc;ng, xa vời.</p>\r\n\r\n<h2>Giấc mơ từng bị &#39;n&eacute;m đ&aacute;&#39;</h2>\r\n\r\n<p>Năm 2011, một sinh vi&ecirc;n Đại học Ngoại thương tuy&ecirc;n bố ra trường lương dưới 1.000 USD kh&ocirc;ng l&agrave;m, g&acirc;y n&ecirc;n &ldquo;c&uacute; sốc&rdquo; với nhiều sinh vi&ecirc;n v&agrave; nh&agrave; tuyển dụng. Ph&aacute;t ng&ocirc;n n&agrave;y đ&atilde; trở th&agrave;nh chủ đề bị chế giễu tr&ecirc;n cộng đồng mạng.</p>\r\n\r\n<p>Năm 2016, một sinh vi&ecirc;n Học viện Kỹ thuật Mật m&atilde; đặt c&acirc;u hỏi trong hội thảo về cơ hội nghề nghiệp: &ldquo;Em phải học tập v&agrave; l&agrave;m việc như thế n&agrave;o để c&aacute;c nh&agrave; tuyển dụng ở đ&acirc;y nhận v&agrave;o l&agrave;m với mức lương khởi điểm 2.000 USD/th&aacute;ng?&quot;. C&acirc;u hỏi khiến nhiều con mắt đổ dồn về ph&iacute;a nữ sinh v&agrave; sau đ&oacute; c&ocirc; bạn bị &quot;n&eacute;m đ&aacute;&quot; tr&ecirc;n mạng.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/09/shares/083141_bk1.jpg\" /></p>\r\n\r\n<h3><em>Bảng thống k&ecirc; việc l&agrave;m của sinh vi&ecirc;n ĐH B&aacute;ch khoa H&agrave; Nội 6 th&aacute;ng đầu năm 2016. Ảnh: ĐHBKHN.</em></h3>\r\n\r\n<p>Hai c&acirc;u hỏi tr&ecirc;n của sinh vi&ecirc;n về mức lương ngh&igrave;n USD nhận được &yacute; kiến tr&aacute;i chiều của dư luận. Người cho rằng đ&oacute; l&agrave; giấc mơ &quot;hoang đường, kh&ocirc;ng c&oacute; cơ sở&quot; v&igrave; sinh vi&ecirc;n Việt Nam ra trường thường chưa l&agrave;m được việc. Thế nhưng, kh&ocirc;ng &iacute;t &yacute; kiến kh&aacute;c khẳng định &ldquo;nếu kh&ocirc;ng c&oacute; ước mơ th&igrave; kh&ocirc;ng thể l&agrave;m được những điều vĩ đại&quot;.</p>\r\n\r\n<p>Theo kết quả khảo s&aacute;t của một số trường đại học, sinh vi&ecirc;n mới ra trường ho&agrave;n to&agrave;n c&oacute; thể nhận được mức lương 2.000 USD/th&aacute;ng tại c&aacute;c c&ocirc;ng ty nước ngo&agrave;i.</p>\r\n\r\n<p>Mới đ&acirc;y, Đại học B&aacute;ch khoa H&agrave; Nội c&ocirc;ng bố bảng thống k&ecirc; mức lương trung b&igrave;nh của sinh vi&ecirc;n tốt nghiệp 6 th&aacute;ng đầu năm 2016 (80% số sinh vi&ecirc;n tốt nghiệp trả lời khảo s&aacute;t). Theo đ&oacute;, mức trung b&igrave;nh l&agrave; 8,2 triệu đồng/th&aacute;ng. Phổ lương trải rộng từ 3 đến 60 triệu đồng/th&aacute;ng.&nbsp;</p>\r\n\r\n<p>Tại Đại học Khoa học Tự nhi&ecirc;n (Đại học Quốc gia H&agrave; Nội), c&aacute;c khảo s&aacute;t thực tế do nh&agrave; trường thực hiện qua những năm gần đ&acirc;y cho thấy mức lương sinh vi&ecirc;n nhận được dao động từ 6-20 triệu đồng/th&aacute;ng. Số sinh vi&ecirc;n nhận lương 30-60 triệu đồng/th&aacute;ng kh&ocirc;ng nhiều. Một số sinh vi&ecirc;n xuất sắc c&oacute; lương 60 triệu đồng/th&aacute;ng.</p>\r\n\r\n<h2>Phải d&aacute;m nghĩ về mức lương 2.000 USD</h2>\r\n\r\n<p>Theo số liệu của Đại học Khoa học Tự nhi&ecirc;n, hai nữ sinh nhận được lương khởi điểm 2.000 USD khi chưa ra trường l&agrave; Nguyễn Thị Qu&yacute; (ng&agrave;nh Ti&ecirc;n tiến H&oacute;a học) v&agrave; Đỗ Thị Phương (ng&agrave;nh C&ocirc;ng nghệ Kỹ thuật H&oacute;a học). Họ đ&atilde; được C&ocirc;ng ty H&oacute;a chất Kyowa (Nhật Bản) nhận l&agrave;m việc.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/09/shares/083428_quy1.jpg\" /></p>\r\n\r\n<h3><em>Nguyễn Thị Qu&yacute; - sinh vi&ecirc;n ĐH Khoa học Tự nhi&ecirc;n, Đại học Quốc gia H&agrave; Nội. Ảnh: ĐHKHTN.</em></h3>\r\n\r\n<p>&Ocirc;ng Nguyễn Thanh B&igrave;nh - Trưởng ph&ograve;ng C&ocirc;ng t&aacute;c sinh vi&ecirc;n, Đại học Khoa học Tự nhi&ecirc;n - l&yacute; giải, sinh vi&ecirc;n trong trường c&oacute; nhiều cơ hội được nhận v&agrave;o l&agrave;m việc tại c&aacute;c tập đo&agrave;n lớn của nước ngo&agrave;i n&ecirc;n lương cao. Đ&oacute; phần lớn l&agrave; sinh vi&ecirc;n l&agrave;m việc li&ecirc;n quan c&aacute;c ng&agrave;nh như h&oacute;a chất, sinh học, c&ocirc;ng nghệ sinh học, c&ocirc;ng nghệ thực phẩm hoặc vi sinh...</p>\r\n\r\n<p>PGS Đinh Văn Hải, Trưởng ph&ograve;ng C&ocirc;ng t&aacute;c Ch&iacute;nh trị Sinh vi&ecirc;n, Đại học B&aacute;ch khoa H&agrave; Nội, cũng cho hay: Năm học 2015-2016, trường c&oacute; hơn 60 sinh vi&ecirc;n được tuyển dụng với mức lương 2.000 đến 3.000 USD/th&aacute;ng, hầu hết l&agrave;m cho c&ocirc;ng ty nước ngo&agrave;i, c&aacute;c ng&agrave;nh về c&ocirc;ng nghệ th&ocirc;ng tin.</p>\r\n\r\n<p>Trong đ&oacute;, em Nguyễn Xu&acirc;n B&aacute;ch (sinh vi&ecirc;n năm cuối) tr&uacute;ng tuyển vị tr&iacute; kỹ sư phần mềm, l&agrave;m việc ở Nhật Bản với mức lương 60 triệu đồng mỗi th&aacute;ng.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/09/shares/083501_luong_my_1_1.jpg\" /></p>\r\n\r\n<h3><em>Quy định mức lương tối thiểu v&ugrave;ng đối với người lao động l&agrave;m việc theo hợp đồng lao động. Nguồn: Bộ Lao động Thương binh v&agrave; X&atilde; hội. Đồ họa: Nguyễn Sương. &nbsp;</em></h3>\r\n\r\n<p>Tiến sĩ L&ecirc; Nh&acirc;n T&acirc;m - cố vấn c&ocirc;ng nghệ v&agrave; kiến tr&uacute;c sư về điện to&aacute;n đ&aacute;m m&acirc;y của Tập đo&agrave;n IBM - cho rằng sinh vi&ecirc;n phải d&aacute;m nghĩ về lương 2.000 USD. Hiện nay, sinh vi&ecirc;n mới ra trường c&oacute; thể nhận được mức lương n&agrave;y, chủ yếu ở lĩnh vực bảo mật c&ocirc;ng nghệ th&ocirc;ng tin.</p>\r\n\r\n<p>&Ocirc;ng T&acirc;m cũng cho rằng điều quan trọng hơn sinh vi&ecirc;n n&ecirc;n đặt c&acirc;u hỏi: Bạn l&agrave; ai sau 2-5 năm nữa. Từ đ&oacute;, bạn sẽ biết m&igrave;nh l&agrave;m g&igrave;, n&ecirc;n trang bị những g&igrave; để đạt được mục ti&ecirc;u.</p>\r\n\r\n<p>TS L&ecirc; Nh&acirc;n T&acirc;m l&yacute; giải c&aacute;c c&ocirc;ng ty lớn như IBM, Microsoft, Google... đều tuyển dụng những người c&oacute; nhiều kinh nghiệm. V&igrave; vậy, c&aacute;c bạn trẻ n&ecirc;n học hỏi từ ch&iacute;nh người quản l&yacute; của m&igrave;nh xem họ l&agrave;m c&ocirc;ng việc g&igrave;, thực hiện kỹ năng n&agrave;o để bổ sung những điều m&igrave;nh c&ograve;n khuyết thiếu.</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>Quy&ecirc;n Quy&ecirc;n</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Zing.vn</em></p>\r\n', 0, NULL, 1, 1, 0, 398, '2017-10-02 16:13:47', '2017-10-09 08:56:12', 1, 1),
(2, '860.000 thí sinh làm thủ tục thi THPT quốc gia', '860000-thi-sinh-lam-thu-tuc-thi-thpt-quoc-gia', '860.000 thi sinh lam thu tuc thi THPT quoc gia', 'Chiều nay, thí sinh sẽ đến các điểm thi làm thủ tục, chuẩn bị cho kỳ thi THPT quốc gia diễn ra vào ngày 22-24/6.', NULL, '/public/uploads/images/tin-tuc/thumb00_090436900502677-1507521419.jpg', 1, '<p>Chiều 21/6, khoảng 866.000 th&iacute; sinh cả nước sẽ tập trung tại c&aacute;c điểm thi THPT quốc gia để l&agrave;m thủ tục v&agrave; đ&iacute;nh ch&iacute;nh sai s&oacute;t (nếu c&oacute;). Th&iacute; sinh phải xuất tr&igrave;nh Giấy chứng minh nh&acirc;n d&acirc;n hoặc thẻ căn cước c&ocirc;ng d&acirc;n v&agrave; nhận Thẻ dự thi. Nếu ph&aacute;t hiện sai s&oacute;t về họ, t&ecirc;n đệm, t&ecirc;n, ng&agrave;y, th&aacute;ng, năm sinh, đối tượng ưu ti&ecirc;n, khu vực ưu ti&ecirc;n, c&aacute;c em cần b&aacute;o ngay cho c&aacute;n bộ của Điểm thi để xử l&yacute;.</p>\r\n\r\n<p>Sau khi th&iacute; sinh c&oacute; mặt đ&ocirc;ng đủ tại ph&ograve;ng thi, c&aacute;n bộ coi thi sẽ nhắc lại lịch thi, phổ biến quy chế như: đến chậm qu&aacute; 15 ph&uacute;t sau khi c&oacute; hiệu lệnh t&iacute;nh giờ l&agrave;m b&agrave;i sẽ kh&ocirc;ng được dự thi buổi đ&oacute;; 10 ph&uacute;t sau khi ph&aacute;t đề phải kiểm tra v&agrave; b&aacute;o lỗi đề thi. Những lỗi thiếu trang, r&aacute;ch, hỏng, nh&ograve;a, m&atilde; đề trong c&aacute;c m&ocirc;n thi th&agrave;nh phần của b&agrave;i thi tổ hợp kh&aacute;c nhau, th&iacute; sinh phải b&aacute;o c&aacute;o ngay để kịp thời xử l&yacute;...</p>\r\n\r\n<p>Do hầu hết m&ocirc;n thi trắc nghiệm, th&iacute; sinh sẽ được gi&aacute;m thị hướng dẫn cặn kẽ việc l&agrave;m b&agrave;i. C&aacute;c em chỉ được t&ocirc; bằng b&uacute;t ch&igrave; đen &ocirc; số b&aacute;o danh, &ocirc; m&atilde; đề thi v&agrave; &ocirc; trả lời. Trường hợp t&ocirc; nhầm hoặc muốn thay đổi c&acirc;u trả lời, cần tẩy sạch ch&igrave; ở &ocirc; cũ, rồi t&ocirc; &ocirc; m&igrave;nh lựa chọn...&nbsp;</p>\r\n\r\n<p><img alt=\"860.000 thí sinh làm thủ tục thi THPT quốc gia\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/06/21/shares/090351_1.jpg\" /></p>\r\n\r\n<h3><em>Lịch thi THPT quốc gia 2017.</em></h3>\r\n\r\n<p>Năm 2017, Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo tiếp tục tổ chức kỳ thi THPT quốc gia với mục ti&ecirc;u x&eacute;t tốt nghiệp v&agrave; x&eacute;t tuyển đại học, cao đẳng. So với 2 năm trước, kỳ thi THPT quốc gia năm nay c&oacute; nhiều thay đổi về h&igrave;nh thức, số m&ocirc;n, số ng&agrave;y v&agrave; đơn vị tổ chức thi.</p>\r\n\r\n<p>Năm nay trừ Ngữ văn, 8 m&ocirc;n c&ograve;n lại thi trắc nghiệm. Đ&acirc;y cũng l&agrave; năm đầu ti&ecirc;n Bộ Gi&aacute;o dục đưa Gi&aacute;o dục c&ocirc;ng d&acirc;n v&agrave;o kỳ thi cuối c&ugrave;ng của học sinh, b&ecirc;n cạnh c&aacute;c m&ocirc;n truyền thống To&aacute;n, Ngoại ngữ, L&yacute;, H&oacute;a, Sinh, Sử, Địa.&nbsp;</p>\r\n\r\n<p>Do thi trắc nghiệm, thời gian l&agrave;m b&agrave;i được r&uacute;t ngắn (trừ Văn 120 ph&uacute;t, To&aacute;n 90 ph&uacute;t, Ngoại ngữ 60 ph&uacute;t, c&aacute;c m&ocirc;n c&ograve;n lại 50 ph&uacute;t), tổng thời gian thi THPT quốc gia giảm c&ograve;n 2 ng&agrave;y rưỡi, thay v&igrave; 4 ng&agrave;y như trước.</p>\r\n\r\n<p>Sở Gi&aacute;o dục giữ vai tr&ograve; chủ tr&igrave; cụm thi, thay v&igrave; để c&aacute;c trường đại học cầm trịch. Nhằm đảm bảo kh&aacute;ch quan, c&ocirc;ng bằng cho th&iacute; sinh, c&aacute;c trường đại học vẫn tham gia tr&ocirc;ng, chấm v&agrave; gi&aacute;m s&aacute;t kỳ thi. Th&iacute; sinh thi ngay tại địa phương cư tr&uacute;, kh&ocirc;ng phải di chuyển về cụm thi đại học như trước, tr&aacute;nh l&atilde;ng ph&iacute; thời gian, tiền bạc.</p>\r\n\r\n<p>Để x&eacute;t tốt nghiệp THPT, th&iacute; sinh sẽ l&agrave;m 5 b&agrave;i thi, gồm 3 b&agrave;i độc lập bắt buộc l&agrave; To&aacute;n, Văn, Ngoại ngữ; lựa chọn một trong hai b&agrave;i thi tổ hợp Khoa học tự nhi&ecirc;n (L&yacute;, H&oacute;a, Sinh) hoặc Khoa học x&atilde; hội (Sử, Địa, Gi&aacute;o dục c&ocirc;ng d&acirc;n). Nếu muốn tăng cơ hội x&eacute;t tuyển đại học, th&iacute; sinh c&oacute; thể chọn thi cả hai b&agrave;i tổ hợp.</p>\r\n\r\n<p>Kỳ thi 2017 cả nước c&oacute; khoảng 860.000 th&iacute; sinh (giảm hơn 27.000 so với năm trước) sẽ dự thi THPT quốc gia để x&eacute;t tốt nghiệp v&agrave; x&eacute;t tuyển đại học, cao đẳng sư phạm. Hơn 643.000 (75%) th&iacute; sinh thi để lấy kết quả x&eacute;t tuyển đại học. Trong khi đ&oacute;, chỉ ti&ecirc;u của c&aacute;c trường đại học, cao đẳng sư phạm cả nước l&agrave; hơn 392.000 (giảm 30.000 so với năm trước).&nbsp;</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>Quỳnh Trang</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Vnexpress.net</em></p>\r\n', 1, NULL, 1, 1, 0, 15, '2017-10-09 10:57:59', '2017-10-09 10:58:06', 1, 1),
(3, 'Lưu ‎‎ý quan trọng với thí sinh khi làm bài thi tổ hợp', 'luu-y-quan-trong-voi-thi-sinh-khi-lam-bai-thi-to-hop', 'Luu ‎‎y quan trong voi thi sinh khi lam bai thi to hop', 'Hai bài thi tổ hợp khoa học tự nhiên và khoa học xã hội là điểm mới trong kỳ thi THPT quốc gia 2017. Thí sinh cần nắm rõ quy định với hai bài thi này để tránh sai sót đáng tiếc.', NULL, '/public/uploads/images/tin-tuc/thumb00_081905408995654-1507521513.jpg', 1, '<h2>Điểm kh&aacute;c biệt với 2 đối tượng th&iacute; sinh</h2>\r\n\r\n<p>B&agrave;i thi khoa học tự nhi&ecirc;n gồm tổ hợp c&aacute;c m&ocirc;n Vật l&yacute;, H&oacute;a học, Sinh học.</p>\r\n\r\n<p>Ri&ecirc;ng b&agrave;i thi khoa học x&atilde; hội c&oacute; sự kh&aacute;c biệt giữa 2 đối tượng th&iacute; sinh. Cụ thể, th&iacute; sinh học chương tr&igrave;nh gi&aacute;o dục THPT b&agrave;i thi khoa học x&atilde; hội gồm tổ hợp c&aacute;c m&ocirc;n Lịch sử, Địa l&yacute;, Gi&aacute;o dục c&ocirc;ng d&acirc;n.</p>\r\n\r\n<p>Th&iacute; sinh học chương tr&igrave;nh GDTX cấp THPT, b&agrave;i thi khoa học x&atilde; hội &iacute;t m&ocirc;n hơn, chỉ gồm Lịch sử v&agrave; Địa l&yacute;.</p>\r\n\r\n<p>Để x&eacute;t c&ocirc;ng nhận tốt nghiệp THPT, th&iacute; sinh học chương tr&igrave;nh Gi&aacute;o dục THPT phải dự thi 4 b&agrave;i thi, gồm 3 b&agrave;i thi độc lập l&agrave; To&aacute;n, Ngữ văn, Ngoại ngữ v&agrave; một b&agrave;i thi do th&iacute; sinh tự chọn trong số 2 b&agrave;i thi tổ hợp.</p>\r\n\r\n<p>Th&iacute; sinh học chương tr&igrave;nh GDTX cấp THPT phải dự thi 3 b&agrave;i thi, gồm 2 b&agrave;i thi độc lập l&agrave; To&aacute;n, Ngữ văn v&agrave; một b&agrave;i thi do th&iacute; sinh tự chọn trong số 2 b&agrave;i thi tổ hợp.</p>\r\n\r\n<p><img alt=\"Lưu ‎‎ý quan trọng với thí sinh khi làm bài thi tổ hợp\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/06/19/shares/081632_anh.jpg\" /></p>\r\n\r\n<h3><em>Th&iacute; sinh cần nắm r&otilde; quy định với hai b&agrave;i thi tổ hợp khoa học tự nhi&ecirc;n v&agrave; khoa học x&atilde; hội để tr&aacute;nh sai s&oacute;t đ&aacute;ng tiếc.</em></h3>\r\n\r\n<p>Th&iacute; sinh được chọn dự thi cả 2 b&agrave;i thi tổ hợp, điểm b&agrave;i thi tổ hợp n&agrave;o cao hơn sẽ được chọn để t&iacute;nh điểm x&eacute;t c&ocirc;ng nhận tốt nghiệp THPT; th&iacute; sinh GDTX c&oacute; thể chọn dự thi cả b&agrave;i thi Ngoại ngữ, điểm b&agrave;i thi n&agrave;y để x&eacute;t tuyển sinh ĐH, CĐ, kh&ocirc;ng d&ugrave;ng để t&iacute;nh điểm x&eacute;t c&ocirc;ng nhận tốt nghiệp THPT.</p>\r\n\r\n<p>Để x&eacute;t tuyển sinh ĐH, CĐ, th&iacute; sinh đ&atilde; tốt nghiệp THPT phải dự thi c&aacute;c b&agrave;i thi độc lập, b&agrave;i thi tổ hợp hoặc c&aacute;c m&ocirc;n thi th&agrave;nh phần của b&agrave;i thi tổ hợp, ph&ugrave; hợp với tổ hợp b&agrave;i thi, m&ocirc;n thi x&eacute;t tuyển v&agrave;o ng&agrave;nh, nh&oacute;m ng&agrave;nh theo quy định của trường ĐH, CĐ.</p>\r\n\r\n<h2>Lưu &lrm;&yacute; quan trọng khi l&agrave;m b&agrave;i thi tổ hợp</h2>\r\n\r\n<p>Theo quy định, th&iacute; sinh l&agrave; học sinh lớp 12 năm học 2016-2017 ĐKDT b&agrave;i thi tổ hợp n&agrave;o th&igrave; phải thi tất cả c&aacute;c m&ocirc;n thi th&agrave;nh phần của b&agrave;i thi tổ hợp đ&oacute;.</p>\r\n\r\n<p>Th&iacute; sinh l&agrave;m b&agrave;i c&aacute;c m&ocirc;n thi th&agrave;nh phần của b&agrave;i thi tổ hợp theo Lịch thi tr&ecirc;n c&ugrave;ng một phiếu trả lời trắc nghiệm (TLTN).</p>\r\n\r\n<p>Cần hết sức lưu &yacute;, c&aacute;c m&ocirc;n thi th&agrave;nh phần trong mỗi b&agrave;i thi tổ hợp c&oacute; c&ugrave;ng một m&atilde; đề thi; th&iacute; sinh ghi m&atilde; đề thi n&agrave;y tr&ecirc;n Phiếu TLTN để theo d&otilde;i.</p>\r\n\r\n<p>Th&iacute; sinh phải nộp lại đề thi, giấy nh&aacute;p khi hết thời gian l&agrave;m b&agrave;i m&ocirc;n thi th&agrave;nh phần; kh&ocirc;ng phải nộp lại đề thi, giấy nh&aacute;p đối với m&ocirc;n thi Sinh học v&agrave; Gi&aacute;o dục c&ocirc;ng d&acirc;n của b&agrave;i thi tổ hợp; kh&ocirc;ng phải nộp lại đề thi, giấy nh&aacute;p đối với c&aacute;c b&agrave;i thi độc lập To&aacute;n, Ngữ văn, Ngoại ngữ.</p>\r\n\r\n<p>Khi thu b&agrave;i, th&iacute; sinh phải điền v&agrave;o Phiếu thu b&agrave;i thi số tờ giấy thi của m&igrave;nh v&agrave; k&yacute; x&aacute;c nhận; đảm bảo kh&ocirc;ng xảy ra nhầm lẫn, thiếu s&oacute;t.</p>\r\n\r\n<h2>Lưu &yacute; với th&iacute; sinh chỉ thi 1-2 m&ocirc;n th&agrave;nh phần</h2>\r\n\r\n<p>Th&iacute; sinh GDTX thi b&agrave;i thi khoa học x&atilde; hội, th&iacute; sinh tự do, được xếp ph&ograve;ng thi ri&ecirc;ng ở một hoặc một số điểm thi do Gi&aacute;m đốc Sở GD&amp;ĐT quyết định.</p>\r\n\r\n<p>Với th&iacute; sinh thi 2 m&ocirc;n thi th&agrave;nh phần li&ecirc;n tiếp (bao gồm cả th&iacute; sinh GDTX thi b&agrave;i thi khoa học x&atilde; hội): Th&iacute; sinh c&oacute; mặt tại ph&ograve;ng thi trước giờ ph&aacute;t đề thi &iacute;t nhất 15 ph&uacute;t để l&agrave;m c&ocirc;ng t&aacute;c chuẩn bị.</p>\r\n\r\n<p>Ngay sau khi hết giờ l&agrave;m b&agrave;i của m&ocirc;n thi th&agrave;nh phần thứ nhất của m&igrave;nh, th&iacute; sinh phải dừng b&uacute;t, c&aacute;n bộ coi thi (CBCT) thu đề thi v&agrave; giấy nh&aacute;p của th&iacute; sinh, sau đ&oacute; CBCT ph&aacute;t đề thi m&ocirc;n thi th&agrave;nh phần tiếp theo v&agrave; giấy nh&aacute;p mới đ&uacute;ng Lịch thi. Khi hết giờ l&agrave;m b&agrave;i m&ocirc;n thi th&agrave;nh phần thứ 2, CBCT thu đề thi v&agrave; giấy nh&aacute;p của th&iacute; sinh (trừ m&ocirc;n thi Sinh học v&agrave; Gi&aacute;o dục c&ocirc;ng d&acirc;n) v&agrave; cho th&iacute; sinh ra về dưới sự hướng dẫn của c&aacute;n bộ gi&aacute;m s&aacute;t.</p>\r\n\r\n<p>Với th&iacute; sinh thi 2 m&ocirc;n thi th&agrave;nh phần kh&ocirc;ng li&ecirc;n tiếp: C&oacute; mặt tại ph&ograve;ng thi trước giờ ph&aacute;t đề thi &iacute;t nhất 15 ph&uacute;t để l&agrave;m c&ocirc;ng t&aacute;c chuẩn bị.</p>\r\n\r\n<p>Ngay sau khi hết giờ l&agrave;m b&agrave;i của m&ocirc;n thi th&agrave;nh phần thứ nhất, th&iacute; sinh phải dừng b&uacute;t, nộp đề thi, giấy nh&aacute;p cho CBCT.</p>\r\n\r\n<p>Th&iacute; sinh phải ngồi nguy&ecirc;n vị tr&iacute;, giữ trật tự, &uacute;p Phiếu TLTN xuống mặt b&agrave;n v&agrave; bảo quản Phiếu TLTN trong suốt thời gian chờ thi m&ocirc;n th&agrave;nh phần tiếp theo.</p>\r\n\r\n<p>Trường hợp đặc biệt, th&iacute; sinh ra ngo&agrave;i ph&ograve;ng thi phải được ph&eacute;p của CBCT, th&iacute; sinh n&agrave;y phải nộp Phiếu TLTN cho CBCT; th&iacute; sinh ra ngo&agrave;i ph&ograve;ng thi dưới sự hướng dẫn của c&aacute;n bộ gi&aacute;m s&aacute;t.</p>\r\n\r\n<p>Th&iacute; sinh chỉ thi một m&ocirc;n thi th&agrave;nh phần: C&oacute; mặt tại ph&ograve;ng thi trước giờ ph&aacute;t đề thi &iacute;t nhất 15 ph&uacute;t để l&agrave;m c&ocirc;ng t&aacute;c chuẩn bị. Ngay sau khi hết giờ l&agrave;m b&agrave;i, CBCT thu Phiếu TLTN, thu đề thi v&agrave; giấy nh&aacute;p của th&iacute; sinh (trừ c&aacute;c m&ocirc;n thi Sinh học v&agrave; Gi&aacute;o dục c&ocirc;ng d&acirc;n) v&agrave; cho th&iacute; sinh ra về dưới sự hướng dẫn của c&aacute;n bộ gi&aacute;m s&aacute;t.</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>Lập Phương</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Giaoducthoidai.vn</em></p>\r\n', 0, NULL, 1, 1, 0, 16, '2017-10-09 10:58:50', '2017-10-09 10:58:50', 1, 1),
(4, '5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời', '5-dieu-chung-ta-cu-mai-phan-nan-o-tuoi-20-truong-thanh-roi-moi-biet-do-la-nhung-thu-sieu-tuyet-voi', '5 dieu chung ta cu mai phan nan o tuoi 20, truong thanh roi moi biet do la nhung thu sieu tuyet voi', 'Những năm tháng của tuổi 20 là để học làm người, để vững vàng mà chiến đấu cho những điều tốt đẹp bạn mong muốn.', NULL, '/public/uploads/images/tin-tuc/093644_1-1507521557.jpg', 2, '<h2>1. Ở tuổi 20 - bạn bắt đầu tự chi trả cho ch&iacute;nh bản th&acirc;n m&igrave;nh</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/08/shares/093644_1.jpg\" /></p>\r\n\r\n<p>Những năm th&aacute;ng của tuổi 20 bắt đầu từ việc bạn ra trường, kiếm tiền v&agrave; tự nu&ocirc;i sống bản th&acirc;n m&igrave;nh. Để duy tr&igrave; cuộc sống nghe c&oacute; vẻ đơn giản, tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.</p>\r\n\r\n<p>Tiền ăn, tiền chơi, tiền nh&agrave;, tiền điện, tiền nước, tiền điện thoại... Hầu hết ch&uacute;ng ta được bố mẹ &quot;bao đ&atilde;i trọn g&oacute;i&quot;, sống một c&aacute;ch &quot;miễn ph&iacute;&quot; trong gần hai thập kỷ đầu đời. Giờ đ&acirc;y th&igrave; sao? Từng con số trong t&agrave;i khoản ng&acirc;n h&agrave;ng &quot;nhảy m&uacute;a&quot; v&agrave; biến mất trước khi bạn kịp nh&igrave;n thấy ch&uacute;ng.</p>\r\n\r\n<p>Sốc kh&ocirc;ng? C&oacute; chứ, trừ khi bạn c&oacute; một tuổi thơ đầy s&oacute;ng gi&oacute; v&agrave; biết tự lập từ sớm, c&ograve;n kh&ocirc;ng những người trẻ ở tuổi 20 đều c&oacute; những khủng hoảng về tiền bạc.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, chẳng mấy ai n&oacute;i với bạn rằng: ch&uacute;ng ta đem sự &ecirc;m ấm, bao bọc trong v&ograve;ng tay của gia đ&igrave;nh để đổi lấy sự tự chủ. Nếu bạn suy nghĩ theo hướng đ&oacute;, khủng hoảng về tiền bạc ch&iacute;nh l&agrave; c&uacute; h&iacute;ch gi&uacute;p bạn vươn l&ecirc;n v&agrave; cố gắng kiếm tiền, chẳng c&oacute; g&igrave; phải căng thẳng hết.</p>\r\n\r\n<h2>2. Ở tuổi 20 - bạn phải bắt đầu từ những c&ocirc;ng việc nghe đ&atilde; thấy ch&aacute;n</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/08/shares/093703_2.jpg\" /></p>\r\n\r\n<p>H&atilde;y th&uacute; thật với nhau, ở tuổi 20 chẳng ai mang ước mơ b&eacute; nhỏ! Gần như ai cũng nghĩ về một cuộc sống tươi đẹp, được l&agrave;m thứ m&igrave;nh th&iacute;ch, kiếm được nhiều tiền v&acirc;n v&acirc;n v&agrave; m&acirc;y m&acirc;y...</p>\r\n\r\n<p>Thế nhưng, cuộc sống hiện thực lại phũ ph&agrave;ng, kh&ocirc;ng phải ai cũng c&oacute; cuộc sống m&agrave;u hồng sau Đại học, phải l&agrave;m những c&ocirc;ng việc ch&acirc;n tay vất vả hoặc chẳng được người đời coi trọng, đơn giản v&igrave; bạn chưa c&oacute; kinh nghiệm g&igrave; hết.</p>\r\n\r\n<p>Người tốt nghiệp bằng giỏi vẫn phải đi phục vụ b&agrave;n, chạy Uber, Grab, l&agrave;m nh&acirc;n vi&ecirc;n thị trường tối ng&agrave;y long dong ngo&agrave;i đường mời ch&agrave;o kh&aacute;ch, bị ăn chửi tơi bời rồi trở về với khu&ocirc;n mặt lấm lem bụi đường.</p>\r\n\r\n<p>Tuổi 20 v&agrave; những c&ocirc;ng việc m&agrave; ch&uacute;ng ta coi l&agrave; tồi tệ, vất vả, thu nhập b&egrave;o bọt.</p>\r\n\r\n<p>C&oacute; l&atilde;ng ph&iacute; thời gian kh&ocirc;ng? Kh&ocirc;ng hề, bạn c&oacute; nhớ c&acirc;u chuyện về một cậu b&eacute; tới rạp xiếc v&agrave; muốn học ảo thuật kh&ocirc;ng? Việc đầu ti&ecirc;n m&agrave; cậu ta phải l&agrave;m l&agrave; đi qu&eacute;t dọn ph&acirc;n ngựa. Cuộc đời vẫn vậy, muốn l&ecirc;n cao phải leo từng bậc, nhảy c&oacute;c chỉ dễ ng&atilde; đau th&ocirc;i.</p>\r\n\r\n<p>Trước khi c&oacute; được cuộc sống v&agrave; c&ocirc;ng việc bạn mong muốn, h&atilde;y suy nghĩ thực tế một ch&uacute;t. Đừng qu&aacute; để &yacute; đến những tấm gương l&agrave;m gi&agrave;u ở tuổi 20, đ&oacute; l&agrave; con số rất rất nhỏ nhoi trong x&atilde; hội n&agrave;y.</p>\r\n\r\n<p>Những năm th&aacute;ng của tuổi 20 l&agrave; để học l&agrave;m người, c&oacute; vững v&agrave;ng đ&atilde; rồi những thứ tốt đẹp sẽ đến với bạn.</p>\r\n\r\n<h2>3. Ở tuổi 20 - chuyện t&igrave;nh cảm l&agrave;m ch&uacute;ng ta đau đầu!</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/08/shares/093735_3.jpg\" /></p>\r\n\r\n<p>Những năm đầu tuổi 20, t&igrave;nh cảm m&atilde;nh liệt nhất v&agrave; cũng s&acirc;u sắc nhất. Hẹn h&ograve;, t&aacute;n tỉnh c&ocirc; g&aacute;i trong mộng thất bại hoặc c&oacute; chăng y&ecirc;u nhau nhưng mỗi người một thế giới, lại tranh c&atilde;i suốt ng&agrave;y.</p>\r\n\r\n<p>Khi bạn 20, bạn th&iacute;ch sự n&aacute;o nhiệt, bạn chỉ muốn t&igrave;m được một đối tượng khiến cho bạn cảm thấy th&uacute; vị v&agrave; hấp dẫn. Với bạn, gặp được một người như vậy c&oacute; khi c&ograve;n quan trọng hơn l&agrave; t&igrave;m ra đối tượng ph&ugrave; hợp.</p>\r\n\r\n<p>Để tới khi 30 tuổi, c&oacute; thể bạn sẽ bật cười khi nghĩ về con người ng&ocirc; ngh&ecirc; ng&agrave;y đ&oacute;. L&uacute;c n&agrave;y, t&igrave;m một người c&ugrave;ng chung ch&iacute; hướng, c&oacute; thể hiểu v&agrave; th&ocirc;ng cảm cho nhau mới l&agrave; ti&ecirc;u ch&iacute; quan trọng nhất.</p>\r\n\r\n<p>Kh&ocirc;ng c&oacute; những &quot;đau đầu&quot; của tuổi 20, bạn sẽ trưởng th&agrave;nh về mặt t&igrave;nh cảm thế n&agrave;o được ở tuổi 30?</p>\r\n\r\n<h2>4. Ở tuổi 20 - bạn b&egrave; rơi rụng dần</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/08/shares/093811_4.jpg\" /></p>\r\n\r\n<p>H&atilde;y lấy bức ảnh tốt nghiệp cấp ba hoặc Đại học ra, ngẫm xem tới giờ bạn c&ograve;n qua lại với bao nhi&ecirc;u người?</p>\r\n\r\n<p>C&oacute; một sự thật m&agrave; ai cũng phải chấp nhận: c&agrave;ng trưởng th&agrave;nh, c&agrave;ng &iacute;t bạn.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; một điều hiển nhi&ecirc;n nhưng n&oacute; cũng l&agrave; l&yacute; do lớn nhất g&acirc;y ra c&aacute;i chết của một t&igrave;nh bạn v&agrave;o những năm 20 của cuộc đời. Ở độ tuổi n&agrave;y, bạn biết kh&ocirc;ng, bạn thực sự chưa biết r&otilde; về ch&iacute;nh bản th&acirc;n m&igrave;nh. Bạn m&ugrave; mờ v&agrave;o việc m&igrave;nh l&agrave; ai, m&igrave;nh muốn trở th&agrave;nh người như thế n&agrave;o v&agrave; bạn cứ v&ocirc; thức hướng về những người khiến bạn thấy c&oacute; &yacute; nghĩa nhất v&agrave;o l&uacute;c đ&oacute;. Sau một thời gian, bạn nắm được quyền kiểm so&aacute;t mạnh mẽ hơn v&agrave;o bản th&acirc;n m&igrave;nh v&agrave; x&aacute;c định được những người m&igrave;nh muốn ở b&ecirc;n. V&igrave; lẽ đ&oacute;, bạn bắt đầu cựa m&igrave;nh thay đổi. Bạn loại bỏ những người kh&ocirc;ng c&ograve;n ph&ugrave; hợp với m&igrave;nh.</p>\r\n\r\n<p>Đ&acirc;y c&oacute; lẽ l&agrave; l&yacute; do kh&oacute; khăn nhất khi n&oacute;i về việc kết th&uacute;c một t&igrave;nh bạn bởi thực sự&hellip; n&oacute; chẳng phải l&agrave; lỗi của ai cả. Bạn v&agrave; những người bạn đ&oacute; đơn thuần chỉ l&agrave; lớn l&ecirc;n v&agrave; trở th&agrave;nh những người kh&aacute;c.</p>\r\n\r\n<p>Đ&uacute;ng, điều n&agrave;y kh&ocirc;ng c&oacute; g&igrave; xấu, những ai c&ograve;n b&ecirc;n cạnh ch&iacute;nh l&agrave; những người ph&ugrave; hợp cho cuộc sống hiện tại của bạn, &quot;chất lượng lu&ocirc;n tốt hơn số lượng&quot;.</p>\r\n\r\n<h2>5. Ở tuổi 20 - hy vọng nhiều, thất vọng lại c&agrave;ng nhiều</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/08/shares/093828_5.png\" /></p>\r\n\r\n<p>Cuộc sống kh&ocirc;ng tồn tại m&agrave;u hồng, m&agrave; chỉ c&oacute; trắng đen v&agrave; x&aacute;m. Hy vọng c&agrave;ng nhiều, thất vọng c&agrave;ng nhiều hơn. Hoặc nếu đạt được điều m&igrave;nh hi vọng th&igrave; niềm vui bị giảm đi rất nhiều lần v&igrave; đ&atilde; &quot;đo&aacute;n trước được&quot;.</p>\r\n\r\n<p>Hy vọng l&agrave; c&aacute;ch n&oacute;i b&oacute;ng bẩy của &quot;đo&aacute;n m&ograve;&quot;, &quot;50/50&quot;, &quot;m&ecirc; t&iacute;n&quot; v&agrave; thiếu thực tế. Những người c&oacute; suy nghĩ ch&iacute;n chắn v&agrave; thực tiễn sẽ chỉ quan t&acirc;m đến kết quả, với &iacute;t hi vọng nhất c&oacute; thể để tr&aacute;nh bị mất tinh thần v&agrave; tiếp tục tiến l&ecirc;n sau mỗi lần thất bại.</p>\r\n\r\n<p>Khi đối mặt với thất bại th&igrave; những lời hứa h&atilde;o, sự hi vọng sẽ như c&aacute;i c&ugrave;m sắt, biến ch&iacute;nh m&igrave;nh th&agrave;nh thằng thất hứa trong việc sống k tới với hy vọng m&agrave; m&igrave;nh gieo v&agrave;o người kh&aacute;c. V&agrave; đương nhi&ecirc;n sẽ l&agrave;m ch&iacute;nh m&igrave;nh ch&ugrave;n ch&acirc;n đi một &iacute;t sau mỗi lần thất bại v&agrave; kết quả l&agrave; mất tinh thần, mất niềm tin v&agrave;o ch&iacute;nh những lựa chọn của m&igrave;nh (chịu qu&aacute; nhiều thất vọng bởi ch&iacute;nh h&agrave;nh động của m&igrave;nh.)</p>\r\n\r\n<p>Thế n&ecirc;n, những nỗi thất vọng tr&agrave;n trề của tuổi 20 l&agrave; một trong những yếu tố gi&uacute;p ch&uacute;ng ta trưởng th&agrave;nh.</p>\r\n\r\n<p>Bạn thường tắm l&acirc;u tắm kỹ nhưng lại bỏ qu&ecirc;n những bộ phận c&agrave;ng kỳ cọ th&igrave; c&agrave;ng c&oacute; lợi cho sức khỏe</p>\r\n\r\n<p><strong><em>Theo Long.J/ Thời Đại/ Cafebiz.vn</em></strong></p>\r\n', 0, NULL, 1, 1, 0, 17, '2017-10-09 11:00:00', '2017-10-09 11:00:00', 1, 1),
(5, 'Nhiều trường thêm tổ hợp mới trong xét tuyển', 'nhieu-truong-them-to-hop-moi-trong-xet-tuyen', 'Nhieu truong them to hop moi trong xet tuyen', 'Năm nay, nhiều trường đại học dự kiến có thêm các tổ hợp mới với sự góp mặt của bài thi Khoa học tự nhiên và Khoa học xã hội.', NULL, '/public/uploads/images/tin-tuc/083538_gd4-1507521650.jpg', 1, '<p>TS L&ecirc; Ch&iacute; Th&ocirc;ng - Trưởng ph&ograve;ng Đ&agrave;o tạo Đại học B&aacute;ch khoa TP.HCM - cho biết năm 2017, trường sẽ x&eacute;t tuyển thẳng theo quy chế tuyển sinh của Bộ GD&amp;ĐT; ưu ti&ecirc;n x&eacute;t tuyển học sinh c&aacute;c trường THPT chuy&ecirc;n, năng khiếu tr&ecirc;n to&agrave;n quốc (theo phương &aacute;n tuyển sinh của ĐHQG TP.HCM); x&eacute;t tuyển theo kết quả thi THPT quốc gia 2017 v&agrave; x&eacute;t tuyển theo kết quả kỳ thi đ&aacute;nh gi&aacute; năng lực của ĐHQG TP.HCM</p>\r\n\r\n<p>Trong c&aacute;c phương thức x&eacute;t tuyển kể tr&ecirc;n, phương thức x&eacute;t tuyển theo kết quả thi THPT quốc gia 2017 chiếm khoảng 80% chỉ ti&ecirc;u.</p>\r\n\r\n<p>&ldquo;Sẽ c&oacute; tổ hợp K00 b&agrave;i thi Khoa học tự nhi&ecirc;n v&agrave; K01 b&agrave;i thi Khoa học x&atilde; hội v&agrave;o x&eacute;t tuyển, trong đ&oacute; hầu hết ng&agrave;nh đều x&eacute;t tuyển tổ hợp m&ocirc;n K00&rdquo;, PGS. TS Đỗ Văn Dũng - Hiệu trưởng Đại học Sư phạm Kỹ thuật TP.HCM - chia sẻ.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Nhiều trường thêm tổ hợp mới trong xét tuyển\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/01/13/shares/083538_gd4.jpg\" /></p>\r\n\r\n<h3><em>Năm nay, nhiều trường đại học dự kiến sẽ c&oacute; th&ecirc;m c&aacute;c tổ hợp mới với sự g&oacute;p mặt của b&agrave;i thi Khoa học tự nhi&ecirc;n v&agrave; Khoa học x&atilde; hội. Ảnh minh họa.</em></h3>\r\n\r\n<p>Trong khi đ&oacute;, Đại học C&ocirc;ng nghiệp Thực phẩm TP.HCM b&ecirc;n cạnh c&aacute;c tổ hợp x&eacute;t tuyển truyền thống, năm nay, trường c&oacute; th&ecirc;m tổ hợp x&eacute;t tuyển tự nhi&ecirc;n gồm To&aacute;n, Văn v&agrave; Khoa học Tự nhi&ecirc;n.</p>\r\n\r\n<p>Tương tự, Đại học Khoa học Tự nhi&ecirc;n năm nay cũng đưa th&ecirc;m b&agrave;i thi Khoa học Tự nhi&ecirc;n v&agrave;o x&eacute;t tuyển như C&ocirc;ng nghệ Sinh học, Khoa học Vật liệu, To&aacute;n học với tổ hợp To&aacute;n - Tiếng Anh - Khoa học Tự nhi&ecirc;n&hellip;</p>\r\n\r\n<p>Đại học Văn Hiến cũng dự kiến đưa th&ecirc;m nhiều tổ hợp với sự c&oacute; mặt của b&agrave;i thi Khoa học Tự nhi&ecirc;n v&agrave; Khoa học X&atilde; hội trong x&eacute;t tuyển để ph&ugrave; hợp với ng&agrave;nh học cũng như mở rộng đối tượng x&eacute;t tuyển.</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>Nguyễn Dũng</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Tienphong.vn</em></p>\r\n', 1, NULL, 1, 1, 0, 18, '2017-10-09 11:01:10', '2017-10-10 13:21:44', 1, 1),
(6, '7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama', '7-bi-quyet-de-doc-duoc-nhieu-sach-nhu-bill-gates-elon-musk-hay-obama', '7 bi quyet de doc duoc nhieu sach nhu Bill Gates, Elon Musk hay Obama', 'Bố trí được khoảng thời gian đọc sách nhiều là điều rất khó với đại đa số chúng ta, thế nhưng chỉ với một vài phương pháp đơn giản ta có thể tối ưu hoá thời gian đọc, đọc được nhiều sách hơn như Bill Gates hay những người siêu thành công khác.', NULL, '/public/uploads/images/tin-tuc/thumb00_085701186119988-1507521708.jpg', 2, '<p>Lợi &iacute;ch của việc đọc s&aacute;ch đ&atilde; qu&aacute; r&otilde; r&agrave;ng kh&ocirc;ng cần phải b&agrave;n c&atilde;i. Nhưng đọc s&aacute;ch rất tốn thời gian v&agrave; với những người c&oacute; c&ocirc;ng việc bận rộn, gần như kh&ocirc;ng thể vừa c&oacute; thời gian đọc s&aacute;ch vừa tập trung giải quyết khối lượng c&ocirc;ng việc lớn ngập đầu.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/04/26/shares/085255_1.jpg\" /></p>\r\n\r\n<p>May mắn thay, những chuy&ecirc;n gia gi&aacute;m s&aacute;t kinh doanh ở Đại học Harvard (HBR) đ&atilde; gi&uacute;p ch&uacute;ng ta kh&aacute;m ph&aacute; ra một số mẹo nhỏ để đảm bảo rằng bạn sẽ c&oacute; thể h&igrave;nh th&agrave;nh th&oacute;i quen đọc s&aacute;ch h&agrave;ng ng&agrave;y v&agrave; tăng số lượng s&aacute;ch m&agrave; bạn đọc.</p>\r\n\r\n<h2>1. Biết từ bỏ những cuốn s&aacute;ch &ldquo;v&ocirc; nghĩa&rdquo;</h2>\r\n\r\n<p>Hầu hết mọi người đều cố gắng ho&agrave;n th&agrave;nh một quyển s&aacute;ch ngay cả khi n&oacute; chẳng mang lại &yacute; nghĩa g&igrave; đặc biệt, thậm ch&iacute; l&agrave; n&oacute; rất ch&aacute;n. Bởi v&igrave; kh&ocirc;ng ai muốn l&agrave;m một &ldquo;kẻ bỏ cuộc&rdquo;.</p>\r\n\r\n<p>Gretchen Rubin, t&aacute;c giả của cuốn s&aacute;ch b&aacute;n chạy The Happiness Project v&agrave; l&agrave; chuy&ecirc;n gia nghi&ecirc;n cứu th&oacute;i quen ở Đại học Harvard đ&atilde; ph&aacute;t hiện ra rằng &ldquo;người th&agrave;nh c&ocirc;ng kh&ocirc;ng bao giờ bỏ cuộc&rdquo; kh&ocirc;ng được &aacute;p dụng với th&oacute;i quen đọc s&aacute;ch.</p>\r\n\r\n<p>Rubin cho biết, bỏ đọc những cuốn s&aacute;ch tồi c&agrave;ng sớm th&igrave; bạn &ldquo;c&agrave;ng c&oacute; nhiều thời gian để đọc những cuốn s&aacute;ch kh&aacute;c tuyệt vời hơn&rdquo; v&agrave; khiến việc đọc s&aacute;ch kh&ocirc;ng trở th&agrave;nh một điều bắt buộc. Mỗi năm c&oacute; hơn 50.000 đầu s&aacute;ch được xuất bản. Tại sao phải ph&iacute; phạm thời gian đọc những cuốn s&aacute;ch m&agrave; bạn kh&ocirc;ng th&iacute;ch?</p>\r\n\r\n<p>H&atilde;y bỏ qua mặc cảm tội lỗi v&agrave; đặt n&oacute; xuống. Bạn sẽ tiết kiệm được thời gian v&agrave; đầu tư n&oacute; đ&uacute;ng l&uacute;c đ&uacute;ng chỗ hơn.</p>\r\n\r\n<h2>2. Tận dụng những giờ ph&uacute;t rảnh rỗi ở bất cứ nơi n&agrave;o</h2>\r\n\r\n<p>Stephen King n&oacute;i rằng việc đọc s&aacute;ch đ&atilde; đ&oacute;ng g&oacute;p phần lớn v&agrave;o sự nghiệp văn chương của &ocirc;ng v&agrave; nếu ai muốn theo bước &ocirc;ng trong sự nghiệp viết l&aacute;ch th&igrave; n&ecirc;n đọc &iacute;t nhất 5 tiếng một ng&agrave;y.</p>\r\n\r\n<p>Với những người bận rộn th&igrave; họ thấy tuy&ecirc;n bố đ&oacute; thật v&ocirc; l&iacute;. Cho đến khi HBR thường xuy&ecirc;n ghi lại được việc Stephen King đọc khi ra khỏi nh&agrave;. Thậm ch&iacute; c&ograve;n c&oacute; cả những bức ảnh chụp lại &ocirc;ng đang đọc tại một trận đấu b&oacute;ng ch&agrave;y của đội Red Sox.</p>\r\n\r\n<p><img alt=\"7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/04/26/shares/085314_2.jpg\" /></p>\r\n\r\n<p>Với những người đi đường, việc r&uacute;t một cuốn s&aacute;ch ra để đọc tại c&ocirc;ng vi&ecirc;n l&agrave; một điều k&igrave; lạ. Nhưng nếu họ biết rằng th&oacute;i quen đ&oacute; đ&atilde; gi&uacute;p Stephen King b&aacute;n được 350 triệu đầu s&aacute;ch th&igrave; chắc chắn họ sẽ mang theo một cuốn s&aacute;ch v&agrave;o lần sau.</p>\r\n\r\n<p>Như Parisha đ&atilde; n&oacute;i, &ldquo;C&oacute; những khoảng thời gian &ldquo;chết&rdquo; mỗi ng&agrave;y, v&agrave; n&oacute; gi&uacute;p ch&uacute;ng ta c&oacute; th&ecirc;m rất nhiều ph&uacute;t để đọc&rdquo;. Điều đ&oacute; kh&ocirc;ng c&oacute; nghĩa l&agrave; bạn phải mang theo một quyển s&aacute;ch để đọc trong đ&aacute;m cưới của người bạn th&acirc;n, nhưng c&oacute; rất nhiều cơ hội để bạn c&oacute; thể đọc gần như ở bất cứ nơi đ&acirc;u nếu bạn muốn&rdquo;</p>\r\n\r\n<h2>3. Giữ b&iacute; mật</h2>\r\n\r\n<p>Khoa học đ&atilde; chứng minh rằng việc chia sẻ &yacute; định của bạn với những người kh&aacute;c khi bạn đang thực hiện nhiệm vụ hay mục ti&ecirc;u c&oacute; thể khiến điều đ&oacute; phản t&aacute;c dụng v&agrave; l&agrave;m bạn &iacute;t c&oacute; cơ hội th&agrave;nh c&ocirc;ng hơn.</p>\r\n\r\n<p>Một nghi&ecirc;n cứu v&agrave;o năm 2009 đ&atilde; chứng minh rằng: khi c&aacute;c sinh vi&ecirc;n muốn trở th&agrave;nh nh&agrave; tư vấn t&acirc;m l&iacute;, nếu họ viết ra những hoạt động c&oacute; thể gi&uacute;p họ ho&agrave;n th&agrave;nh mục ti&ecirc;u v&agrave; chia sẻ với những người l&agrave;m th&iacute; nghiệm th&igrave; họ gần như kh&ocirc;ng thực hiện những hoạt động đ&oacute;. Ngược lại, nh&oacute;m kh&ocirc;ng chia sẻ danh s&aacute;ch những c&ocirc;ng việc cần thực hiện th&igrave; họ đ&atilde; d&agrave;nh nhiều thời gian hơn để theo đuổi mục ti&ecirc;u.</p>\r\n\r\n<p>Khi mọi người chia sẻ mục ti&ecirc;u của m&igrave;nh, họ cảm thấy c&oacute; &iacute;t động lực để l&agrave;m việc cật lực. N&ecirc;n nếu bạn c&oacute; &yacute; định đọc nhiều s&aacute;ch hơn, h&atilde;y viết ra một danh s&aacute;ch - nhưng h&atilde;y giữ n&oacute; cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<h2>4. Tr&aacute;nh xa những thứ g&acirc;y xao nh&atilde;ng</h2>\r\n\r\n<p>Neil Pasricha l&agrave;m điều n&agrave;y ở nh&agrave; ri&ecirc;ng bằng c&aacute;ch giấu Tivi xuống tầng hầm v&agrave; đặt gi&aacute; s&aacute;ch ở ph&ograve;ng kh&aacute;c. Theo HBR, Pasricha đ&atilde; được truyền cảm hứng bởi th&iacute; nghiệm nổi tiếng &ldquo;b&aacute;nh quy s&ocirc;-c&ocirc;-la v&agrave; củ cải&rdquo; của nh&agrave; nghi&ecirc;n cứu t&acirc;m l&iacute; Roy Baumeister.</p>\r\n\r\n<p>Những đối tượng l&agrave;m th&iacute; nghiệm bị bỏ đ&oacute;i được y&ecirc;u cầu ho&agrave;n th&agrave;nh một tr&ograve; chơi giải đố kh&oacute;. Một số người kh&ocirc;ng được đưa đồ ăn trong khi những người c&ograve;n lại được cho b&aacute;nh quy với điều kiện họ kh&ocirc;ng được ph&eacute;p ăn.</p>\r\n\r\n<p>Kh&ocirc;ng c&oacute; g&igrave; bất ngờ khi nh&oacute;m c&oacute; b&aacute;nh quy l&agrave; nh&oacute;m giải chậm nhất v&igrave; họ đ&atilde; d&agrave;nh to&agrave;n bộ &yacute; ch&iacute; để tho&aacute;t khỏi sự c&aacute;m dỗ khỏi những chiếc b&aacute;nh.</p>\r\n\r\n<h2>5. Đọc s&aacute;ch giấy</h2>\r\n\r\n<p>Lời khuy&ecirc;n về việc tr&aacute;nh xa những thứ l&agrave;m bạn mất tập trung cũng c&oacute; thể &aacute;p dụng để lựa chọn s&aacute;ch giấy thay cho những thiết bị điện tử. C&oacute; một cuốn s&aacute;ch hữu h&igrave;nh ở trong tay thay v&igrave; một thiết bị c&oacute; thể kết nối internet m&agrave; bạn d&ugrave;ng để check mail hay xem ảnh tr&ecirc;n Pinterest - điều n&agrave;y c&oacute; thể hạn chế việc mất tập trung v&agrave; gi&uacute;p bạn c&oacute; th&ecirc;m sức mạnh &yacute; ch&iacute; để đọc s&aacute;ch.</p>\r\n\r\n<p><img alt=\"7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/04/26/shares/085334_3.jpg\" /></p>\r\n\r\n<p>Nhưng giới hạn những thứ g&acirc;y ph&acirc;n t&acirc;m chỉ l&agrave; một trong những l&iacute; do để lựa chọn s&aacute;ch giấy thay v&igrave; e-book. Trong thời đại m&agrave; c&aacute;c k&ecirc;nh giải tr&iacute; v&agrave; truyền th&ocirc;ng được đưa l&ecirc;n m&agrave;n h&igrave;nh, một cuốn s&aacute;ch thật tr&ecirc;n tay c&oacute; thể tạo cho bạn cảm gi&aacute;c th&iacute;ch th&uacute;, gi&uacute;p giảm stress v&agrave; căng thẳng.</p>\r\n\r\n<h2>6. Thay đổi tư duy</h2>\r\n\r\n<p>Ryan Holiday - một chiến lược gia truyền th&ocirc;ng nhấn mạnh rằng thay đổi tư duy về việc đọc s&aacute;ch l&agrave; ch&igrave;a kh&oacute;a để đọc được nhiều hơn. &ldquo;Bạn phải dừng việc nghĩ rằng đọc s&aacute;ch l&agrave; một việc m&agrave; bạn phải l&agrave;m. H&atilde;y để n&oacute; trở th&agrave;nh một thứ tự nhi&ecirc;n như việc ăn hay việc thở của bạn. N&oacute; kh&ocirc;ng phải việc bạn l&agrave;m v&igrave; bạn th&iacute;ch, m&agrave; h&atilde;y biến n&oacute; th&agrave;nh phản xạ hay bản năng&rdquo;.</p>\r\n\r\n<p>Bạn sẽ kh&ocirc;ng bao giờ ho&agrave;n th&agrave;nh được c&ocirc;ng việc nếu như chỉ ngồi đ&oacute; v&agrave; suy t&iacute;nh l&agrave;m thế n&agrave;o để đạt được mục ti&ecirc;u m&agrave; chẳng bắt tay v&agrave;o thực hiện. H&atilde;y bắt đầu thay đổi th&oacute;i quen đọc s&aacute;ch bằng những h&agrave;nh động cụ thể, c&oacute; thời gian r&otilde; r&agrave;ng v&agrave; đặt n&oacute; l&ecirc;n ưu ti&ecirc;n h&agrave;ng đầu mỗi ng&agrave;y.</p>\r\n\r\n<h2>7. T&igrave;m một danh s&aacute;ch c&aacute;c đầu s&aacute;ch c&oacute; sẵn</h2>\r\n\r\n<p>Việc mệt mỏi v&igrave; phải lựa chọn v&agrave; ra quyết định l&agrave; vấn đề rất nhiều người gặp phải trước khi h&igrave;nh th&agrave;nh được th&oacute;i quen. Ch&uacute;ng ta c&oacute; thể thấy qua việc Steve Jobs hay Mark Zuckerberg lu&ocirc;n mặc một bộ đồ khi đi l&agrave;m hay ngay cả khi xuất hiện trước truyền th&ocirc;ng. Chọn ra đầu s&aacute;ch để đọc th&ocirc;i cũng c&oacute; thể hủy diệt &yacute; ch&iacute; của bạn khi bạn thậm ch&iacute; c&ograve;n chưa bắt đầu.</p>\r\n\r\n<p>Những nỗ lực vượt bậc để chuyển từ quyết t&acirc;m đọc h&agrave;ng ngh&igrave;n quyển s&aacute;ch mới mỗi năm c&oacute; thể cắn x&eacute; tinh thần bạn trước khi bạn thực sự c&oacute; thể đọc được một trang s&aacute;ch - v&agrave; đ&oacute; l&agrave; l&iacute; do tại sao HBR khuy&ecirc;n bạn n&ecirc;n t&igrave;m ra một danh s&aacute;ch được soạn sẵn.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/04/26/shares/085351_4.jpg\" /></p>\r\n\r\n<p>C&oacute; thể ch&uacute;ng ta kh&ocirc;ng t&agrave;i n&agrave;o đọc được 500 trang một ng&agrave;y như Warren Buffet hay ho&agrave;n th&agrave;nh 50 cuốn s&aacute;ch một năm như Bill Gates. Nhưng bạn ho&agrave;n to&agrave;n c&oacute; thể sử dụng những mẹo nhỏ n&agrave;y để đọc được th&ecirc;m nhiều s&aacute;ch trong năm nay, tăng khả năng tiếp nhận v&agrave; ti&ecirc;u h&oacute;a th&ocirc;ng tin, đạt được nhiều lợi &iacute;ch đ&atilde; được khoa học chứng minh m&agrave; việc đọc s&aacute;ch mang lại.</p>\r\n\r\n<p style=\"text-align: right;\">Theo Tru&ecirc; Spiderum/Tr&iacute; thức trẻ/Cafebiz.vn</p>\r\n', 1, NULL, 1, 1, 0, 19, '2017-10-09 11:02:30', '2017-10-10 13:21:38', 1, 1),
(7, 'Là tân sinh viên, đừng quên những điều này!', 'la-tan-sinh-vien-dung-quen-nhung-dieu-nay', 'La tan sinh vien, dung quen nhung dieu nay!', 'Là tân sinh viên nghĩa là mọi thứ đều bắt đầu mới, là nơi mà tuổi trẻ của bạn được chứng thực và cũng là điểm xuất phát cho những ước mơ, hoài bão.', NULL, '/public/uploads/images/tin-tuc/thumb00_051445578968397-1507521768.jpg', 2, '<h2>Đừng sợ h&atilde;i, h&atilde;y lu&ocirc;n hết m&igrave;nh!</h2>\r\n\r\n<p>Mỗi m&ugrave;a khai giảng, t&acirc;n sinh vi&ecirc;n lại đứng giữa v&ocirc; v&agrave;n lời cảnh b&aacute;o từ c&aacute;c nguồn tin, mạng x&atilde; hội. Ch&iacute;nh những th&ocirc;ng tin ti&ecirc;u cực đ&atilde; t&aacute;c động đến h&agrave;nh động của nhiều bạn, trong đ&oacute;, c&aacute;ch m&agrave; đa số c&aacute;c bạn lựa chọn để đối ph&oacute; l&agrave;: Hạn chế tiếp x&uacute;c.</p>\r\n\r\n<p><img alt=\"Là tân sinh viên, đừng quên những điều này!\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2016/09/07/shares/170656_1.jpg\" /></p>\r\n\r\n<h3><em>Cứ vui đi v&igrave; cuộc đời cho ph&eacute;p!</em></h3>\r\n\r\n<p>Tuy nhi&ecirc;n, thay v&igrave; đặt những c&acirc;u nghi vấn trước những vấn đề tại sao bạn kh&ocirc;ng chấp nhận giải quyết ch&uacute;ng theo c&aacute;ch m&agrave; trước đ&acirc;y bạn đ&atilde; từng. Đừng l&agrave;m m&igrave;nh gi&agrave; đi v&igrave; những lo sợ, h&atilde;y lu&ocirc;n hết m&igrave;nh với mọi thứ. Đơn giản l&agrave; cuộc sống vẫn c&ograve;n nhiều điều tốt đẹp v&agrave; những người tử tế, cứ sống hết m&igrave;nh rồi bạn sẽ nhận được niềm vui.</p>\r\n\r\n<h2>B&acirc;y giờ l&agrave; sai lầm, sau n&agrave;y sẽ l&agrave; kỉ niệm</h2>\r\n\r\n<p>Đừng sợ sai lầm bởi v&igrave; mọi thứ chỉ c&oacute; &yacute; nghĩa tương đối ở thời điểm m&agrave; ch&uacute;ng diễn ra. C&oacute; thể, ở khoảnh khắc đ&oacute; bạn cảm thấy &acirc;n hận v&igrave; đ&atilde; đi v&agrave;o con đường sai lệch hay bị cắn rứt bởi những vi phạm m&agrave; bất cứ ai trong đời sinh vi&ecirc;n cũng từng c&oacute; (đi học muộn, ngủ gật tr&ecirc;n lớp...) nhưng biết đ&acirc;u, sau n&agrave;y bạn lại cười tủm tỉm khi nghĩ về.</p>\r\n\r\n<p><img alt=\"Là tân sinh viên, đừng quên những điều này!\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2016/09/07/shares/170936_2.jpg\" /></p>\r\n\r\n<h3><em>Kh&ocirc;ng c&ograve;n l&agrave; con ếch dưới giếng nữa, giờ l&agrave; thời khắc để bạn &#39;bung lụa&#39;. Nhưng nhớ l&agrave; c&aacute;i g&igrave; qu&aacute; cũng kh&ocirc;ng phải l&agrave; điều tốt!</em></h3>\r\n\r\n<p>L&agrave; t&acirc;n sinh vi&ecirc;n, nghĩa l&agrave; bạn c&oacute; quyền lựa chọn: Thanh ni&ecirc;n nghi&ecirc;m t&uacute;c hay Sinh vi&ecirc;n thực thụ!</p>\r\n\r\n<h2>H&atilde;y kết giao thật nhiều, sau n&agrave;y bạn sẽ kh&ocirc;ng c&ograve;n nhiều cơ hội</h2>\r\n\r\n<p>Nếu chẳng may c&oacute; k&iacute; ức kh&ocirc;ng mấy tốt đẹp thời phổ th&ocirc;ng như... bị tẩy chay. Th&igrave; ng&ocirc;i trường mới sẽ l&agrave; cơ hội cho bạn l&agrave;m lại từ đầu. Những con người mới, những người bạn từ khắp nơi, h&atilde;y chủ động kết giao để c&oacute; th&ecirc;m những mối quan hệ. Đồng thời, c&oacute; những thay đổi bản th&acirc;n theo hướng t&iacute;ch cực để x&oacute;a bỏ c&aacute;i nh&igrave;n ti&ecirc;u cực từ hội bạn cũ.</p>\r\n\r\n<p>L&agrave; t&acirc;n sinh vi&ecirc;n, nghĩa l&agrave; bạn được đứng trước h&agrave;ng ng&agrave;n những lựa chọn, trong đ&oacute; c&oacute;... chọn bạn m&agrave; chơi!</p>\r\n\r\n<h2>Thời gian học tập khoa học, đừng bao giờ l&agrave;m mọt s&aacute;ch</h2>\r\n\r\n<p>C&aacute;c hoạt động ngoại kh&oacute;a, r&egrave;n luyện kĩ năng v&agrave; v&ocirc; v&agrave;n c&oacute; kh&oacute;a học b&ecirc;n lề kh&aacute;c mới ch&iacute;nh l&agrave; điều bạn n&ecirc;n tập trung khi bước v&agrave;o giảng đường Đại học, Cao đẳng. Thay v&igrave; dồn sức cho những nội dung ch&iacute;nh kh&oacute;a th&igrave; giờ đ&acirc;y, đ&atilde; đến l&uacute;c bạn học c&aacute;ch h&ugrave;ng biện trước đ&aacute;m đ&ocirc;ng, học c&aacute;ch viết CV sao cho thật ấn tượng, học c&aacute;ch thể hiện c&aacute; t&iacute;nh v&agrave; ghi điểm với người đối diện...</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Là tân sinh viên, đừng quên những điều này!\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2016/09/07/shares/171122_3.jpg\" /></p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Là tân sinh viên, đừng quên những điều này!\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2016/09/07/shares/171140_4.jpg\" /></p>\r\n\r\n<p>Thực tế, đa số c&aacute;c nh&agrave; tuyển dụng cần người biết l&agrave;m hơn l&agrave; người học giỏi, t&acirc;n sinh vi&ecirc;n nhớ nh&eacute;!</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>T&agrave;i Teen</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Baodatviet.vn</em></p>\r\n', 1, NULL, 1, 1, 0, 20, '2017-10-09 11:03:14', '2017-10-10 13:21:33', 1, 1);
INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `youtube_id`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `type`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(8, 'Thi THPT quốc gia 2019 Đề thi không phục vụ mục tiêu kỳ thi “2 trong 1”', 'thi-thpt-quoc-gia-2019-de-thi-khong-phuc-vu-muc-tieu-ky-thi-2-trong-1', 'Thi THPT quoc gia 2019 De thi khong phuc vu muc tieu ky thi “2 trong 1”', 'Bộ trưởng Bộ GD&ĐT Phùng Xuân Nhạ cho biết, năm tới, đề thi không phục vụ mục tiêu kì thi \"2 trong 1\" mà phục vụ đánh giá thực chất chất lượng dạy và học THPT. Trên cơ sở đó, các trường ĐH,CĐ sử dụng điểm xét tuyển thí sinh vào trường.', NULL, '/public/uploads/images/img_6335-1537520631.JPG', 1, '<h2><strong><span style=\"font-size:18px;\"><em>Bộ trưởng Bộ GD&amp;ĐT Ph&ugrave;ng Xu&acirc;n Nhạ cho biết, năm tới, đề thi kh&ocirc;ng phục vụ mục ti&ecirc;u k&igrave; thi &quot;2 trong 1&quot; m&agrave; phục vụ đ&aacute;nh gi&aacute; thực chất chất lượng dạy v&agrave; học THPT. Tr&ecirc;n cơ sở đ&oacute;, c&aacute;c trường ĐH,CĐ sử dụng điểm x&eacute;t tuyển th&iacute; sinh v&agrave;o trường.</em></span></strong></h2>\r\n<br />\r\n<br />\r\n<span style=\"font-size:16px;\">Ng&agrave;y 24/9, tại H&agrave; Nội, Ủy ban Văn h&oacute;a, gi&aacute;o dục, thanh ni&ecirc;n, thiếu ni&ecirc;n v&agrave; nhi đồng của Quốc hội đ&atilde; tổ chức phi&ecirc;n giải tr&igrave;nh về thực hiện ch&iacute;nh s&aacute;ch, ph&aacute;p luật trong tuyển dụng, sử dụng đội ngũ gi&aacute;o vi&ecirc;n v&agrave; tổ chức kỳ thi THPT quốc gia.</span>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://vhvschool.online/\" /><img alt=\"\" src=\"/public/uploads/images/thi-sinh-15378267326911162486947-1537844017.jpg\" style=\"border-width: 3px; border-style: solid; margin: 12px; float: left; width: 600px; height: 400px;\" /></div>\r\n\r\n<p style=\"text-align: center;\"><br />\r\n<br />\r\n<br />\r\n<em><span style=\"font-size:14px;\">Chủ trương tổ chức kỳ thi THPT quốc gia với 2 mục ti&ecirc;u vẫn chưa được khẳng định, g&acirc;y kh&oacute; khăn cho kh&acirc;u x&acirc;y dựng đề thi chuẩn h&oacute;a, trực tiếp ảnh hưởng tới chất lượng kỳ thi.</span></em></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>Kh&oacute; bi&ecirc;n soạn đề thi với mục ti&ecirc;u &quot;2 trong 1&quot;</strong></span></p>\r\n\r\n<p>B&aacute;o c&aacute;o kết quả khảo s&aacute;t về kỳ thi THPT quốc gia năm 2018 của Ủy ban Văn h&oacute;a, gi&aacute;o dục, thanh ni&ecirc;n, thiếu ni&ecirc;n v&agrave; nhi đồng của Quốc hội khẳng định: so với c&aacute;ch thức tổ chức thi trước đ&acirc;y, Kỳ thi THPT quốc gia 2018 đ&atilde; tạo được kh&aacute; nhiều thuận lợi cho người thi v&agrave; gia đ&igrave;nh. Đề thi đ&oacute;ng vai tr&ograve; hết sức quan trọng, đặc biệt kỳ thi THPT ở quy m&ocirc; to&agrave;n quốc v&agrave; khi kết quả Kỳ thi phục vụ đồng thời hai mục ti&ecirc;u l&agrave; tốt nghiệp v&agrave; x&eacute;t tuyển sinh đại học, cao đẳng.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, Ủy ban VHGD TNTN &amp; NĐ cho rằng, kỳ thi THPT quốc gia đang đặt ra nhiều vấn đề, cần được tiếp tục nghi&ecirc;n cứu v&agrave; chỉnh sửa. Cụ thể:</p>\r\n\r\n<p>Việc gộp 2 kỳ thi (thi THPT v&agrave; tuyển sinh ĐH,CĐ) th&agrave;nh kỳ thi THPT quốc gia l&agrave; một chủ trương lớn, cần tổng kết, luật h&oacute;a để c&oacute; căn cứ ph&aacute;p l&yacute; r&otilde; r&agrave;ng v&igrave; Luật gi&aacute;o dục hiện h&agrave;nh chỉ quy định về kỳ thi THPT để x&eacute;t tốt nghiệp THPT.</p>\r\n\r\n<p>Chủ trương tổ chức kỳ thi THPT quốc gia với 2 mục ti&ecirc;u vẫn chưa được khẳng định, g&acirc;y kh&oacute; khăn cho kh&acirc;u x&acirc;y dựng đề thi chuẩn h&oacute;a, trực tiếp ảnh hưởng tới chất lượng kỳ thi.</p>\r\n\r\n<p>Phương thức thi trắc nghiệm kh&aacute;ch quan c&oacute; nhiều ưu điểm nhưng kh&oacute; đ&aacute;nh gi&aacute; năng lực tư duy suy luận, kh&aacute;i qu&aacute;t v&agrave; s&aacute;ng tạo của học sinh, chứa đựng yếu tố may rủi n&ecirc;n cần nghi&ecirc;n cứu khi &aacute;p dụng với một số m&ocirc;n học, nhất l&agrave; m&ocirc;n to&aacute;n trong điều kiện việc bi&ecirc;n soạn đề chưa đ&aacute;p ứng chuẩn mực chung. Chất lượng đề thi trắc nghiệm kh&aacute;ch quan kh&oacute; đảm bảo, khi ng&acirc;n h&agrave;ng c&acirc;u hỏi đề thi chủ yếu dựa tr&ecirc;n nguồn cung cấp hệ thống đề mẫu từ c&aacute;c địa phương, chưa đảm bảo cả về chất lượng v&agrave; số lượng.</p>\r\n\r\n<p>Đối với m&ocirc;n thi tổ hợp, thực tế chỉ thi 3 m&ocirc;n trong một buổi, chưa l&agrave; c&aacute;c đề thi tổ hợp kiến thức. Điều n&agrave;y tạo &aacute;p lực đối với c&aacute;c th&iacute; sinh, một buổi thi 3 m&ocirc;n, mỗi m&ocirc;n 50 ph&uacute;t v&agrave; chỉ nghỉ 10 ph&uacute;t giữa 2 m&ocirc;n.</p>\r\n\r\n<p>Việc x&aacute;c định 2 mục ti&ecirc;u đồng thời cho kỳ thi THPT QG gồm x&eacute;t tốt nghiệp THPT v&agrave; sử dụng kết quả để x&eacute;t tuyển sinh ĐH, CĐ l&agrave; kh&ocirc;ng dễ khi x&acirc;y dựng đề thi; mặt kh&aacute;c từ y&ecirc;u cầu n&agrave;y, dẫn tới cấu tr&uacute;c đề thi được thiết kế với 60% kiến thức cơ bản v&agrave; 40% kiến thức n&acirc;ng cao, đ&atilde; tạo &aacute;p lực đối với th&iacute; sinh chỉ c&oacute; một mục ti&ecirc;u x&eacute;t thi x&eacute;t tốt nghiệp THPT m&agrave; kh&ocirc;ng c&oacute; nguyện vọng x&eacute;t tuyển ĐH, CĐ kh&oacute; c&oacute; thể đạt điểm thi THPT cao.</p>\r\n\r\n<p>Ủy ban VHGD TNTN &amp; NĐ đề nghị, Bộ GD&amp;ĐT cần nghi&ecirc;n cứu, ho&agrave;n thiện phương thức tổ chức kỳ thi THPT v&agrave; c&ocirc;ng t&aacute;c x&eacute;t tuyển v&agrave;o ĐH,CĐ; c&ocirc;ng bố lộ tr&igrave;nh về đổi mới phương thức thi THPT để x&atilde; hội biết. B&ecirc;n cạnh đ&oacute;, Bộ cần ho&agrave;n chỉnh phương thức thi trắc nghiệm, đảm bảo chất lượng đề thi. Ban h&agrave;nh quy tr&igrave;nh x&acirc;y dựng ng&acirc;n h&agrave;ng c&acirc;u hỏi thi chuẩn h&oacute;a. Nghi&ecirc;n cứu ho&agrave;n thiện c&aacute;c b&agrave;i thi tổ hợp, đảm bảo kiến thức tổng hợp v&agrave; khoa học.</p>\r\n\r\n<p>Đặc biệt, theo quy chế, điểm x&eacute;t tốt nghiệp gồm: cộng điểm trung b&igrave;nh thi THPT QG v&agrave; điểm trung b&igrave;nh cả năm lớp 12, chia 2; c&aacute;ch t&iacute;nh tạo ra nghịch l&yacute;: điểm thi THPTQG thấp, nhưng kết quả tốt nghiệp lại cao. Điều n&agrave;y đang được dư luận đặt ra c&acirc;u hỏi: Điểm học bạ hay điểm thi THPT sẽ phản &aacute;nh đ&uacute;ng chất lượng gi&aacute;o dục phổ th&ocirc;ng?; nếu điểm học bạ đ&oacute;ng vai tr&ograve; quyết định kết quả x&eacute;t tốt nghiệp th&igrave; c&oacute; cần tổ chức kỳ thi THPT? Nếu bỏ kỳ thi THPT sẽ c&oacute; ảnh hưởng ti&ecirc;u cực n&agrave;o tới hoạt động dạy v&agrave; học?<br />\r\n<img alt=\"\" src=\"/public/uploads/images/bo-truong-nha-15378266284341078289696-1537844323.jpg\" style=\"border-width: 1px; border-style: solid; margin: 10px; float: left; width: 640px; height: 425px;\" /></p>\r\n\r\n<p style=\"text-align: center;\">Bộ trưởng Bộ GD&amp;ĐT Ph&ugrave;ng Xu&acirc;n Nhạ</p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>Đề thi sẽ đ&aacute;nh gi&aacute; đ&uacute;ng kết quả học tập THPT</strong></span></p>\r\n\r\n<p>Ph&aacute;t biểu tại phi&ecirc;n giải tr&igrave;nh, Bộ trưởng Bộ GD&amp;ĐT Ph&ugrave;ng Xu&acirc;n Nhạ cho biết, qua sự tham khảo, học hỏi nhiều quốc gia tr&ecirc;n thế giới, Bộ GD&amp;ĐT sẽ c&oacute; nhiều hướng đổi mới đối với k&igrave; thi năm tới. Điều quan trọng kh&ocirc;ng chỉ l&agrave; một k&igrave; thi để c&ocirc;ng nhận x&eacute;t tốt nghiệp, th&ocirc;ng qua k&igrave; thi, ch&uacute;ng ta c&oacute; c&aacute;i nh&igrave;n đ&uacute;ng về nội dung, phương ph&aacute;p chất lượng dạy v&agrave; học ở bậc phổ th&ocirc;ng gi&uacute;p những điều chỉnh ph&ugrave; hợp. Đồng thời sẽ đảm bảo được chất lượng đồng đều tr&ecirc;n phạm vi to&agrave;n quốc.</p>\r\n\r\n<p>Bộ trưởng Nhạ cho hay, kỳ thi tốt nghiệp THPT quốc gia năm vừa qua vẫn đạt kết quả cao, l&iacute; do l&agrave; ch&uacute;ng ta vẫn d&ugrave;ng c&aacute;ch t&iacute;nh điểm cũ kết hợp với x&eacute;t tuyển điểm học bạ. Nhưng sẽ từng bước tiến tới điểm c&ocirc;ng nhận tốt nghiệp đ&aacute;nh gi&aacute; bằng qu&aacute; tr&igrave;nh học tập dựa tr&ecirc;n học bạ. Ch&uacute; trọng hơn trong triển khai thi, lấy điểm x&eacute;t tuyển v&agrave;o c&aacute;c trường ĐH,CĐ. Như vậy &yacute; nghĩa k&igrave; thi sẽ cao hơn, hướng tới gi&aacute; trị thực chất, tr&aacute;nh được những ti&ecirc;u cực qu&aacute; lớn như k&igrave; thi vừa rồi.</p>\r\n\r\n<p>Chất lượng của đề thi tiếp tục được ho&agrave;n thiện, tăng cường số lượng c&acirc;u hỏi chuẩn ho&aacute;, mức độ c&acirc;n đối của đề thi, b&aacute;m s&aacute;t với chuẩn kiến thức trong bậc THPT. Tr&ecirc;n cơ sở đ&oacute;, c&aacute;c trường ĐH,CĐ sử dụng điểm x&eacute;t tuyển th&iacute; sinh v&agrave;o trường.</p>\r\n\r\n<p>Do đ&oacute;, y&ecirc;u cầu phải gắn với lượng kiến thức bậc phổ th&ocirc;ng, đảm bảo phản &aacute;nh đ&uacute;ng thực chất kết quả việc dạy v&agrave; học của c&aacute;c trường, c&aacute;c địa phương tr&ecirc;n tinh thần c&ocirc;ng khai, minh bạch.</p>\r\n\r\n<p>Theo Bộ trưởng Nhạ, trong k&igrave; thi THPT quốc gia, nếu ch&uacute;ng ta kh&ocirc;ng tổ chức quản l&iacute; chặt về mặt chất lượng th&igrave; bệnh th&agrave;nh t&iacute;ch sẽ k&eacute;o d&agrave;i. Ch&iacute;nh v&igrave; vậy, Bộ GD&amp;ĐT vẫn bảo lưu quan điểm duy tr&igrave; k&igrave; thi THPT quốc gia nhưng cải thiện, ch&uacute; trọng y&ecirc;u cầu về mặt lượng kiến thức thực sự được tiếp thu của học sinh trong bậc học THPT.</p>\r\n\r\n<p>Bộ trưởng Nhạ cho rằng, đổi mới k&igrave; thi THPT QG l&agrave; cả một qu&aacute; tr&igrave;nh cải tiến, kh&ocirc;ng phải mỗi năm một kiểu thi kh&aacute;c nhau. 3 năm gần đ&acirc;y, c&aacute;ch thức tổ chức thi vẫn được giữ nguy&ecirc;n, chỉ c&oacute; sự điều chỉnh ở nhiều kh&acirc;u trong cả qu&aacute; tr&igrave;nh tổng thể. V&iacute; dụ: năm học 2016 &ndash; 2017 điểm ưu ti&ecirc;n giữa c&aacute;c th&iacute; sinh chưa được hợp l&iacute;, th&iacute; sinh 30 điểm vẫn kh&ocirc;ng v&agrave;o ĐH hoặc đề thi qu&aacute; dễ nhiều người c&oacute; thể l&agrave;m được; đến năm 2017 &ndash; 2018 những điều đ&oacute; đ&atilde; được r&uacute;t kinh nghiệm v&agrave; thay đổi.</p>\r\n\r\n<p>&ldquo;Cho n&ecirc;n tới đ&acirc;y, c&aacute;ch tiếp cận của đề thi kh&ocirc;ng phục vụ mục ti&ecirc;u k&igrave; thi &quot;2 trong 1&quot;, m&agrave; phục vụ đ&aacute;nh gi&aacute; thực chất chất lượng dạy v&agrave; học THPT. Thực hiện tốt được k&igrave; thi n&agrave;y, chất lượng gi&aacute;o dục phổ th&ocirc;ng sẽ tốt l&ecirc;n&rdquo; &ndash; Bộ trưởng Nhạ nhấn mạnh.<br />\r\n<br />\r\nTr&iacute;ch Nguồn:&nbsp;dantri.com.vn</p>\r\n', 1, NULL, 1, 1, 0, 33, '2018-09-25 09:49:31', '2018-09-25 10:11:09', 1, 1),
(9, 'Nơi chứng kiến những thăng trầm của vương triều Nguyễn - Điện Thái Hoà', 'noi-chung-kien-nhung-thang-tram-cua-vuong-trieu-nguyen-dien-thai-hoa', 'Noi chung kien nhung thang tram cua vuong trieu Nguyen - Dien Thai Hoa', 'Trong các cung điện khu vực Hoàng thành, Điện Thái Hòa là ngôi điện lớn nhất, đẹp nhất, chiếm vị trí trang trọng nhất và là công trình tiêu biểu của kiến trúc cung đình Huế với kiểu thức “trùng thiềm điệp ốc”. Điện thường được dùng để thiết đại triều, tổ chức các lễ tiết lớn và đón tiếp sứ thần. Điện Thái Hòa cũng là nơi chứng kiến sự kiện đăng quang của 13 vị Vua nhà Nguyễn, sự hưng vong, thành bại của vương triều và những thăng trầm của lịch sử. Clip thuộc bản quyền Trung tâm Lưu trữ quốc gia ', 'hghwIIbnOn8', '/public/uploads/images/dai-noi-hue-e1502360866685-1538473408.png', 3, 'Trong c&aacute;c cung điện khu vực Ho&agrave;ng th&agrave;nh, Điện Th&aacute;i H&ograve;a l&agrave; ng&ocirc;i điện lớn nhất, đẹp nhất, chiếm vị tr&iacute; trang trọng nhất v&agrave; l&agrave; c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu của kiến tr&uacute;c cung đ&igrave;nh Huế với kiểu thức &ldquo;tr&ugrave;ng thiềm điệp ốc&rdquo;. Điện thường được d&ugrave;ng để thiết đại triều, tổ chức c&aacute;c lễ tiết lớn v&agrave; đ&oacute;n tiếp sứ thần. Điện Th&aacute;i H&ograve;a cũng l&agrave; nơi chứng kiến sự kiện đăng quang của 13 vị Vua nh&agrave; Nguyễn, sự hưng vong, th&agrave;nh bại của vương triều v&agrave; những thăng trầm của lịch sử. Clip thuộc bản quyền Trung t&acirc;m Lưu trữ quốc gia I - National archives centre N1', 1, NULL, 1, 1, 0, 35, '2018-10-02 16:45:44', '2018-10-04 14:50:17', 1, 1),
(11, 'LỚP 10', 'lop-10', 'LOP 10', 'Toán học lớp 10 - Đại số - Bài 1 - Mệnh đề - Tiết 1\r\n\r\nSẽ giúp các em nắm bắt các kiến thức cơ bản và nâng cao một  cách nhanh nhất . Từ đó giúp các em có một nền tảng kiến thức vững chắc để phát triển tư duy và trí tuệ và giúp các em đạt được những ước mơ của riêng mình . Chúc các em thành công.\r\n\r\nKênh THẦY QUANG ( TOÁN - HÓA - SINH ) có đầy đủ chương trình dạy của 3 môn khối B là TOÁN – HÓA –SINH , nếu em nào bị mất kiến thức cơ bản hãy nhanh chân vào đăng kí để lấy lại kiến thức , đồng thời ', 'lQfmLX0Z1Zk', '/public/uploads/images/tin-tuc/sach-giao-khoa-dai-so-10-0-1538531650.jpg', 4, 'To&aacute;n học lớp 10 - Đại số - B&agrave;i 1 - Mệnh đề - Tiết 1 Sẽ gi&uacute;p c&aacute;c em nắm bắt c&aacute;c kiến thức cơ bản v&agrave; n&acirc;ng cao một c&aacute;ch nhanh nhất . Từ đ&oacute; gi&uacute;p c&aacute;c em c&oacute; một nền tảng kiến thức vững chắc để ph&aacute;t triển tư duy v&agrave; tr&iacute; tuệ v&agrave; gi&uacute;p c&aacute;c em đạt được những ước mơ của ri&ecirc;ng m&igrave;nh . Ch&uacute;c c&aacute;c em th&agrave;nh c&ocirc;ng. K&ecirc;nh THẦY QUANG ( TO&Aacute;N - H&Oacute;A - SINH ) c&oacute; đầy đủ chương tr&igrave;nh dạy của 3 m&ocirc;n khối B l&agrave; TO&Aacute;N &ndash; H&Oacute;A &ndash;SINH , nếu em n&agrave;o bị mất kiến thức cơ bản h&atilde;y nhanh ch&acirc;n v&agrave;o đăng k&iacute; để lấy lại kiến thức , đồng thời cả thầy v&agrave; c&ocirc; c&oacute; tr&ecirc;n 10 năm kinh nghiệm để hướng dẫn tận t&igrave;nh tr&ecirc;n c&aacute;c clip', 0, NULL, 1, 1, 0, 38, '2018-10-03 08:52:43', '2018-10-04 15:03:14', 1, 1),
(12, 'Lăng Tẩm Triều Nguyễn 1: Lăng Gia Long, Minh Mạng - [Nẻo về nguồn cội]', 'lang-tam-trieu-nguyen-1-lang-gia-long-minh-mang-neo-ve-nguon-coi', 'Lang Tam Trieu Nguyen 1: Lang Gia Long, Minh Mang - [Neo ve nguon coi]', 'Nẻo về nguồn cội\r\n\r\nBuổi bình minh của triều đại nhà Nguyễn\r\n+++++\r\nLăng Gia Long\r\nLăng Gia Long bề thế, phóng khoáng, thể hiện chính tính cách, tâm hồn ngài.\r\n\r\nCuộc đời vua Gia Long chịu đựng những cuộc biến chuyển dữ dội trong lịch sử, nhiều trận mạc phong ba bão táp, có thể vì đã trải qua quá nhiều biến cố nên Gia Long đã lựa chọn vùng đất hoang sơ, yên bình, tĩnh lặng để làm nơi yên nghĩ vĩnh hằng cho một tâm hồn đã chịu quá nhiều đau thương.\r\n\r\nVị vua khai sáng của triều Nguyễn khoáng đạt,', 'hsLwr-ZfBMc', '/public/uploads/images/lang-tu-duc-du-lich-vietnam-explore01-1538990803.png', 3, 'Nẻo về nguồn cội Buổi b&igrave;nh minh của triều đại nh&agrave; Nguyễn +++++ Lăng Gia Long Lăng Gia Long bề thế, ph&oacute;ng kho&aacute;ng, thể hiện ch&iacute;nh t&iacute;nh c&aacute;ch, t&acirc;m hồn ng&agrave;i. Cuộc đời vua Gia Long chịu đựng những cuộc biến chuyển dữ dội trong lịch sử, nhiều trận mạc phong ba b&atilde;o t&aacute;p, c&oacute; thể v&igrave; đ&atilde; trải qua qu&aacute; nhiều biến cố n&ecirc;n Gia Long đ&atilde; lựa chọn v&ugrave;ng đất hoang sơ, y&ecirc;n b&igrave;nh, tĩnh lặng để l&agrave;m nơi y&ecirc;n nghĩ vĩnh hằng cho một t&acirc;m hồn đ&atilde; chịu qu&aacute; nhiều đau thương. Vị vua khai s&aacute;ng của triều Nguyễn kho&aacute;ng đạt, ti&ecirc;u dao, n&ecirc;n ngay cả nơi y&ecirc;n nghỉ cũng muốn được tự do, tự tại giữa thi&ecirc;n nhi&ecirc;n. Kiến tr&uacute;c lăng mang vẻ giản dị, tĩnh mịch, ph&oacute;ng kho&aacute;ng, kết cấu tổng thể tuy kh&ocirc;ng cầu kỳ, hoa mỹ nhưng vẫn ẩn chứa nỗi niềm, t&acirc;m hồn của một bậc qu&acirc;n vương. +++++ Lăng Minh Mạng Lăng Minh Mạng thể hiện r&otilde; t&iacute;nh c&aacute;ch con người của ng&agrave;i: th&ocirc;ng minh, ch&iacute;nh trực, s&aacute;ng tỏ v&agrave; ngay thẳng. Vua Minh Mạng l&agrave; vị vua t&agrave;i hoa nhất triều Nguyễn, ng&agrave;i đặc biệt tinh th&ocirc;ng nho học, do vậy bố cục kiến tr&uacute;c của lăng ng&agrave;i được x&acirc;y dựng tr&ecirc;n cơ sở, tư tưởng chịu ảnh hưởng s&acirc;u sắc của đạo nho. Bối cảnh h&ograve;a hợp giữa kiến tr&uacute;c v&agrave; thi&ecirc;n nhi&ecirc;n, lăng Minh Mạng được đ&aacute;nh gi&aacute; l&agrave; một tuyệt t&aacute;c của thời Nguyễn. Vua minh Mạng l&agrave; người c&oacute; tư chất th&ocirc;ng minh, hiếu học v&agrave; rất quyết đo&aacute;n, kh&ocirc;ng chỉ thiết lập kỷ cương triều ch&iacute;nh, dẹp y&ecirc;n loạn qu&acirc;n, ng&agrave;i c&ograve;n ho&agrave;n thiện c&ocirc;ng cuộc x&acirc;y dựng kinh th&agrave;nh Huế đ&atilde; x&acirc;y dựng từ thời vua Gia Long. +++++ Với quan điểm, sống gửi th&aacute;c về, lăng tẩm l&agrave; ho&agrave;ng cung vĩnh hằng của vua. Hai ng&ocirc;i lăng của 2 vị ho&agrave;ng đế đầu triều mang d&aacute;ng vẻ quy m&ocirc; phần n&agrave;o phản &aacute;nh được thời kỳ độc lập thịnh trị của đất nước.', 1, NULL, 1, 1, 0, 42, '2018-10-08 16:27:18', '2018-10-08 16:33:28', 1, 1),
(13, 'Lăng Tẩm Triều Nguyễn 2: Lăng Thiệu Trị, Tự Đức - [Nẻo về nguồn cội]', 'lang-tam-trieu-nguyen-2-lang-thieu-tri-tu-duc-neo-ve-nguon-coi', 'Lang Tam Trieu Nguyen 2: Lang Thieu Tri, Tu Duc - [Neo ve nguon coi]', 'Những thi sĩ Hoàng Đế\r\n+++++\r\nLăng Thiệu Trị\r\n\r\nThiệu Trị cũng là một vị vua tài hoa nhưng ông mất sớm, chỉ trị vì 7 năm. Cuối đời, vị vua hiền hòa này xây cất lăng tẩm đơn giản để không hao phí tài lực của quốc gia.\r\n+++++\r\nLăng Tự Đức\r\n\r\nNăm 1866, khi lăng bắt đầu được xây dựng, đã diễn ra cuộc nổi dậy của nhưng người thợ thi công lăng, điều đó khiến nội tâm bậc quân vương gặp trăn trở, có thể đây là lý do nhiều công trình trong lăng đều có chữ ‘’Khiêm’’\r\n\r\nKiến trúc của lăng mang những nét ph', 'SOL76e3KnPM', '/public/uploads/images/lang-tu-duc-du-lich-vietnam-explore01-1538990803.png', 3, 'Những thi sĩ Ho&agrave;ng Đế<br />\r\n+++++<br />\r\nLăng Thiệu Trị<br />\r\n<br />\r\nThiệu Trị cũng l&agrave; một vị vua t&agrave;i hoa nhưng &ocirc;ng mất sớm, chỉ trị v&igrave; 7 năm. Cuối đời, vị vua hiền h&ograve;a n&agrave;y x&acirc;y cất lăng tẩm đơn giản để kh&ocirc;ng hao ph&iacute; t&agrave;i lực của quốc gia.<br />\r\n+++++<br />\r\nLăng Tự Đức<br />\r\n<br />\r\nNăm 1866, khi lăng bắt đầu được x&acirc;y dựng, đ&atilde; diễn ra cuộc nổi dậy của nhưng người thợ thi c&ocirc;ng lăng, điều đ&oacute; khiến nội t&acirc;m bậc qu&acirc;n vương gặp trăn trở, c&oacute; thể đ&acirc;y l&agrave; l&yacute; do nhiều c&ocirc;ng tr&igrave;nh trong lăng đều c&oacute; chữ &lsquo;&rsquo;Khi&ecirc;m&rsquo;&rsquo;<br />\r\n<br />\r\nKiến tr&uacute;c của lăng mang những n&eacute;t ph&aacute; c&aacute;ch, sự ph&aacute; c&aacute;ch đ&oacute; xuất ph&aacute;t từ một t&acirc;m hồn trữ t&igrave;nh, y&ecirc;u ngh&ecirc; thuật của một vị ho&agrave;ng đế.<br />\r\nTuy l&agrave; vị vua hay chữ bậc nhất triều Nguyễn, nhưng trong lăng &ocirc;ng lại kh&ocirc;ng xuất hiện bất cứ b&agrave;i thơ n&agrave;o của &ocirc;ng m&agrave; lại xuất hiện rất nhiều b&agrave;i thơ của vua cha Tự Đức: vua Thiệu Trị , điều n&agrave;y thể hiện c&aacute;i &lsquo;&rsquo;Khi&ecirc;m&rsquo;&rsquo; của Tự Đức cũng như l&ograve;ng hiếu thảo của &ocirc;ng đối với vua cha.<br />\r\n+++++<br />\r\nNăm 1858, thực d&acirc;n Ph&aacute;p tiến v&agrave;o nước ta, bước ngoặc lịch sử mang đến nhiều biến động trong cuộc đời c&aacute;c vị vua kế nghiệp sau n&agrave;y, kh&ocirc;ng ri&ecirc;ng g&igrave; c&ocirc;ng cuộc trị quốc, cả nơi y&ecirc;n nghỉ cuối đời của họ cũng c&oacute; những s&oacute;ng gi&oacute; kh&ocirc;ng thể ngờ trước.<br />\r\nNguồn: Nẻo về nguồn cội', 1, NULL, 1, 1, 0, 52, '2018-10-15 18:22:38', '2018-10-15 18:24:19', 1, 1);

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
(2, 'Góc chia sẻ', 'goc-chia-se', 'Goc chia se', '', 1, '', '2017-10-02 16:12:03', '2017-10-02 16:12:03', 0, 0, 1, 0, 'Góc chia sẻ', 'Góc chia sẻ', '', '', 0),
(3, 'Hành Trình Văn Hóa', 'hanh-trinh-van-hoa', 'Hanh Trinh Van Hoa', '', 1, '', '2018-10-02 12:35:46', '2018-10-02 12:35:46', 0, 0, 1, 0, '', '', '', '', 0),
(4, 'Toán lớp 10', 'toan-lop-10', 'Toan lop 10', 'Cùng nhau ôn tập và học các dạng toán mới.', 1, '', '2018-10-03 08:40:53', '2018-10-03 08:40:53', 0, 0, 1, 0, '', '', '', '', 0);

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
(38, '/public/uploads/images/img_6335-1537520631.JPG', '', 0, 0, 1, 3, 1, 0, 1, '2017-09-27 07:29:45', '2018-09-21 16:25:50', 1, 1),
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
-- Table structure for table `classthpt`
--

CREATE TABLE `classthpt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `display_order` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1 thpt 2 stem',
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classthpt`
--

INSERT INTO `classthpt` (`id`, `name`, `slug`, `display_order`, `status`, `type`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Lớp 10', 'lop-10', 1, 1, 1, 1, 1, '2018-10-21 00:00:00', '2018-10-21 00:00:00'),
(2, 'Lớp 11', 'lop-11', 2, 1, 1, 1, 1, '2018-10-21 00:00:00', '2018-10-21 00:00:00'),
(3, 'Lớp 12', 'lop-12', 3, 1, 1, 1, 1, '2018-10-21 00:00:00', '2018-10-21 00:00:00'),
(4, 'Giáo dục STEM', 'giao-duc-stem', 4, 1, 2, 1, 1, '2018-10-21 00:00:00', '2018-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `fullname` varchar(255) NOT NULL,
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

INSERT INTO `contact` (`id`, `type`, `title`, `gender`, `fullname`, `email`, `phone`, `content`, `status`, `project_id`, `created_at`, `updated_at`, `updated_user`) VALUES
(1, 0, '', 1, 'maiducsang', 'maiducsang.knvhv@gmail.com', '0907676317', 'sang', 1, NULL, '2018-10-03 15:22:41', '2018-10-03 15:22:41', 0);

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
('171.253.223.89', 117, 2, 1506921701),
('127.0.0.1', 7, 2, 1540108980),
('127.0.0.1', 13, 2, 1509198656),
('127.0.0.1', 14, 2, 1509196138),
('127.0.0.1', 12, 2, 1509200036),
('127.0.0.1', 11, 2, 1509197586),
('127.0.0.1', 10, 2, 1507693945),
('127.0.0.1', 16, 2, 1507695880),
('127.0.0.1', 4, 2, 1508034716),
('127.0.0.1', 6, 2, 1509198644),
('127.0.0.1', 2, 2, 1509198684),
('127.0.0.1', 3, 2, 1540108905),
('127.0.0.1', 5, 2, 1509198683),
('127.0.0.1', 1, 2, 1509198685),
('127.0.0.1', 9, 2, 1540109531),
('127.0.0.1', 17, 2, 1540109603),
('123.22.239.188', 6, 2, 1509201321),
('123.22.239.188', 5, 2, 1509205464),
('123.22.239.188', 2, 2, 1509205477),
('42.117.221.193', 5, 2, 1509291693),
('42.117.221.193', 3, 2, 1509205663),
('42.117.221.193', 1, 2, 1509289676),
('42.117.221.193', 7, 2, 1509206934),
('42.117.221.193', 17, 2, 1509206032),
('42.117.221.193', 18, 2, 1509206040),
('42.117.221.193', 6, 2, 1509333035),
('42.117.221.193', 11, 2, 1509207891),
('42.117.221.193', 12, 2, 1509289965),
('42.117.221.193', 16, 2, 1509295498),
('118.68.102.123', 6, 2, 1509209725),
('14.190.63.90', 6, 2, 1509212562),
('14.184.185.71', 6, 2, 1509235965),
('115.78.11.159', 13, 2, 1509242617),
('115.78.11.159', 7, 2, 1509245432),
('115.78.11.159', 17, 2, 1509245341),
('115.78.11.159', 6, 2, 1509245423),
('171.232.124.123', 6, 2, 1509370489),
('171.232.124.123', 7, 2, 1509283655),
('171.232.124.123', 16, 2, 1509282917),
('171.232.124.123', 13, 2, 1509290146),
('116.102.66.27', 6, 2, 1509277364),
('171.232.124.123', 14, 2, 1509283433),
('123.21.113.154', 6, 2, 1509285504),
('13.76.241.210', 6, 2, 1509289040),
('42.117.221.193', 4, 2, 1509289663),
('42.117.221.193', 2, 2, 1509292235),
('23.99.101.118', 5, 2, 1509291732),
('171.232.124.123', 5, 2, 1509368957),
('42.117.221.193', 13, 2, 1509333037),
('23.99.101.118', 16, 2, 1509292288),
('180.76.15.16', 2, 2, 1509297862),
('40.78.146.128', 16, 2, 1509328814),
('118.69.36.195', 6, 2, 1509330809),
('118.69.36.195', 13, 2, 1509330484),
('118.69.36.195', 7, 2, 1509330509),
('118.69.36.195', 17, 2, 1509330511),
('14.186.19.218', 6, 2, 1509348277),
('14.186.19.218', 5, 2, 1509348321),
('14.186.19.218', 11, 2, 1509347234),
('14.186.19.218', 12, 2, 1509348267),
('14.186.19.218', 13, 2, 1509347260),
('14.186.19.218', 7, 2, 1509347598),
('14.186.19.218', 17, 2, 1509347292),
('14.186.19.218', 18, 2, 1509347294),
('14.186.19.218', 16, 2, 1509348271),
('14.186.19.218', 3, 2, 1509347642),
('14.186.19.218', 9, 2, 1509347646),
('14.186.19.218', 10, 2, 1509347650),
('14.186.19.218', 4, 2, 1509348275),
('14.186.19.218', 1, 2, 1509347951),
('1.53.216.123', 5, 2, 1509363937),
('116.102.36.152', 5, 2, 1509364056),
('171.232.124.123', 2, 2, 1509368089),
('171.232.124.123', 3, 2, 1509368090),
('171.232.124.123', 4, 2, 1509368101),
('1.53.216.123', 1, 2, 1509375236),
('1.53.216.123', 6, 2, 1509376605),
('1.53.216.123', 13, 2, 1509376608),
('1.53.216.123', 7, 2, 1509376652),
('42.112.159.66', 6, 2, 1509384280),
('180.76.15.31', 2, 2, 1509393782),
('162.158.167.107', 3, 2, 1509513360),
('172.68.254.35', 3, 2, 1509519227),
('172.68.254.35', 7, 2, 1509519402),
('172.68.253.196', 7, 2, 1509694031),
('162.158.166.76', 6, 2, 1510067400),
('162.158.166.76', 14, 2, 1510067411),
('162.158.166.76', 1, 2, 1510067422),
('162.158.166.76', 2, 2, 1510067424),
('162.158.79.178', 7, 2, 1510722055),
('172.68.65.191', 2, 2, 1510722077),
('162.158.79.22', 1, 2, 1510722079),
('172.68.65.239', 3, 2, 1510722081),
('162.158.78.171', 4, 2, 1510722083),
('172.68.65.221', 5, 2, 1510722085),
('172.68.65.221', 6, 2, 1510722087),
('172.68.65.245', 7, 2, 1510722089),
('162.158.62.14', 7, 2, 1510125071),
('8.21.198.59', 5, 2, 1510727350),
('8.21.198.10', 3, 2, 1513150320),
('162.158.63.207', 6, 2, 1510125743),
('8.21.199.96', 2, 2, 1510736075),
('8.21.198.186', 1, 2, 1524112192),
('8.21.198.162', 4, 2, 1510736009),
('162.158.122.113', 7, 2, 1510728516),
('162.158.63.195', 7, 2, 1510145218),
('162.158.63.195', 5, 2, 1510145219),
('162.158.62.92', 3, 2, 1510145223),
('162.158.63.195', 2, 2, 1510145229),
('162.158.63.195', 6, 2, 1510145230),
('162.158.63.195', 1, 2, 1510145235),
('162.158.122.29', 6, 2, 1510727258),
('8.21.199.96', 7, 2, 1510727530),
('162.158.78.51', 7, 2, 1512536465),
('162.158.79.106', 2, 2, 1512536486),
('162.158.79.238', 1, 2, 1512536488),
('172.68.65.59', 3, 2, 1512536490),
('162.158.79.76', 4, 2, 1512536492),
('162.158.79.208', 5, 2, 1512536494),
('162.158.78.75', 6, 2, 1512536496),
('162.158.79.106', 7, 2, 1512536498),
('162.158.78.87', 2, 2, 1512547618),
('162.158.79.232', 1, 2, 1512547734),
('172.68.65.233', 4, 2, 1512547768),
('172.68.65.233', 7, 2, 1512547810),
('172.68.65.95', 5, 2, 1512545947),
('162.158.78.153', 3, 2, 1512544588),
('162.158.78.87', 7, 2, 1512544529),
('162.158.78.183', 6, 2, 1516227015),
('172.68.253.34', 11, 2, 1525136893),
('172.68.253.34', 6, 2, 1512457520),
('172.68.253.34', 7, 2, 1533080634),
('172.68.253.34', 5, 2, 1512457148),
('172.68.253.172', 7, 2, 1512469570),
('172.68.65.113', 6, 2, 1524157512),
('162.158.79.34', 7, 2, 1516184816),
('162.158.79.184', 2, 2, 1526631030),
('172.68.65.113', 1, 2, 1516184839),
('162.158.78.27', 3, 2, 1516184841),
('162.158.79.94', 4, 2, 1516184843),
('162.158.78.105', 5, 2, 1515580061),
('162.158.79.208', 6, 2, 1516184847),
('172.69.62.87', 7, 2, 1516184849),
('172.69.62.141', 5, 2, 1516205355),
('162.158.79.238', 7, 2, 1516205271),
('162.158.79.28', 7, 2, 1516204711),
('162.158.79.58', 1, 2, 1516233176),
('162.158.79.238', 2, 2, 1516235006),
('162.158.79.208', 4, 2, 1515592264),
('162.158.179.135', 13, 2, 1513175543),
('162.158.178.80', 7, 2, 1513474085),
('162.158.178.80', 16, 2, 1513474095),
('172.68.253.88', 12, 2, 1513581371),
('162.158.62.26', 7, 2, 1513593064),
('162.158.62.26', 6, 2, 1513593066),
('162.158.62.26', 5, 2, 1513593044),
('162.158.62.26', 2, 2, 1513593054),
('162.158.78.207', 2, 2, 1513601108),
('162.158.79.10', 6, 2, 1513602044),
('172.68.65.83', 5, 2, 1513602659),
('162.158.166.94', 13, 2, 1513656580),
('64.74.215.54', 12, 2, 1513764913),
('64.74.215.54', 7, 2, 1513765177),
('64.74.215.54', 14, 2, 1513765363),
('64.74.215.54', 16, 2, 1513765406),
('64.74.215.54', 10, 2, 1513765448),
('64.74.215.54', 6, 2, 1513765452),
('172.69.62.117', 3, 2, 1516205922),
('172.69.33.100', 13, 2, 1513905721),
('162.158.179.51', 16, 2, 1513839079),
('162.158.179.81', 5, 2, 1513942179),
('162.158.179.81', 14, 2, 1514117302),
('162.158.165.225', 7, 2, 1514279970),
('162.158.165.225', 17, 2, 1514279972),
('162.158.179.165', 12, 2, 1514344026),
('172.68.144.210', 3, 2, 1514452241),
('172.68.144.210', 9, 2, 1514452299),
('162.158.167.155', 6, 2, 1514555886),
('172.68.254.113', 7, 2, 1514701942),
('172.68.254.240', 13, 2, 1515159830),
('172.68.253.244', 13, 2, 1539595191),
('162.158.38.21', 5, 2, 1515248601),
('172.68.146.13', 7, 2, 1515678821),
('172.68.254.77', 16, 2, 1516003497),
('162.158.78.147', 5, 2, 1516184844),
('172.68.174.15', 12, 2, 1516184944),
('162.158.165.57', 12, 2, 1516184945),
('162.158.78.111', 4, 2, 1516233337),
('172.68.144.114', 7, 2, 1516517021),
('158.69.228.184', 7, 2, 1516563583),
('158.69.228.184', 6, 2, 1516563589),
('158.69.228.184', 5, 2, 1516563599),
('158.69.228.184', 2, 2, 1516563610),
('162.158.79.148', 2, 2, 1524107785),
('162.158.78.129', 6, 2, 1524156789),
('162.158.78.141', 7, 2, 1524107594),
('162.158.79.100', 5, 2, 1524112578),
('172.68.141.243', 3, 2, 1516966948),
('172.68.211.21', 3, 2, 1517015293),
('172.68.141.135', 12, 2, 1520214714),
('172.69.22.235', 7, 2, 1517233026),
('172.68.142.202', 1, 2, 1517277997),
('172.69.62.189', 7, 2, 1524103988),
('162.158.79.28', 2, 2, 1524104005),
('172.69.62.69', 1, 2, 1524104007),
('172.68.65.161', 3, 2, 1524104009),
('172.69.62.123', 4, 2, 1524104011),
('162.158.79.190', 5, 2, 1524104012),
('162.158.79.88', 6, 2, 1524104014),
('172.68.65.125', 7, 2, 1524104016),
('162.158.79.100', 7, 2, 1524107593),
('162.158.78.87', 3, 2, 1524107934),
('172.68.65.239', 5, 2, 1524107694),
('172.69.62.189', 4, 2, 1524112234),
('162.158.79.100', 2, 2, 1523576120),
('172.68.142.76', 2, 2, 1517755123),
('172.68.142.76', 1, 2, 1517755241),
('172.69.22.127', 7, 2, 1519613243),
('162.158.93.170', 1, 2, 1517846570),
('162.158.88.247', 1, 2, 1517924307),
('162.158.165.39', 3, 2, 1517963731),
('162.158.165.39', 9, 2, 1517963749),
('162.158.88.7', 1, 2, 1518424490),
('162.158.92.201', 1, 2, 1518424491),
('162.158.58.56', 5, 2, 1519142426),
('162.158.58.56', 11, 2, 1519142524),
('172.68.211.207', 2, 2, 1519701180),
('162.158.255.51', 15, 2, 1519802836),
('172.69.33.124', 13, 2, 1520255085),
('172.68.141.177', 10, 2, 1520490990),
('172.69.62.171', 5, 2, 1520716506),
('172.68.141.231', 11, 2, 1520854629),
('113.160.56.158', 11, 2, 1520931403),
('172.69.22.13', 12, 2, 1520934816),
('172.69.22.55', 11, 2, 1520994683),
('172.68.141.177', 5, 2, 1520999578),
('222.252.92.18', 4, 2, 1521018320),
('172.68.253.190', 12, 2, 1521385238),
('162.158.224.195', 12, 2, 1527267448),
('162.158.179.105', 7, 2, 1521555276),
('172.68.65.197', 3, 2, 1524104020),
('162.158.78.153', 2, 2, 1524104024),
('162.158.79.112', 5, 2, 1524104027),
('172.68.65.131', 4, 2, 1524104030),
('162.158.78.225', 6, 2, 1524104033),
('172.68.65.71', 4, 2, 1524156896),
('162.158.79.238', 3, 2, 1524112206),
('172.68.146.223', 3, 2, 1521795110),
('172.68.146.223', 9, 2, 1521795126),
('172.68.146.223', 4, 2, 1521803745),
('172.68.146.223', 6, 2, 1521803750),
('162.158.179.177', 3, 2, 1522137551),
('162.158.179.177', 9, 2, 1532182115),
('172.68.255.151', 3, 2, 1537521361),
('172.68.255.151', 9, 2, 1522139835),
('172.68.253.82', 15, 2, 1522336118),
('172.68.254.149', 3, 2, 1522348013),
('172.68.254.119', 7, 2, 1522425465),
('172.68.254.11', 7, 2, 1522507611),
('162.158.224.57', 11, 2, 1522770244),
('172.68.144.36', 12, 2, 1522813164),
('162.158.178.194', 3, 2, 1522891497),
('172.68.253.76', 11, 2, 1523346515),
('162.158.179.21', 13, 2, 1523430338),
('162.158.224.123', 13, 2, 1523621747),
('162.158.179.237', 12, 2, 1523811573),
('162.158.202.99', 3, 2, 1524343686),
('162.158.165.189', 11, 2, 1524384138),
('172.68.51.135', 1, 2, 1524674817),
('162.158.79.82', 7, 2, 1533530508),
('162.158.78.225', 2, 2, 1533530526),
('162.158.78.123', 1, 2, 1533530528),
('162.158.78.15', 3, 2, 1533530530),
('172.68.65.107', 4, 2, 1533530531),
('162.158.79.88', 5, 2, 1533530533),
('172.68.65.107', 6, 2, 1533530535),
('172.68.65.215', 7, 2, 1533530537),
('162.158.67.81', 3, 2, 1524730861),
('162.158.78.117', 2, 2, 1526626470),
('172.68.65.65', 5, 2, 1526626475),
('162.158.79.34', 4, 2, 1526626478),
('162.158.67.81', 6, 2, 1524730876),
('172.69.62.159', 5, 2, 1527964058),
('172.69.62.165', 3, 2, 1527971929),
('172.69.62.93', 7, 2, 1527963978),
('162.158.79.106', 5, 2, 1526631858),
('8.21.199.71', 6, 2, 1526630276),
('162.158.78.159', 6, 2, 1527963753),
('172.68.65.77', 4, 2, 1526630344),
('172.68.65.59', 4, 2, 1527963760),
('172.69.62.171', 1, 2, 1527963786),
('162.158.79.190', 3, 2, 1526633897),
('172.69.62.93', 2, 2, 1527965250),
('162.158.79.160', 7, 2, 1527963889),
('162.158.63.177', 11, 2, 1524780682),
('172.68.255.109', 5, 2, 1524782248),
('162.158.79.88', 11, 2, 1524850496),
('162.158.178.80', 3, 2, 1525040516),
('172.68.255.19', 7, 2, 1524879431),
('172.68.253.238', 7, 2, 1524889850),
('172.68.253.238', 4, 2, 1524890025),
('172.68.253.238', 6, 2, 1524890027),
('172.68.253.238', 8, 2, 1524890033),
('172.68.253.238', 10, 2, 1524890053),
('172.68.253.238', 1, 2, 1524890065),
('162.158.179.117', 7, 2, 1526369891),
('162.158.179.81', 3, 2, 1525090080),
('172.68.255.187', 7, 2, 1525096220),
('162.158.178.20', 7, 2, 1525106368),
('172.68.255.121', 11, 2, 1525184255),
('172.68.255.121', 10, 2, 1525184266),
('162.158.178.188', 5, 2, 1539035289),
('162.158.178.188', 11, 2, 1539601915),
('162.158.178.188', 12, 2, 1539596218),
('162.158.178.188', 3, 2, 1525257158),
('162.158.178.188', 9, 2, 1538722263),
('162.158.178.188', 7, 2, 1539398643),
('162.158.178.188', 17, 2, 1525256604),
('162.158.178.188', 6, 2, 1525417324),
('162.158.179.117', 6, 2, 1525256039),
('162.158.179.117', 17, 2, 1525256022),
('162.158.179.117', 1, 2, 1525256047),
('162.158.178.188', 13, 2, 1525257399),
('162.158.178.188', 18, 2, 1525256439),
('162.158.178.188', 19, 2, 1525256442),
('162.158.178.188', 1, 2, 1528449166),
('162.158.178.188', 4, 2, 1525257182),
('162.158.178.188', 2, 2, 1525257057),
('162.158.178.188', 16, 2, 1525257405),
('162.158.68.102', 3, 2, 1525319697),
('162.158.68.102', 6, 2, 1525319711),
('172.68.253.136', 12, 2, 1539602150),
('91.213.143.248', 5, 2, 1525417877),
('91.213.143.248', 11, 2, 1525417897),
('91.213.143.248', 12, 2, 1525418277),
('162.158.178.50', 4, 2, 1525699822),
('172.68.253.10', 12, 2, 1525849368),
('162.158.64.137', 3, 2, 1525893387),
('162.158.64.137', 6, 2, 1525893404),
('162.158.179.105', 11, 2, 1526048840),
('162.158.178.182', 6, 2, 1526079533),
('172.68.255.91', 5, 2, 1529910692),
('162.158.179.147', 11, 2, 1526263618),
('172.68.254.65', 7, 2, 1539594480),
('162.158.179.33', 11, 2, 1526346252),
('172.68.255.133', 7, 2, 1528118873),
('162.158.178.20', 12, 2, 1526535087),
('162.158.65.72', 3, 2, 1526626467),
('162.158.65.72', 6, 2, 1526626482),
('172.68.189.36', 11, 2, 1526726581),
('172.68.255.133', 10, 2, 1527358678),
('162.158.167.179', 11, 2, 1526992765),
('162.158.179.93', 10, 2, 1527066992),
('172.68.143.113', 7, 2, 1527097396),
('162.158.118.51', 3, 2, 1527209974),
('172.68.144.132', 7, 2, 1527254070),
('172.68.253.94', 11, 2, 1527426437),
('172.68.143.11', 3, 2, 1527512184),
('172.69.134.104', 11, 2, 1527562662),
('172.68.253.64', 16, 2, 1529562356),
('172.68.253.112', 14, 2, 1527685344),
('172.68.254.107', 14, 2, 1529612127),
('162.158.178.170', 12, 2, 1528181255),
('172.68.254.167', 12, 2, 1528207052),
('162.158.224.75', 11, 2, 1529421507),
('162.158.178.146', 7, 2, 1528253850),
('172.68.253.184', 7, 2, 1528542108),
('172.69.62.183', 6, 2, 1530461136),
('162.158.78.207', 1, 2, 1530461192),
('162.158.78.15', 2, 2, 1530461156),
('162.158.78.201', 4, 2, 1530461189),
('162.158.78.57', 7, 2, 1530461256),
('172.68.65.11', 5, 2, 1530461383),
('162.158.78.15', 7, 2, 1530461400),
('162.158.78.93', 3, 2, 1530461707),
('172.68.253.208', 12, 2, 1528610427),
('172.68.254.143', 11, 2, 1528902691),
('172.68.253.100', 7, 2, 1529044047),
('172.68.254.83', 3, 2, 1529241683),
('172.68.255.109', 14, 2, 1529247214),
('162.158.165.81', 3, 2, 1529339332),
('162.158.165.81', 9, 2, 1529339342),
('172.68.253.70', 12, 2, 1529345349),
('172.68.254.246', 3, 2, 1529468357),
('172.68.254.246', 9, 2, 1529468340),
('172.68.254.65', 10, 2, 1529485571),
('162.158.179.45', 14, 2, 1529495402),
('172.68.144.174', 3, 2, 1529539337),
('172.68.143.131', 3, 2, 1529605809),
('172.68.146.127', 7, 2, 1529658193),
('172.69.134.242', 3, 2, 1529724367),
('172.69.134.242', 9, 2, 1529724494),
('172.69.134.242', 10, 2, 1529724506),
('162.158.59.225', 7, 2, 1530382542),
('172.69.33.184', 6, 2, 1531700123),
('172.68.47.125', 4, 2, 1531700152),
('162.158.58.140', 1, 2, 1531700160),
('172.69.33.64', 2, 2, 1531700150),
('8.37.70.242', 5, 2, 1537931419),
('172.68.46.226', 7, 2, 1531700198),
('172.68.211.81', 7, 2, 1534785525),
('162.158.167.5', 3, 2, 1530586777),
('172.68.47.215', 3, 2, 1531700261),
('172.69.134.194', 11, 2, 1530948811),
('172.68.253.124', 7, 2, 1530949429),
('172.68.146.157', 12, 2, 1531402171),
('162.158.165.201', 12, 2, 1531402525),
('172.68.189.60', 7, 2, 1531479298),
('172.68.146.157', 11, 2, 1531888358),
('162.158.166.88', 13, 2, 1532049087),
('162.158.165.75', 3, 2, 1532053505),
('172.69.134.32', 9, 2, 1532053520),
('172.69.134.32', 10, 2, 1532934877),
('162.158.167.17', 11, 2, 1532058231),
('162.158.179.249', 3, 2, 1532664884),
('172.68.211.231', 1, 2, 1532316045),
('172.68.46.70', 7, 2, 1534144754),
('172.68.211.231', 6, 2, 1532316240),
('162.158.58.200', 4, 2, 1534785416),
('162.158.58.200', 7, 2, 1532932213),
('162.158.59.237', 5, 2, 1532316384),
('162.158.58.200', 3, 2, 1533532749),
('172.68.141.201', 3, 2, 1532521476),
('162.158.166.232', 2, 2, 1532523090),
('172.68.146.157', 13, 2, 1532663887),
('172.68.146.157', 16, 2, 1532663896),
('162.158.165.201', 5, 2, 1532665024),
('162.158.179.249', 5, 2, 1533287501),
('172.68.144.144', 5, 2, 1532665036),
('162.158.165.201', 7, 2, 1532665083),
('162.158.165.99', 12, 2, 1532677089),
('162.158.167.179', 16, 2, 1532677254),
('162.158.167.179', 14, 2, 1532677261),
('162.158.167.179', 13, 2, 1532677277),
('162.158.167.179', 12, 2, 1532677272),
('162.158.154.198', 4, 2, 1535545786),
('172.68.47.227', 4, 2, 1532932166),
('172.68.46.70', 2, 2, 1532932169),
('162.158.58.116', 6, 2, 1534144593),
('162.158.59.201', 5, 2, 1532932182),
('162.158.59.201', 1, 2, 1532932210),
('162.158.58.116', 3, 2, 1535414502),
('172.68.211.129', 7, 2, 1532932235),
('162.158.166.88', 11, 2, 1532934619),
('162.158.166.88', 16, 2, 1532934630),
('172.69.134.236', 3, 2, 1532934720),
('172.68.144.120', 13, 2, 1532934746),
('172.68.144.120', 2, 2, 1532934779),
('172.68.144.120', 3, 2, 1532934816),
('172.69.134.62', 3, 2, 1532934821),
('172.68.253.40', 5, 2, 1533287487),
('162.158.179.249', 12, 2, 1533304907),
('172.68.144.144', 3, 2, 1533463979),
('162.158.59.201', 6, 2, 1533532461),
('162.158.59.213', 2, 2, 1534785393),
('162.158.59.99', 4, 2, 1533532538),
('162.158.58.116', 1, 2, 1534785424),
('162.158.58.182', 7, 2, 1533532652),
('162.158.58.116', 5, 2, 1533532662),
('172.68.253.112', 12, 2, 1533627091),
('172.68.255.31', 10, 2, 1533870391),
('172.68.253.112', 6, 2, 1533882809),
('162.158.178.92', 12, 2, 1539594414),
('172.68.253.46', 7, 2, 1534085993),
('172.68.255.31', 12, 2, 1534132528),
('172.69.62.105', 7, 2, 1534142592),
('172.69.62.123', 2, 2, 1534142610),
('162.158.78.129', 1, 2, 1534142612),
('162.158.78.207', 3, 2, 1534142614),
('162.158.79.148', 4, 2, 1534142615),
('162.158.79.34', 5, 2, 1534142617),
('162.158.65.116', 6, 2, 1534142620),
('172.69.62.129', 7, 2, 1534142625),
('162.158.59.195', 2, 2, 1535414289),
('162.158.59.195', 4, 2, 1534144647),
('162.158.58.182', 1, 2, 1534144682),
('172.68.211.81', 5, 2, 1534144831),
('162.158.58.92', 3, 2, 1534145025),
('162.158.179.33', 12, 2, 1534169928),
('172.68.255.31', 11, 2, 1534171617),
('172.68.142.220', 3, 2, 1534403533),
('172.68.132.40', 9, 2, 1534403566),
('172.68.141.201', 14, 2, 1534407360),
('162.158.89.156', 11, 2, 1534669982),
('162.158.89.156', 14, 2, 1534669996),
('162.158.90.161', 10, 2, 1534670022),
('162.158.90.161', 12, 2, 1534670037),
('162.158.90.161', 13, 2, 1534670051),
('162.158.90.161', 16, 2, 1534670058),
('162.158.93.230', 1, 2, 1534670096),
('162.158.93.230', 5, 2, 1534670104),
('162.158.93.230', 3, 2, 1534670119),
('162.158.93.230', 4, 2, 1534670124),
('162.158.93.230', 6, 2, 1534670143),
('162.158.93.230', 7, 2, 1534670157),
('162.158.92.189', 6, 2, 1534670197),
('162.158.92.189', 2, 2, 1534670205),
('162.158.92.231', 7, 2, 1534670234),
('162.158.92.231', 5, 2, 1534670247),
('172.68.65.23', 7, 2, 1535412338),
('162.158.78.93', 2, 2, 1535412357),
('172.68.65.239', 1, 2, 1535412359),
('172.69.62.105', 3, 2, 1535412361),
('162.158.79.10', 4, 2, 1535412363),
('162.158.79.148', 5, 2, 1535412365),
('172.68.65.77', 6, 2, 1535412367),
('172.68.65.71', 7, 2, 1535412369),
('172.68.211.129', 6, 2, 1534785325),
('162.158.58.200', 5, 2, 1534785593),
('162.158.58.116', 7, 2, 1534785646),
('162.158.224.93', 7, 2, 1536982718),
('172.68.142.46', 12, 2, 1535186921),
('162.158.179.69', 7, 2, 1535376951),
('172.68.142.154', 7, 2, 1535377000),
('172.68.211.81', 6, 2, 1535414217),
('162.158.59.195', 1, 2, 1535414296),
('162.158.59.201', 7, 2, 1535414339),
('162.158.59.99', 5, 2, 1535414376),
('162.158.59.99', 7, 2, 1535414422),
('162.158.179.213', 14, 2, 1535462205),
('162.158.154.30', 7, 2, 1535545788),
('162.158.179.213', 7, 2, 1535876023),
('162.158.255.45', 3, 2, 1535896831),
('172.69.23.38', 9, 2, 1535896891),
('162.158.88.169', 11, 2, 1536005005),
('162.158.90.89', 14, 2, 1536005024),
('162.158.90.89', 10, 2, 1536005029),
('162.158.90.89', 12, 2, 1536005035),
('162.158.90.89', 13, 2, 1536005046),
('162.158.90.89', 16, 2, 1536005052),
('162.158.90.89', 1, 2, 1536005079),
('162.158.90.89', 5, 2, 1536005189),
('162.158.90.89', 3, 2, 1536005097),
('162.158.90.89', 4, 2, 1536005104),
('162.158.90.89', 6, 2, 1536005153),
('162.158.90.89', 7, 2, 1536005183),
('162.158.90.89', 2, 2, 1536005160),
('162.158.88.91', 6, 2, 1536092929),
('162.158.88.91', 9, 2, 1536092970),
('162.158.88.91', 11, 2, 1536092940),
('162.158.88.91', 1, 2, 1536092948),
('162.158.88.91', 8, 2, 1536092956),
('162.158.88.91', 15, 2, 1536092962),
('162.158.88.91', 7, 2, 1536092981),
('162.158.88.91', 2, 2, 1536092987),
('162.158.88.91', 4, 2, 1536092994),
('162.158.92.177', 3, 2, 1536093055),
('162.158.88.169', 10, 2, 1536181197),
('162.158.88.169', 7, 2, 1536181202),
('162.158.88.169', 12, 2, 1536181207),
('162.158.88.169', 8, 2, 1536181216),
('162.158.88.169', 2, 2, 1536181221),
('162.158.88.169', 3, 2, 1536181228),
('162.158.88.169', 4, 2, 1536181237),
('162.158.88.169', 5, 2, 1536181243),
('172.68.254.234', 12, 2, 1536591748),
('172.68.255.73', 7, 2, 1536601631),
('172.68.65.35', 7, 2, 1537929999),
('172.68.65.245', 2, 2, 1538540583),
('172.68.65.173', 1, 2, 1539155571),
('172.69.62.171', 3, 2, 1539155573),
('172.69.62.195', 4, 2, 1539155575),
('172.68.65.47', 5, 2, 1539155577),
('162.158.78.63', 6, 2, 1539769311),
('162.158.79.4', 7, 2, 1539769325),
('172.68.211.201', 4, 2, 1537931373),
('8.37.71.55', 2, 2, 1536653446),
('8.37.71.16', 1, 2, 1539159600),
('172.69.33.130', 7, 2, 1538906963),
('172.68.47.155', 5, 2, 1536655552),
('8.37.70.42', 3, 2, 1539159267),
('172.68.211.201', 6, 2, 1536658729),
('162.158.224.177', 3, 2, 1537184306),
('162.158.62.254', 11, 2, 1537280093),
('162.158.78.135', 2, 2, 1537930046),
('162.158.78.231', 5, 2, 1537930050),
('162.158.79.130', 4, 2, 1537930054),
('172.69.62.93', 6, 2, 1537929994),
('172.69.33.10', 2, 2, 1537319911),
('172.68.46.202', 7, 2, 1539159260),
('172.68.211.225', 7, 2, 1537319958),
('172.68.211.225', 3, 2, 1538906961),
('8.37.70.116', 2, 2, 1537320017),
('8.37.71.11', 5, 2, 1537336794),
('162.158.38.147', 11, 2, 1537352497),
('162.158.38.45', 5, 2, 1537352528),
('162.158.38.171', 13, 2, 1537352560),
('172.68.255.91', 7, 2, 1539532966),
('172.68.46.208', 6, 2, 1537389203),
('172.68.46.202', 6, 2, 1537390020),
('172.68.47.155', 4, 2, 1537390045),
('162.158.178.50', 6, 2, 1537760678),
('172.68.254.131', 6, 2, 1537518327),
('172.68.254.95', 6, 2, 1537860745),
('172.68.253.136', 6, 2, 1537519606),
('172.68.255.151', 13, 2, 1537511925),
('172.68.254.131', 16, 2, 1537511939),
('172.68.254.131', 3, 2, 1537511942),
('172.68.254.131', 9, 2, 1538722340),
('172.68.254.131', 10, 2, 1537511948),
('162.158.178.50', 3, 2, 1537518327),
('172.68.254.131', 12, 2, 1539008156),
('172.68.254.65', 4, 2, 1538476766),
('172.68.255.151', 6, 2, 1537521387),
('172.68.254.131', 7, 2, 1539411446),
('172.68.255.103', 13, 2, 1539602568),
('172.68.255.103', 5, 2, 1537521054),
('162.158.178.92', 6, 2, 1537521410),
('162.158.107.42', 6, 2, 1537521417),
('172.68.255.91', 6, 2, 1537547955),
('172.69.22.61', 14, 2, 1537547584),
('172.69.23.8', 7, 2, 1537547827),
('172.69.23.8', 6, 2, 1537547835),
('172.69.23.8', 16, 2, 1537547800),
('172.68.254.95', 4, 2, 1537547933),
('172.68.255.103', 4, 2, 1537548043),
('172.68.253.244', 4, 2, 1537548118),
('172.68.255.85', 6, 2, 1537548129),
('172.68.255.85', 7, 2, 1539596031),
('172.68.254.65', 5, 2, 1537760684),
('172.68.253.136', 7, 2, 1538558035),
('2a03:2880:ff:22', 7, 2, 1537761325),
('172.68.255.151', 7, 2, 1538642423),
('172.68.255.151', 17, 2, 1537761345),
('172.68.255.151', 18, 2, 1537761342),
('172.68.255.151', 19, 2, 1537761351),
('162.158.74.50', 7, 2, 1537761349),
('172.68.255.103', 2, 2, 1537761555),
('172.68.255.151', 1, 2, 1537761754),
('172.68.255.91', 3, 2, 1537761792),
('172.68.254.65', 13, 2, 1539595812),
('8.37.71.17', 7, 2, 1537763043),
('172.69.62.111', 7, 2, 1537763579),
('172.68.255.79', 6, 2, 1537839585),
('172.68.255.79', 7, 2, 1537843408),
('172.68.253.244', 7, 2, 1539224394),
('172.68.253.136', 8, 2, 1539599702),
('172.68.255.103', 8, 2, 1539600662),
('162.158.178.92', 8, 2, 1539608144),
('172.68.254.131', 8, 2, 1539584572),
('162.158.178.200', 8, 2, 1538455843),
('172.68.254.95', 8, 2, 1539580965),
('172.69.70.88', 8, 2, 1537844708),
('172.68.253.244', 8, 2, 1538554717),
('172.68.255.79', 8, 2, 1538991814),
('162.158.178.188', 8, 2, 1539955945),
('172.68.255.85', 8, 2, 1538387737),
('172.68.255.91', 8, 2, 1538472289),
('162.158.106.35', 8, 2, 1537876236),
('162.158.111.246', 8, 2, 1537845162),
('2a03:2880:11ff:', 8, 2, 1537845223),
('172.68.254.65', 8, 2, 1539581914),
('172.68.255.151', 8, 2, 1539578639),
('180.179.142.108', 8, 2, 1537845299),
('162.158.165.147', 8, 2, 1537845300),
('162.158.178.50', 8, 2, 1539934634),
('162.158.107.42', 8, 2, 1537845606),
('162.158.255.45', 8, 2, 1537845615),
('172.68.146.157', 8, 2, 1537845676),
('172.69.69.123', 8, 2, 1537846027),
('8.37.70.220', 8, 2, 1537846422),
('172.68.144.132', 8, 2, 1537846775),
('172.68.65.245', 8, 2, 1537846923),
('172.68.189.132', 8, 2, 1537849902),
('172.68.255.49', 8, 2, 1538639434),
('162.158.79.136', 8, 2, 1537855222),
('172.68.65.89', 8, 2, 1537855222),
('162.158.106.101', 8, 2, 1537855232),
('172.68.253.244', 2, 2, 1538441471),
('172.68.189.174', 8, 2, 1537876489),
('172.69.134.248', 8, 2, 1537880708),
('172.69.62.21', 8, 2, 1537886045),
('162.158.178.200', 6, 2, 1537890793),
('172.69.23.38', 8, 2, 1537918283),
('2600:1700:45a0:', 8, 2, 1537929144),
('162.158.79.52', 8, 2, 1537930002),
('162.158.78.159', 3, 2, 1537930042),
('172.68.47.221', 7, 2, 1539770306),
('172.69.33.130', 1, 2, 1537931379),
('172.68.211.201', 2, 2, 1537931381),
('162.158.59.9', 3, 2, 1538906954),
('172.68.46.202', 3, 2, 1537931470),
('162.158.59.153', 5, 2, 1537931530),
('162.158.58.80', 6, 2, 1538906965),
('172.68.46.208', 4, 2, 1538906961),
('172.69.33.10', 6, 2, 1539770486),
('172.68.142.46', 8, 2, 1537935455),
('172.68.253.136', 1, 2, 1537976807),
('172.68.254.131', 1, 2, 1537976811),
('162.158.178.200', 3, 2, 1537976953),
('172.68.255.91', 9, 2, 1538530680),
('162.158.165.201', 8, 2, 1538004167),
('162.158.243.94', 6, 2, 1538029294),
('167.114.124.132', 8, 2, 1538283823),
('172.69.62.15', 7, 2, 1538283834),
('162.158.79.232', 7, 2, 1538283864),
('172.68.211.225', 8, 2, 1538285240),
('162.158.58.242', 7, 2, 1538285258),
('172.68.255.79', 5, 2, 1538379195),
('172.68.253.136', 3, 2, 1538381505),
('162.158.178.50', 7, 2, 1539655288),
('172.68.255.151', 10, 2, 1538531060),
('172.68.255.91', 2, 2, 1538441448),
('172.68.255.49', 5, 2, 1538442381),
('172.68.255.103', 11, 2, 1538640201),
('172.68.255.49', 14, 2, 1538452465),
('172.68.254.95', 9, 2, 1538639574),
('172.68.254.95', 7, 2, 1538474201),
('172.68.255.103', 3, 2, 1538474258),
('172.68.255.103', 9, 2, 1538706820),
('172.68.255.79', 9, 2, 1538476147),
('172.68.255.79', 11, 2, 1539399121),
('172.68.253.244', 11, 2, 1538531771),
('172.68.47.155', 2, 2, 1538542040),
('8.37.70.36', 4, 2, 1538542041),
('172.68.211.225', 1, 2, 1538906960),
('162.158.58.242', 5, 2, 1538542077),
('8.37.70.88', 6, 2, 1539160020),
('162.158.106.35', 7, 2, 1538558027),
('172.68.255.85', 12, 2, 1539596034),
('172.68.253.136', 11, 2, 1538639148),
('162.158.178.92', 9, 2, 1538639174),
('172.68.253.136', 9, 2, 1538714214),
('162.158.178.50', 9, 2, 1539594808),
('162.158.155.7', 16, 2, 1538697427),
('162.158.154.240', 10, 2, 1538697428),
('162.158.155.7', 11, 2, 1538697430),
('162.158.154.240', 12, 2, 1538697431),
('162.158.154.36', 13, 2, 1538697432),
('172.68.255.151', 20, 2, 1538706079),
('172.68.255.151', 11, 2, 1539596913),
('172.68.255.85', 9, 2, 1538706870),
('172.68.253.244', 9, 2, 1539601928),
('172.68.255.49', 9, 2, 1538722100),
('172.68.254.65', 9, 2, 1538707204),
('172.68.254.65', 11, 2, 1539596945),
('172.68.254.95', 12, 2, 1539989955),
('172.68.47.155', 1, 2, 1538906952),
('23.229.105.162', 2, 2, 1538906953),
('172.68.46.202', 4, 2, 1538906954),
('172.68.47.155', 6, 2, 1538906955),
('162.158.59.9', 10, 2, 1538906956),
('23.229.105.162', 11, 2, 1538906957),
('162.158.58.242', 12, 2, 1538994277),
('172.69.33.10', 13, 2, 1538906958),
('162.158.58.80', 14, 2, 1538906959),
('162.158.58.242', 16, 2, 1538906960),
('162.158.58.80', 5, 2, 1538906962),
('23.229.105.162', 6, 2, 1538906963),
('172.68.46.202', 8, 2, 1538906964),
('162.158.58.110', 7, 2, 1538906966),
('162.158.58.110', 8, 2, 1538906966),
('172.68.211.225', 9, 2, 1538906967),
('172.68.255.151', 5, 2, 1538969296),
('172.68.254.95', 2, 2, 1538982088),
('172.68.255.151', 12, 2, 1539596226),
('172.68.254.65', 12, 2, 1539159048),
('172.68.255.49', 12, 2, 1539082240),
('162.158.106.221', 12, 2, 1539005766),
('172.69.62.21', 12, 2, 1538991288),
('172.68.255.79', 12, 2, 1538998337),
('172.68.255.103', 12, 2, 1539596515),
('162.158.106.35', 12, 2, 1539596126),
('172.68.146.61', 12, 2, 1538991882),
('172.68.253.244', 12, 2, 1539596253),
('162.158.178.50', 12, 2, 1539594433),
('162.158.178.200', 12, 2, 1539594496),
('2a03:2880:11ff:', 12, 2, 1538996965),
('172.68.255.91', 12, 2, 1539007790),
('172.69.68.248', 12, 2, 1539004771),
('162.158.6.111', 12, 2, 1539100085),
('172.68.255.85', 2, 2, 1539133751),
('172.69.33.130', 5, 2, 1539159266),
('162.158.58.80', 4, 2, 1539159570),
('172.68.253.136', 5, 2, 1539216574),
('172.68.253.136', 2, 2, 1539318946),
('162.158.178.200', 9, 2, 1539597573),
('172.68.255.49', 11, 2, 1539399112),
('162.158.178.200', 7, 2, 1539593113),
('2a03:2880:ff:13', 12, 2, 1539594425),
('162.158.178.92', 13, 2, 1539602685),
('162.158.106.221', 13, 2, 1539595129),
('2a03:2880:ff:17', 13, 2, 1539595141),
('162.158.107.42', 13, 2, 1539595141),
('2a03:2880:ff:16', 13, 2, 1539595199),
('162.158.166.76', 8, 2, 1539595567),
('162.158.178.92', 14, 2, 1539596268),
('162.158.106.11', 12, 2, 1539596136),
('2a03:2880:ff:11', 12, 2, 1539596136),
('172.69.54.8', 12, 2, 1539596174),
('162.158.178.92', 7, 2, 1539596260),
('172.68.254.95', 13, 2, 1539596284),
('172.68.255.103', 14, 2, 1539596308),
('172.68.255.79', 14, 2, 1539596578),
('172.68.254.131', 14, 2, 1539596633),
('172.68.255.79', 13, 2, 1539596918),
('172.68.253.136', 14, 2, 1539601952),
('172.68.211.201', 13, 2, 1539598333),
('172.69.33.130', 12, 2, 1539598563),
('162.158.178.92', 17, 2, 1539601880),
('172.68.254.65', 14, 2, 1539601932),
('162.158.107.42', 14, 2, 1539601935),
('2a03:2880:ff:17', 14, 2, 1539601950),
('162.158.74.248', 14, 2, 1539601950),
('172.68.255.91', 14, 2, 1539601963),
('162.158.186.17', 14, 2, 1539601988),
('172.68.254.131', 13, 2, 1539602663),
('162.158.178.200', 13, 2, 1539602958),
('8.37.70.242', 14, 2, 1539605352),
('172.68.253.136', 15, 2, 1539610836),
('172.68.255.151', 14, 2, 1539653273),
('172.68.255.79', 1, 2, 1539704446),
('162.158.78.81', 15, 2, 1539769313),
('172.69.62.177', 12, 2, 1539769318),
('162.158.78.51', 16, 2, 1539769321),
('162.158.79.160', 17, 2, 1539769323),
('162.158.59.9', 16, 2, 1539770269),
('172.69.33.130', 15, 2, 1539770315),
('172.69.33.130', 17, 2, 1539770987),
('162.158.150.117', 8, 2, 1539771185),
('172.69.134.170', 11, 2, 1539776594),
('162.158.178.50', 14, 2, 1539910744),
('172.68.255.49', 13, 2, 1539966069);

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
(16, 23, 1, 274, 1, 1),
(17, 6, 2, 289, 2, 196),
(18, 7, 2, 293, 1, 302),
(19, 13, 2, 291, 1, 55),
(20, 14, 2, 291, 1, 37),
(21, 12, 2, 292, 1, 143),
(22, 11, 2, 289, 1, 63),
(23, 10, 2, 279, 1, 26),
(24, 16, 2, 289, 2, 33),
(25, 4, 2, 282, 2, 143),
(26, 3, 2, 293, 1, 174),
(27, 2, 2, 284, 1, 144),
(28, 1, 2, 288, 1, 125),
(29, 5, 2, 283, 1, 175),
(30, 9, 2, 293, 1, 46),
(31, 8, 2, 291, 3, 167),
(32, 17, 2, 293, 1, 17),
(33, 18, 2, 266, 1, 5),
(34, 19, 2, 266, 1, 3),
(35, 15, 2, 289, 2, 7),
(36, 20, 2, 277, 1, 2);

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
  `subject_id` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `content` text,
  `image_url` varchar(255) DEFAULT NULL,
  `video_id` varchar(100) DEFAULT NULL,
  `object` text,
  `single` tinyint(1) DEFAULT '0' COMMENT 'Bài học lẻ',
  `score` tinyint(4) NOT NULL DEFAULT '0',
  `benefit` text,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_share` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_id` bigint(20) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `alias`, `slug`, `teacher_id`, `subject_id`, `description`, `cate_id`, `content`, `image_url`, `video_id`, `object`, `single`, `score`, `benefit`, `is_hot`, `is_share`, `status`, `meta_id`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Cẩm nang dạy con: Nói sao cho trẻ chịu nghe', 'Cam nang day con: Noi sao cho tre chiu nghe', 'cam-nang-day-con-noi-sao-cho-tre-chiu-nghe', 15, 15, 'Nhìn sự việc bằng đôi mắt trẻ thơ sẽ giúp phụ huynh hiểu rõ con của mình', 1, '<p>Việc nu&ocirc;i dạy con trẻ lớn kh&ocirc;n lu&ocirc;n l&agrave; mong ước lớn nhất của những bậc phụ huynh. Tuy nhi&ecirc;n, kh&ocirc;ng &iacute;t những bậc l&agrave;m cha, l&agrave;m mẹ cảm thấy bất lực v&agrave; bối rối trước những h&agrave;nh vi bất hợp t&aacute;c v&agrave; kh&ocirc;ng v&acirc;ng lời của con trẻ như: N&oacute;i dối, k&eacute;n ăn, kh&ocirc;ng nghe lời, ham chơi, lười biếng...</p>\r\n\r\n<p>Tuy nhi&ecirc;n quan trọng hơn khi ch&uacute;ng ta muốn thay đổi những điều đ&oacute; th&igrave; hầu như trẻ lại kh&ocirc;ng chịu nghe. Vậy nguy&ecirc;n nh&acirc;n từ đ&acirc;u, những &ocirc;ng bố, b&agrave; mẹ n&ecirc;n l&agrave;m g&igrave;, ứng xử ra sao?</p>\r\n\r\n<p>Gi&aacute;o dục con cũng giống như m&ocirc;n trượt tuyết, nếu sợ h&atilde;i v&agrave; cố gắng ngả người về ph&iacute;a sườn n&uacute;i, kiểu g&igrave; cũng sẽ bị t&eacute;. V&igrave; n&oacute; l&agrave; m&ocirc;n thể thao đi ngược với bản năng của con người, c&agrave;ng lao về ph&iacute;a dốc ch&uacute;ng ta c&agrave;ng lạn l&aacute;ch một c&aacute;ch dễ d&agrave;ng. Bởi vậy, những &ocirc;ng bố, b&agrave; mẹ cần c&oacute; những c&aacute;ch cư xử th&ocirc;ng minh, kh&eacute;o l&eacute;o trong c&aacute;c t&igrave;nh huống cụ thể.</p>\r\n\r\n<p>Kh&oacute;a kỹ năng&nbsp;<strong>N&oacute;i sao cho trẻ chịu nghe</strong>&nbsp;sẽ gi&uacute;p c&aacute;c bậc phụ huynh l&agrave;m được những điều n&agrave;y.</p>\r\n\r\n<p>Kh&oacute;a học gồm 3 phần:</p>\r\n\r\n<p>Phần 1: V&igrave; sao trẻ kh&ocirc;ng chịu nghe lời?</p>\r\n\r\n<p>Phần 2: Những t&igrave;nh huống cụ thể, hay gặp trong cuộc sống</p>\r\n\r\n<p>Phần 3: C&aacute;ch ứng xử trong từng t&igrave;nh huống cụ thể</p>\r\n', '/public/uploads/images/khoa-hoc/thumb11_490548194-1507530679.jpg', '8LSLHQlxTnI', '<p>Kh&oacute;a học d&agrave;nh cho những ai đ&atilde;, đang v&agrave; sẽ trở th&agrave;nh những &ocirc;ng bố b&agrave; mẹ, những người lu&ocirc;n mong muốn t&igrave;m được một phương ph&aacute;p tốt nhất để gi&aacute;o dục con trẻ.</p>\r\n', 0, 0, '<p>Kh&oacute;a học sẽ gi&uacute;p c&aacute;c bậc phụ huynh biết những nguy&ecirc;n nh&acirc;n dẫn đến việc trẻ kh&ocirc;ng nghe lời, cung cấp cho phụ huynh một v&agrave;i t&igrave;nh huống điển h&igrave;nh v&agrave; c&aacute;ch cư xử trong những t&igrave;nh huống như v&acirc;y.</p>\r\n', 1, 0, 1, 22, NULL, 1, 1, '2017-10-09 13:31:43', '2017-10-11 10:09:07'),
(2, 'Làm sao để trẻ an toàn và dạy con cách tự vệ', 'Lam sao de tre an toan va day con cach tu ve', 'lam-sao-de-tre-an-toan-va-day-con-cach-tu-ve', 15, NULL, 'Trang bị cho phụ huynh và trẻ tâm lý sẵn sàng ứng phó với những tình huống nguy hiểm trong cuộc sống', 1, '<p><strong>L&Agrave;M SAO ĐỂ TRẺ AN TO&Agrave;N V&Agrave; BIẾT TỰ VỆ</strong></p>\r\n\r\n<p>X&atilde; hội c&agrave;ng hiện đại, c&aacute;c nguồn nguy hiểm với trẻ em c&agrave;ng gia tăng v&agrave; cha mẹ kh&ocirc;ng thể n&agrave;o kiểm so&aacute;t được.<br />\r\nĐặc biệt, bạn sẽ kh&ocirc;ng bao giờ lường trước được điều g&igrave; sẽ g&acirc;y nguy hại cho con m&igrave;nh khi c&aacute;c t&aacute;c nh&acirc;n g&acirc;y nguy hiểm c&oacute; mặt ở khắp mọi nơi, thậm ch&iacute; ngay trong gia đ&igrave;nh bạn. L&agrave; một bậc l&agrave;m cha l&agrave;m mẹ bận bịu với c&ocirc;ng ăn việc l&agrave;m, bạn lại kh&ocirc;ng thể ở b&ecirc;n con suốt ng&agrave;y để che chở bảo vệ con. Bởi vậy, tr&aacute;ch nhiệm của người l&agrave;m cha mẹ l&agrave; trang bị cho con những kiến thức để tự bảo vệ m&igrave;nh trong những t&igrave;nh huống nguy hiểm.</p>\r\n\r\n<p>Kh&oacute;a học n&agrave;y gồm c&oacute; 2 phần ch&iacute;nh:</p>\r\n\r\n<p><strong>PHẦN 1: Nguy hiểm đến từ đ&acirc;u?</strong></p>\r\n\r\n<p><strong>B&agrave;i 1: Nguy hiểm đến từ ch&iacute;nh m&igrave;nh</strong></p>\r\n\r\n<p>- Đ&oacute; l&agrave; việc ch&uacute;ng ta c&oacute; niềm tin m&ugrave; qu&aacute;ng</p>\r\n\r\n<p>- C&oacute; những định kiến cũng như tự giới hạn bản th&acirc;n</p>\r\n\r\n<p>- Kh&ocirc;ng ch&acirc;n qu&yacute; ch&iacute;nh bản th&acirc;n m&igrave;nh</p>\r\n\r\n<p><strong>B&agrave;i 2: Nguy hiểm đến từ người th&acirc;n</strong></p>\r\n\r\n<p>C&oacute; những t&igrave;nh huống g&acirc;y nguy hiểm cho trẻ đến từ ch&iacute;nh c&aacute;c bậc l&agrave;m cha me, nếu kh&ocirc;ng để &yacute; sẽ g&acirc;y ra những hậu quả nghi&ecirc;m trọng. V&iacute; dụ như việc cha mẹ &aacute;p đặt, ch&ecirc; bai, nghi ngờ con m&igrave;nh...</p>\r\n\r\n<p><strong>B&agrave;i 3: Nguy hiểm đến từ bạn b&egrave;</strong></p>\r\n\r\n<p>Trẻ kh&ocirc;ng thể trưởng th&agrave;nh v&agrave; ph&aacute;t triển khi thiếu đi quan hệ b&egrave; bạn. Từ nh&oacute;m bạn b&egrave; những t&igrave;nh huống nguy hiểm c&oacute; thể diễn ra mu&ocirc;n h&igrave;nh, vạn trạng: Bị bạn b&egrave; bạo lực, bị ảnh hưởng lối sống, th&oacute;i quen, &aacute;p lực từ bạn b&egrave; rủ r&ecirc; hay tin tưởng qu&aacute; độ v&agrave;o bạn b&egrave;.</p>\r\n\r\n<p><strong>B&agrave;i 4: Nguy hiểm đến từ người quen v&agrave; người lạ:</strong></p>\r\n\r\n<p>Cuộc sống đặt ra cho phụ huynh v&agrave; con trẻ rất nhiều nguy hiểm. Ch&uacute;ng ta c&oacute; thể điểm mặt được một v&agrave;i t&igrave;nh huống ti&ecirc;u biểu, để phụ huynh c&oacute; được những bước chuẩn bị v&agrave; c&aacute;ch dạy cho con ứng ph&oacute; với c&aacute;c t&igrave;nh huống đ&oacute;. Một v&agrave;i t&igrave;nh huống hay gặp phải như: Khi trẻ bị bắt c&oacute;c, trẻ bị lạc, bị bạo h&agrave;nh.</p>\r\n\r\n<p><strong>B&agrave;i 5: Nguy hiểm tiềm ẩn đến từ m&ocirc;i trường</strong></p>\r\n\r\n<p>M&ocirc;i trường n&agrave;o cũng lu&ocirc;n tiềm ẩn những nguy cơ m&agrave; do ch&iacute;nh m&ocirc;i trường đ&oacute; mang lại. Một v&agrave;i t&igrave;nh huống nguy hiểm đến từ: Đồ b&eacute;n nhọn trong gia đ&igrave;nh, điện, nước, nhiệt độ, tốc độ, độ cao...</p>\r\n\r\n<p><strong>PHẦN 2: Dạy con tự vệ v&agrave; xử l&yacute; t&igrave;nh huống</strong></p>\r\n\r\n<p><strong>B&agrave;i 1: Dạy con tự vệ v&agrave; xử l&yacute; t&igrave;nh huống</strong></p>\r\n\r\n<p>Cuộc sống đặt ra cho phụ huynh v&agrave; con trẻ rất nhiều nguy hiểm. Ch&uacute;ng ta c&oacute; thể điểm mặt được một v&agrave;i t&igrave;nh huống ti&ecirc;u biểu, để phụ huynh c&oacute; được những bước chuẩn bị v&agrave; c&aacute;ch dạy cho con ứng ph&oacute; với c&aacute;c t&igrave;nh huống đ&oacute;. V&iacute; dụ: Khi con ở nh&agrave; một m&igrave;nh c&oacute; người lạ v&agrave;o hỏi ba mẹ th&igrave; cần l&agrave;m g&igrave;? Khi trẻ bị đ&agrave;n anh, đ&agrave;n chị trong lớp bạo lực n&ecirc;n như thế n&agrave;o?....</p>\r\n\r\n<p><strong>Lời kết:&nbsp;</strong></p>\r\n\r\n<p>Cuộc sống mu&ocirc;n h&igrave;nh vạn trạng v&agrave; ch&uacute;ng ta kh&ocirc;ng thể n&agrave;o biết được c&ocirc;ng thức của cuộc sống l&agrave; g&igrave;? Tuy nhi&ecirc;n h&atilde;y cố gắng sống một c&aacute;ch chủ động, trang bị cho m&igrave;nh v&agrave; con những kiến thức thật sự cần thiết để ứng ph&oacute; một c&aacute;ch nhanh ch&oacute;ng v&agrave; giảm tải tối đa những nguy hiểm c&oacute; thể đến với bản th&acirc;n m&igrave;nh. Trải nghiệm hoặc chứng kiến sự trải nghiệm của người kh&aacute;c cũng mang đến cho ch&uacute;ng ta một kinh nghiệm n&agrave;o đ&oacute; trong cuộc sống n&agrave;y.</p>\r\n', '/public/uploads/images/khoa-hoc/thumb11_609032-1507531645.jpg', NULL, 'D&agrave;nh cho những ai đ&atilde;, đang v&agrave; sẽ trở th&agrave;nh những &ocirc;ng bố, b&agrave; mẹ. Mong muốn c&oacute; một phương ph&aacute;p gi&aacute;o dục v&agrave; bảo vệ con trước những mối nguy hiểm của x&atilde; hội.', 0, 0, 'Cuộc sống bận rộn sẽ khiến c&aacute;c bậc phụ huynh kh&ocirc;ng thể c&oacute; mặt b&ecirc;n con mọi l&uacute;c mọi nơi. V&igrave; thế kh&oacute;a học n&agrave;y sẽ gi&uacute;p c&aacute;c &ocirc;ng bố, b&agrave; mẹ nhận định những mối hiểm nguy xung quanh v&agrave; trang bị cho con những kỹ năng cần thiết để tự đối ph&oacute;. Kh&oacute;a học sẽ mang lại cho qu&yacute; phụ huynh c&aacute;i nh&igrave;n to&agrave;n diện về những nguy hiểm c&oacute; thể đến với con, những t&igrave;nh huống cụ thể m&agrave; con c&oacute; thể gặp trong cuộc sống, từ đ&oacute; c&oacute; những c&aacute;ch ứng xử hợp l&yacute;, kịp thời.', 0, 0, 1, 23, NULL, 1, 1, '2017-10-09 13:48:21', '2017-10-09 13:48:21'),
(3, 'Khám phá ưu thế bản thân để định hướng cuộc đời', 'Kham pha uu the ban than de dinh huong cuoc doi', 'kham-pha-uu-the-ban-than-de-dinh-huong-cuoc-doi', 16, NULL, 'Để thành công bạn phải biết mình có những gì.', 1, '<p>V&igrave; sao Edison lại l&agrave; một nh&agrave; khoa học với 1.907 ph&aacute;t minh s&aacute;ng chế m&agrave; kh&ocirc;ng phải l&agrave; một nh&agrave; văn?</p>\r\n\r\n<p>V&igrave; sao Bill Gates trở th&agrave;nh &ocirc;ng chủ của tập đo&agrave;n Microsoft khổng lồ m&agrave; kh&ocirc;ng phải l&agrave; đầu bếp?</p>\r\n\r\n<p>V&igrave; sao Sơn T&ugrave;ng MTP l&agrave; một ca sĩ được y&ecirc;u th&iacute;ch m&agrave; kh&ocirc;ng phải l&agrave; một b&aacute;c sĩ? C&ograve;n bạn, bạn c&oacute; thể l&agrave; một người như thế n&agrave;o đ&oacute; đặc biệt hơn?</p>\r\n\r\n<p>Để th&agrave;nh c&ocirc;ng, đầu ti&ecirc;n bạn phải hiểu m&igrave;nh l&agrave; người như thế n&agrave;o. Nếu biết m&igrave;nh l&agrave; một ch&uacute; lạc đ&agrave;, ắt hẳn bạn sẽ tha hồ tung ho&agrave;nh tr&ecirc;n sa mạc hơn l&agrave; nằm y&ecirc;n trong chiếc chuồng sở th&uacute;.</p>\r\n\r\n<p>Nếu biết m&igrave;nh l&agrave; một ch&uacute; chim c&oacute; đ&ocirc;i c&aacute;nh khỏe mạnh, ắt hẳn bạn đ&atilde; d&aacute;m sống tự do tr&ecirc;n bầu trời thay v&igrave; ngồi t&igrave;m kiếm sự an to&agrave;n trong một chiếc lồng.</p>\r\n\r\n<p>Khi biết m&igrave;nh l&agrave; ai, c&oacute; tiềm năng g&igrave;, người ta sẽ kh&ocirc;ng cam chịu với số phận hiện tại v&agrave; lu&ocirc;n phấn đấu để ph&aacute;t triển vượt bậc hơn.</p>\r\n\r\n<p>Hiểu được bản th&acirc;n th&igrave; bạn sẽ l&agrave;m được nhiều hơn những g&igrave; bạn nghĩ.</p>\r\n\r\n<p>Nếu kh&ocirc;ng biết m&igrave;nh c&oacute; ưu thế g&igrave;, bạn sẽ chọn chọn sai nghề, l&agrave;m kh&ocirc;ng đ&uacute;ng c&ocirc;ng việc, ph&aacute;t triển tr&igrave; trệ, kh&ocirc;ng c&oacute; ước mơ, bất lực trong việc l&agrave;m chủ được vận mệnh tương lai của ch&iacute;nh m&igrave;nh...</p>\r\n\r\n<p>C&oacute; những người lu&ocirc;n cố gắng, cố gắng v&agrave; cố gắng m&agrave; thực tế vẫn vậy, chẳng c&oacute; g&igrave; kh&aacute; hơn! C&oacute; thể v&igrave; họ đ&atilde; cố gắng ở lĩnh vực kh&ocirc;ng phải sở trường của m&igrave;nh.</p>\r\n\r\n<p>C&oacute; những người muốn l&agrave;m một điều g&igrave; đ&oacute; kh&aacute;c đi, họ kh&ocirc;ng muốn lẩn quẩn cả đời với những thứ mệt mỏi nhạt nhẽo như b&acirc;y giờ! Nhưng họ kh&ocirc;ng biết m&igrave;nh phải l&agrave;m g&igrave;? M&igrave;nh bắt đầu từ đ&acirc;u?! C&oacute; thể họ l&uacute;ng t&uacute;ng v&igrave; chưa nh&igrave;n ra được những khả năng m&igrave;nh đang c&oacute; để ph&aacute;t huy n&oacute;.</p>\r\n\r\n<p>C&oacute; rất nhiều người thực ra kh&ocirc;ng biết m&igrave;nh sống để l&agrave;m g&igrave;? Lẽ sống của m&igrave;nh l&agrave; chi? V&agrave; kh&ocirc;ng c&oacute; trong tay một mảnh giấy n&agrave;o để c&oacute; thể gọi l&agrave; c&oacute; kế hoạch cuộc đời.</p>\r\n\r\n<p>Trong những người đ&oacute; c&oacute; bạn trong đấy?</p>\r\n\r\n<p>H&atilde;y sử dụng hết 100% tiềm năng m&agrave; bạn c&oacute;, h&atilde;y l&agrave;m chủ vận mệnh của ch&iacute;nh m&igrave;nh sau Kh&oacute;a học Kh&aacute;m ph&aacute; ưu thế bản th&acirc;n để định hướng cuộc đời!</p>\r\n\r\n<p>Ch&uacute;c bạn sẽ hiểu m&igrave;nh l&agrave; ai, m&igrave;nh n&ecirc;n l&agrave;m g&igrave; trong cuộc đời n&agrave;y v&agrave; bản đồ tương lai bạn sẽ hiện r&otilde; trong l&ograve;ng b&agrave;n tay!</p>\r\n', '/public/uploads/images/khoa-hoc/thumb11_167158056-1507532030.jpg', 'pj-pV0sBGPU', 'Kh&oacute;a học d&agrave;nh cho tất cả ch&uacute;ng ta - những người c&ograve;n đang l&uacute;ng t&uacute;ng v&igrave; chưa nh&igrave;n ra được những khả năng của bản th&acirc;n để ph&aacute;t huy, sử dụng n&oacute; một c&aacute;ch hiệu quả.', 0, 0, '<p>Trong kh&oacute;a học Kh&aacute;m ph&aacute; ưu thế bản th&acirc;n để định hướng cuộc đời, bạn sẽ được Chuy&ecirc;n gia t&acirc;m l&yacute; &ndash; Kỷ lục gia Nguyễn Ho&agrave;ng Khắc Hiếu hướng dẫn ph&acirc;n t&iacute;ch chi tiết bản th&acirc;n bằng c&aacute;c c&ocirc;ng cụ:</p>\r\n\r\n<p>+ Sinh trắc học</p>\r\n\r\n<p>+ Tổng hợp nhận x&eacute;t</p>\r\n\r\n<p>+ So s&aacute;nh với h&igrave;nh mẫu</p>\r\n\r\n<p>+ Nội quan &amp; ph&acirc;n t&iacute;ch m&ocirc; h&igrave;nh SWOT</p>\r\n\r\n<p>+ Trắc nghiệm Holland</p>\r\n\r\n<p>+ Trắc nghiệm MBTI</p>\r\n\r\n<p>+ Trắc nghiệm Kh&iacute; chất, IQ, EQ, CQ</p>\r\n\r\n<p>+ Phương ph&aacute;p Thử nghiệm bản th&acirc;n</p>\r\n', 1, 0, 1, 25, NULL, 1, 1, '2017-10-09 13:54:16', '2017-10-11 10:06:59'),
(4, 'Kỹ năng giải tỏa Stress', 'Ky nang giai toa Stress', 'ky-nang-giai-toa-stress', 16, NULL, '12 cách đập tan tảng đá stress', 1, '<strong>Chương 1: Những liệu ph&aacute;p về sinh l&yacute;</strong><br />\r\nK&iacute;ch th&iacute;ch thần kinh<br />\r\n<strong>Chương 2: Biện ph&aacute;p tinh thần</strong><br />\r\nLối ra<br />\r\nTưởng tượng<br />\r\nGiao tiếp với điểm tựa tinh thần<br />\r\nVật nu&ocirc;i<br />\r\nSống th&ocirc;i m&agrave;!<br />\r\nT&ugrave;y duy&ecirc;n<br />\r\n<strong>Chương 3: Xử tr&iacute; th&ocirc;ng minh</strong><br />\r\nTận dụng stress để s&aacute;ng tạo<br />\r\nTh&aacute;o gỡ n&uacute;t thắt<br />\r\nB&agrave;n tay gi&uacute;p đỡ<br />\r\nĐ&agrave;m ph&aacute;n<br />\r\nNếu vẫn c&ograve;n stress th&igrave; &aacute;p dụng c&aacute;ch cuối c&ugrave;ng n&agrave;y', '/public/uploads/images/khoa-hoc/thumb11_166808576-1507532183.jpg', 'Dz-r1SC2fuk', 'Kh&oacute;a học d&agrave;nh cho những ai đang gặp bế tắc, thường xuy&ecirc;n cảm thấy stress trong cuộc sống, c&ocirc;ng việc...v&agrave; chưa t&igrave;m được lối ra.', 0, 0, 'Trong kh&oacute;a học n&agrave;y, TS Nguyễn Ho&agrave;ng Khắc Hiếu sẽ cung cấp cho c&aacute;c bạn những liệu ph&aacute;p sinh l&yacute; cũng như tinh thần để c&aacute;c bạn vượt qua stress một c&aacute;ch dễ d&agrave;ng. Đồng thời, trải nghiệm kh&oacute;a học, c&aacute;c bạn cũng sẽ học được c&aacute;ch th&aacute;o gỡ những bế tắc trong cuộc sống, trong c&ocirc;ng việc, tận dụng ch&iacute;nh stress để biến n&oacute; th&agrave;nh động lực vươn l&ecirc;n ph&iacute;a trước.', 1, 0, 1, 26, NULL, 1, 1, '2017-10-09 13:56:27', '2017-10-11 10:06:30'),
(5, 'CEO VinaLink chia sẻ cách làm Marketing trên Facebook từ A->Z', 'CEO VinaLink chia se cach lam Marketing tren Facebook tu A->Z', 'ceo-vinalink-chia-se-cach-lam-marketing-tren-facebook-tu-a-z', 8, NULL, 'Đừng thờ ơ với kênh giao tiếp khách hàng hiệu quả nhất hiện nay', 1, '<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\"><b>BẢN CHẤT SOCIAL MEDIA &amp; FACEBOOK MARKETING</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul style=\"list-style:none outside none; margin:0px; padding:0px; color:#474747; font-family:Arial; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:start; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" type=\"disc\">\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Bức tranh to&agrave;n cảnh về Facebook Thế giới v&agrave; Việt Nam</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">L&yacute; do sử dụng Facebook trong Marketing</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Thế mạnh &amp; t&iacute;nh social ho&aacute; trong Facebook Marketing</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">H&agrave;nh vi người d&ugrave;ng tr&ecirc;n Facebook</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Thực h&agrave;nh tạo v&agrave; thiết lập k&ecirc;nh fanpage theo nhu cầu</span></span></span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\"><b>NHỮNG CHỈ SỐ QUAN TRỌNG TR&Ecirc;N FACEBOOK</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul style=\"list-style:none outside none; margin:0px; padding:0px; color:#474747; font-family:Arial; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:start; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" type=\"disc\">\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Những chỉ số ch&iacute;nh tr&ecirc;n một Facebook Fanpage</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Reach v&agrave; c&aacute;c phương thức tăng reach</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Ph&acirc;n t&iacute;ch nguồn like của Fanpage v&agrave; h&agrave;nh vi người d&ugrave;ng theo nguồn like</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Cơ chế giới thiệu fanpage v&agrave; nội dung tương tự của Facebook.</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Đo lường hiệu quả của b&agrave;i đăng</span></span></span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Nội dung kh&oacute;a học</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\"><b>TĂNG LIKE &amp; QUẢNG B&Aacute; FANPAGE</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul style=\"list-style:none outside none; margin:0px; padding:0px; color:#474747; font-family:Arial; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:start; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" type=\"disc\">\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">C&aacute;c phương thức tăng like tốt nhất</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Tăng like qua nguồn lực b&ecirc;n ngo&agrave;i</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Tăng like dựa tr&ecirc;n cơ chế suggest của Facebook v&agrave; hệ thống page vệ tinh</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Tăng like qua group v&agrave; trang c&aacute; nh&acirc;n tr&ecirc;n Facebook</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Tăng like qua Facebook ads</span></span></span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\"><b>FACEBOOK ADS</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul style=\"list-style:none outside none; margin:0px; padding:0px; color:#474747; font-family:Arial; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:start; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" type=\"disc\">\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">C&aacute;c quy định, cơ chế hiển thị v&agrave; t&iacute;nh tiền của Facebook Ads</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Thiết lập t&agrave;i khoản Facebook ads</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">C&aacute;c c&ocirc;ng cụ tiếp cận kh&aacute;ch h&agrave;ng mục ti&ecirc;u qua Facebook Ads</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Những nguy&ecirc;n l&yacute; cơ bản của tạo mẫu quảng c&aacute;o</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Thiết lập Quảng c&aacute;o tăng like; Quảng c&aacute;o c&aacute;c b&agrave;i đăng v&agrave; Quảng c&aacute;o website</span></span></span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\"><b>PH&Aacute;T TRIỂN NỘI DUNG FANPAGE</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul style=\"list-style:none outside none; margin:0px; padding:0px; color:#474747; font-family:Arial; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:start; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" type=\"disc\">\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">C&aacute;c bước lập kế hoạch Facebook Marketing</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Quy định về đăng tải nội dung của Facebook</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Ph&aacute;t triển nội dung cho fanpage theo mục đ&iacute;ch: b&aacute;n h&agrave;ng;&nbsp; thương hiệu; cộng đồng &hellip;</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Những dạng nội dung được tương t&aacute;c nhiều tr&ecirc;n Facebook</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Sử dụng group v&agrave; trang c&aacute; nh&acirc;n trong ph&aacute;t triển nội dung fanpage</span></span></span></span></p>\r\n	</li>\r\n</ul>\r\n', '/public/uploads/images/khoa-hoc/thumb11_524478149-1507691529.jpg', 'UP6yQ0d5vCM', 'D&agrave;nh cho những c&aacute; nh&acirc;n y&ecirc;u th&iacute;ch Facebook v&agrave; đang c&oacute; mong muốn sử dụng Facebook như một k&ecirc;nh kinh doanh', 0, 0, '<p>Kiến thức đầy đủ &amp; cập nhật li&ecirc;n tục: Bạn sẽ được học c&aacute;c b&agrave;i giảng với những phương ph&aacute;p, những kinh nghiệm được giảng vi&ecirc;n chia sẻ trong kho&aacute; học, cập nhật những xu hướng mới nhất năm 2015</p>\r\n\r\n<p>Chi ph&iacute; thấp &ndash; hiệu quả cao: Thay v&igrave; bỏ ra h&agrave;ng triệu đồng để tới c&aacute;c trung t&acirc;m. Với ViettelStudy bạn vẫn được học với giảng vi&ecirc;n Tuấn H&agrave; - người uy t&iacute;n &amp; gi&agrave;u kinh nghiệm h&agrave;ng đầu Việt Nam trong lĩnh vực social marketing</p>\r\n\r\n<p>&nbsp;Tối ưu về thời gian: Bạn c&oacute; thể chủ động trong việc sắp xếp thời gian học, tự điều chỉnh tốc độ học theo khả năng v&agrave; c&oacute; thể n&acirc;ng cao kiến thức ngay sau khi học, tiết kiệm thời gian di chuyển giữa c&aacute;c địa điểm học; chủ động &ocirc;n tập v&agrave; học lại kiến thức</p>\r\n', 1, 0, 1, 27, NULL, 1, 1, '2017-10-11 10:12:48', '2017-10-11 10:12:49'),
(6, 'Kỹ năng xây dựng thương hiệu', 'Ky nang xay dung thuong hieu', 'ky-nang-xay-dung-thuong-hieu', 9, NULL, 'Tạo sự khác biệt cho thương hiệu', 1, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '/public/uploads/images/khoa-hoc/thumb11_782586130-1507691732.jpg', 'evMCCbWVkis', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, 0, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 1, 28, NULL, 1, 1, '2017-10-11 10:15:49', '2017-10-28 18:18:47'),
(7, 'Nghệ thuật bán hàng hiệu quả', 'Nghe thuat ban hang hieu qua', 'nghe-thuat-ban-hang-hieu-qua', 9, 1, 'Kỹ năng cần thiết để trở thành người bán hàng chuyên nghiệp', 4, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '/public/uploads/images/khoa-hoc/thumb11_290013033-1507691529.jpg', 'gHW7bMhCWJk', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.x', 0, 0, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.x', 1, 1, 1, 29, NULL, 1, 1, '2017-10-11 10:18:17', '2018-10-04 14:43:28'),
(9, 'Hàm số lượng giác - Toán 11', 'Ham so luong giac - Toan 11', 'ham-so-luong-giac-toan-11', 19, 1, 'Bài Hàm số lượng giác của Thầy Nguyễn Quốc Chí sẽ hướng dẫn chúng ta làm những dạng bài cơ bản, quan trọng nhất của phần này. Và thêm vào đó Thầy hướng dẫn thêm cách làm dạng bài này bằng máy tính cầm tay', 5, 'B&agrave;i H&agrave;m số lượng gi&aacute;c của Thầy Nguyễn Quốc Ch&iacute; sẽ hướng dẫn ch&uacute;ng ta l&agrave;m những dạng b&agrave;i cơ bản, quan trọng nhất của phần n&agrave;y. V&agrave; th&ecirc;m v&agrave;o đ&oacute; Thầy hướng dẫn th&ecirc;m c&aacute;ch l&agrave;m dạng b&agrave;i n&agrave;y bằng m&aacute;y t&iacute;nh cầm tay', '/public/uploads/images/thi-sinh-15378267326911162486947-1537844017.jpg', '', '', 1, 0, 'B&agrave;i H&agrave;m số lượng gi&aacute;c của Thầy Nguyễn Quốc Ch&iacute; sẽ hướng dẫn ch&uacute;ng ta l&agrave;m những dạng b&agrave;i cơ bản, quan trọng nhất của phần n&agrave;y. V&agrave; th&ecirc;m v&agrave;o đ&oacute; Thầy hướng dẫn th&ecirc;m c&aacute;ch l&agrave;m dạng b&agrave;i n&agrave;y bằng m&aacute;y t&iacute;nh cầm tay', 0, 0, 1, 41, NULL, 1, 1, '2018-10-05 09:33:18', '2018-10-05 09:40:55'),
(10, '[Bài 01] [BÍ KÍP ĐỌC SUY NGHĨ NGƯỜI KHÁC - Nguyễn Hoàng Khắc Hiếu] [Chương Quản Lý Cảm Xúc] ', '[Bai 01] [BI KIP DOC SUY NGHI NGUOI KHAC - Nguyen Hoang Khac Hieu] [Chuong Quan Ly Cam Xuc] ', 'bai-01-bi-kip-doc-suy-nghi-nguoi-khac-nguyen-hoang-khac-hieu-chuong-quan-ly-cam-xuc', 16, 10, '', 1, '', '/public/uploads/images/thumb00_081905408995654-1506935578.jpg', '5iIQrbhUNY8', '', 0, 10, '', 0, 0, 1, 43, NULL, 1, 1, '2018-10-09 15:55:16', '2018-10-09 15:55:16'),
(11, 'DAO ĐỘNG ĐIỀU HÒA', 'DAO DONG DIEU HOA', 'dao-dong-dieu-hoa', 20, 2, 'Dao động điều hòa là bài học đầu tiên trong chương đầu tiên của chương trình vật lý 12, khi đã hiểu và nắm chắc bài học này thì việc học các bài học sau trở nên dễ dàng hơn vì chúng có mối liên hệ khăng khít với nhau. Vậy chúng ta cần học và nắm chắc những kiến thức nào và các dạng bài tập tổng quát ra sao thì trong bài học này thầy sẽ hướng dẫn các em chi tiết nhé. Học trực tuyến tại: vhvschool.online', 6, '', '/public/uploads/images/tin-tuc/vatli12_thumb-1539398973.jpg', 'Lom1Xn8Mw-8', '', 0, 0, '', 0, 0, 1, 45, NULL, 1, 1, '2018-10-13 09:51:31', '2018-10-13 09:51:31'),
(12, 'Toán học lớp 10 - Đại số - Bài 1 - Mệnh đề - Tiết 1', 'Toan hoc lop 10 - Dai so - Bai 1 - Menh de - Tiet 1', 'toan-hoc-lop-10-dai-so-bai-1-menh-de-tiet-1', 14, 1, 'Sẽ giúp các em nắm bắt các kiến thức cơ bản và nâng cao một  cách nhanh nhất . Từ đó giúp các em có một nền tảng kiến thức vững chắc để phát triển tư duy và trí tuệ và giúp các em đạt được những ước mơ của riêng mình . Chúc các em thành công.', 4, 'Sẽ gi&uacute;p c&aacute;c em nắm bắt c&aacute;c kiến thức cơ bản v&agrave; n&acirc;ng cao một c&aacute;ch nhanh nhất . Từ đ&oacute; gi&uacute;p c&aacute;c em c&oacute; một nền tảng kiến thức vững chắc để ph&aacute;t triển tư duy v&agrave; tr&iacute; tuệ v&agrave; gi&uacute;p c&aacute;c em đạt được những ước mơ của ri&ecirc;ng m&igrave;nh . Ch&uacute;c c&aacute;c em th&agrave;nh c&ocirc;ng.', '/public/uploads/images/thumb00_083612161807506-1506935578.jpg', 'lQfmLX0Z1Zk', 'Sẽ gi&uacute;p c&aacute;c em nắm bắt c&aacute;c kiến thức cơ bản v&agrave; n&acirc;ng cao một c&aacute;ch nhanh nhất . Từ đ&oacute; gi&uacute;p c&aacute;c em c&oacute; một nền tảng kiến thức vững chắc để ph&aacute;t triển tư duy v&agrave; tr&iacute; tuệ v&agrave; gi&uacute;p c&aacute;c em đạt được những ước mơ của ri&ecirc;ng m&igrave;nh . Ch&uacute;c c&aacute;c em th&agrave;nh c&ocirc;ng.', 0, 0, 'Sẽ gi&uacute;p c&aacute;c em nắm bắt c&aacute;c kiến thức cơ bản v&agrave; n&acirc;ng cao một c&aacute;ch nhanh nhất . Từ đ&oacute; gi&uacute;p c&aacute;c em c&oacute; một nền tảng kiến thức vững chắc để ph&aacute;t triển tư duy v&agrave; tr&iacute; tuệ v&agrave; gi&uacute;p c&aacute;c em đạt được những ước mơ của ri&ecirc;ng m&igrave;nh . Ch&uacute;c c&aacute;c em th&agrave;nh c&ocirc;ng.', 0, 1, 1, 46, NULL, 1, 1, '2018-10-15 16:06:37', '2018-10-15 16:06:37'),
(13, 'Dao động điều hòa – vật lý 12 – Thầy Phạm Quốc Toản', 'Dao dong dieu hoa – vat ly 12 – Thay Pham Quoc Toan', 'dao-dong-dieu-hoa-vat-ly-12-thay-pham-quoc-toan', 7, 2, '', 6, 'dao động điều h&ograve;a l&agrave; b&agrave;i học đầu ti&ecirc;n trong chương đầu ti&ecirc;n của chương tr&igrave;nh vật l&yacute; 12, khi đ&atilde; hiểu v&agrave; nắm chắc b&agrave;i học n&agrave;y th&igrave; việc học c&aacute;c b&agrave;i học sau trở n&ecirc;n dễ d&agrave;ng hơn v&igrave; ch&uacute;ng c&oacute; mối li&ecirc;n hệ khăng kh&iacute;t với nhau. Vậy ch&uacute;ng ta cần học v&agrave; nắm chắc những kiến thức n&agrave;o v&agrave; c&aacute;c dạng b&agrave;i tập tổng qu&aacute;t ra sao th&igrave; trong b&agrave;i học n&agrave;y thầy sẽ hướng dẫn c&aacute;c em chi tiết nh&eacute;', '/public/uploads/images/thumb00_081905408995654-1506935578.jpg', 'Lom1Xn8Mw-8', '', 0, 0, 'dao động điều h&ograve;a l&agrave; b&agrave;i học đầu ti&ecirc;n trong chương đầu ti&ecirc;n của chương tr&igrave;nh vật l&yacute; 12, khi đ&atilde; hiểu v&agrave; nắm chắc b&agrave;i học n&agrave;y th&igrave; việc học c&aacute;c b&agrave;i học sau trở n&ecirc;n dễ d&agrave;ng hơn v&igrave; ch&uacute;ng c&oacute; mối li&ecirc;n hệ khăng kh&iacute;t với nhau. Vậy ch&uacute;ng ta cần học v&agrave; nắm chắc những kiến thức n&agrave;o v&agrave; c&aacute;c dạng b&agrave;i tập tổng qu&aacute;t ra sao th&igrave; trong b&agrave;i học n&agrave;y thầy sẽ hướng dẫn c&aacute;c em chi tiết nh&eacute;', 0, 1, 1, 47, NULL, 1, 1, '2018-10-15 16:16:53', '2018-10-15 16:16:53'),
(14, 'Định luật Cu Lông - Vật lý 11 - Thầy Phạm Quốc Toản', 'Dinh luat Cu Long - Vat ly 11 - Thay Pham Quoc Toan', 'dinh-luat-cu-long-vat-ly-11-thay-pham-quoc-toan', 11, 2, 'Khái niệm điện tích điểm, Định luật Cu- lông và công thức tính lực tương tác giữa các điện tích điểm được thầy Phạm Quốc Toản- giáo viên trường THPT Nguyễn Tất Thành - ĐHSP Hà Nội giảng rất chi tiết, trước khi đưa ra phương pháp giải cho các dạng bài tập thầy nhắc lại kiến thức lý thuyết cần nhớ, những ví dụ chọn lọc', 5, 'Định luật Cu L&ocirc;ng - Vật l&yacute; 11&nbsp;', '/public/uploads/images/thumb00_020027817132202-1506935578.jpg', '2Bp2PtNeiAA', 'học sinh', 0, 0, 'Kh&aacute;i niệm điện t&iacute;ch điểm, Định luật Cu- l&ocirc;ng v&agrave; c&ocirc;ng thức t&iacute;nh lực tương t&aacute;c giữa c&aacute;c điện t&iacute;ch điểm được thầy Phạm Quốc Toản- gi&aacute;o vi&ecirc;n trường THPT Nguyễn Tất Th&agrave;nh - ĐHSP H&agrave; Nội giảng rất chi tiết, trước khi đưa ra phương ph&aacute;p giải cho c&aacute;c dạng b&agrave;i tập thầy nhắc lại kiến thức l&yacute; thuyết cần nhớ, những v&iacute; dụ chọn lọc', 0, 1, 1, 48, NULL, 1, 1, '2018-10-15 16:23:20', '2018-10-15 16:23:20'),
(15, 'Tuyensinh.VHV_TỔNG KẾT CHƯƠNG TRÌNH TƯ VẤN HƯỚNG NGHIỆP, TƯ VẤN TUYỂN SINH ĐH, CĐ NĂM 2018.', 'Tuyensinh.VHV_TONG KET CHUONG TRINH TU VAN HUONG NGHIEP, TU VAN TUYEN SINH DH, CD NAM 2018.', 'tuyensinhvhv-tong-ket-chuong-trinh-tu-van-huong-nghiep-tu-van-tuyen-sinh-dh-cd-nam-2018', 7, 0, 'Năm 2018 là năm thứ 8, Công ty Cổ phần Kết Nối văn Hóa Việt tổ chức chương trình Ngày hội Hướng nghiệp, Tuyển sinh ĐH, CĐ và Sổ tay Hướng nghiệp, những thông tin cần biết về tuyển sinh ĐH, CĐ. Chương trình đã nhận được sự hưởng ứng tích cực từ các trường ĐH, CĐ, Trường ', 7, 'Năm 2018 l&agrave; năm thứ 8, C&ocirc;ng ty Cổ phần Kết Nối văn H&oacute;a Việt tổ chức chương tr&igrave;nh Ng&agrave;y hội Hướng nghiệp, Tuyển sinh ĐH, CĐ v&agrave; Sổ tay Hướng nghiệp, những th&ocirc;ng tin cần biết về tuyển sinh ĐH, CĐ. Chương tr&igrave;nh đ&atilde; nhận được sự hưởng ứng t&iacute;ch cực từ c&aacute;c trường ĐH, CĐ, Trường', '/public/uploads/images/img_6335-1537520631.JPG', '-vhRPGMOZC4', 'học sinh ,sinh vi&ecirc;n', 0, 0, 'Năm 2018 l&agrave; năm thứ 8, C&ocirc;ng ty Cổ phần Kết Nối văn H&oacute;a Việt tổ chức chương tr&igrave;nh Ng&agrave;y hội Hướng nghiệp, Tuyển sinh ĐH, CĐ v&agrave; Sổ tay Hướng nghiệp, những th&ocirc;ng tin cần biết về tuyển sinh ĐH, CĐ. Chương tr&igrave;nh đ&atilde; nhận được sự hưởng ứng t&iacute;ch cực từ c&aacute;c trường ĐH, CĐ, Trường', 0, 1, 1, 49, NULL, 1, 1, '2018-10-15 16:27:34', '2018-10-15 16:27:34'),
(16, 'Chuyển động thẳng đều - Vật lý 10', 'Chuyen dong thang deu - Vat ly 10', 'chuyen-dong-thang-deu-vat-ly-10', 20, 2, 'Bài Chuyển động thẳng đều - bài đầu tiên của Vật lý 10 được thầy giáo Phạm Quốc Toản- giáo viên trường THPT Nguyễn Tất Thành - ĐHSP Hà Nội giảng dạy theo phương pháp nhắc lại những kiến thức cần nhớ sau đó thầy đưa ra các ví dụ được thầy hướng dẫn giải chi tiết và cuối cùng thầy đúc kết lại phương pháp giảng dạy cho mỗi dạng bài tập', 4, 'B&agrave;i Chuyển động thẳng đều - b&agrave;i đầu ti&ecirc;n của Vật l&yacute; 10 được thầy gi&aacute;o Phạm Quốc Toản- gi&aacute;o vi&ecirc;n trường THPT Nguyễn Tất Th&agrave;nh - ĐHSP H&agrave; Nội giảng dạy theo phương ph&aacute;p nhắc lại những kiến thức cần nhớ sau đ&oacute; thầy đưa ra c&aacute;c v&iacute; dụ được thầy hướng dẫn giải chi tiết v&agrave; cuối c&ugrave;ng thầy đ&uacute;c kết lại phương ph&aacute;p giảng dạy cho mỗi dạng b&agrave;i tập', '/public/uploads/images/tin-tuc/thumb00_085701186119988-1507521708.jpg', '3sbsKE-qZzQ', 'LỚP 10', 0, 0, '3sbsKE-qZzQ', 0, 1, 1, 50, NULL, 1, 1, '2018-10-15 17:07:00', '2018-10-15 17:07:00'),
(17, 'Hóa học lớp 10 - Bài 1 - Thành phần nguyên tử - Tiết 1', 'Hoa hoc lop 10 - Bai 1 - Thanh phan nguyen tu - Tiet 1', 'hoa-hoc-lop-10-bai-1-thanh-phan-nguyen-tu-tiet-1', 18, 3, 'Hóa học lớp 10 - Bài 1 - Thành phần nguyên tử - Tiết 1\r\n\r\nSẽ giúp các em nắm bắt các kiến thức cơ bản và nâng cao một cách nhanh nhất . Từ đó giúp các em có một nền tảng kiến thức vững chắc để phát triển tư duy và trí tuệ và giúp các em đạt được những ước mơ của riêng mình . Chúc các em thành công.\r\n\r\nKênh THẦY QUANG ( TOÁN - HÓA - SINH ) có đầy đủ chương trình dạy của 3 môn khối B là TOÁN – HÓA –SINH , nếu em nào bị mất kiến thức cơ bản hãy nhanh chân vào đăng kí để lấy lại kiến thức', 4, 'H&oacute;a học lớp 10 - B&agrave;i 1 - Th&agrave;nh phần nguy&ecirc;n tử - Tiết 1<br />\r\n<br />\r\nSẽ gi&uacute;p c&aacute;c em nắm bắt c&aacute;c kiến thức cơ bản v&agrave; n&acirc;ng cao một c&aacute;ch nhanh nhất . Từ đ&oacute; gi&uacute;p c&aacute;c em c&oacute; một nền tảng kiến thức vững chắc để ph&aacute;t triển tư duy v&agrave; tr&iacute; tuệ v&agrave; gi&uacute;p c&aacute;c em đạt được những ước mơ của ri&ecirc;ng m&igrave;nh . Ch&uacute;c c&aacute;c em th&agrave;nh c&ocirc;ng.<br />\r\n<br />\r\nK&ecirc;nh THẦY QUANG ( TO&Aacute;N - H&Oacute;A - SINH ) c&oacute; đầy đủ chương tr&igrave;nh dạy của 3 m&ocirc;n khối B l&agrave; TO&Aacute;N &ndash; H&Oacute;A &ndash;SINH , nếu em n&agrave;o bị mất kiến thức cơ bản h&atilde;y nhanh ch&acirc;n v&agrave;o đăng k&iacute; để lấy lại kiến thức', '/public/uploads/images/tin-tuc/thumb00_051445578968397-1507521768.jpg', 'yoZvsApjq28', 'LỚP 10', 0, 0, 'H&oacute;a học lớp 10 - B&agrave;i 1 - Th&agrave;nh phần nguy&ecirc;n tử - Tiết 1<br />\r\n<br />\r\nSẽ gi&uacute;p c&aacute;c em nắm bắt c&aacute;c kiến thức cơ bản v&agrave; n&acirc;ng cao một c&aacute;ch nhanh nhất . Từ đ&oacute; gi&uacute;p c&aacute;c em c&oacute; một nền tảng kiến thức vững chắc để ph&aacute;t triển tư duy v&agrave; tr&iacute; tuệ v&agrave; gi&uacute;p c&aacute;c em đạt được những ước mơ của ri&ecirc;ng m&igrave;nh . Ch&uacute;c c&aacute;c em th&agrave;nh c&ocirc;ng.<br />\r\n<br />\r\nK&ecirc;nh THẦY QUANG ( TO&Aacute;N - H&Oacute;A - SINH ) c&oacute; đầy đủ chương tr&igrave;nh dạy của 3 m&ocirc;n khối B l&agrave; TO&Aacute;N &ndash; H&Oacute;A &ndash;SINH , nếu em n&agrave;o bị mất kiến thức cơ bản h&atilde;y nhanh ch&acirc;n v&agrave;o đăng k&iacute; để lấy lại kiến thức', 0, 1, 1, 51, NULL, 1, 1, '2018-10-15 17:09:08', '2018-10-15 17:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `courses_cate`
--

CREATE TABLE `courses_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_id` bigint(20) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_cate`
--

INSERT INTO `courses_cate` (`id`, `name`, `alias`, `slug`, `description`, `is_hot`, `status`, `meta_id`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Kỹ năng mềm', 'Ky nang mem', 'ky-nang-mem', '', 1, 1, NULL, NULL, 1, 1, '2017-10-30 20:20:35', '2017-10-30 20:20:35'),
(4, 'Lớp 10', 'Lop 10', 'lop-10', '', 0, 1, NULL, NULL, 1, 1, '2018-09-25 17:18:29', '2018-09-25 17:18:29'),
(5, 'Lớp 11', 'Lop 11', 'lop-11', '', 0, 1, NULL, NULL, 1, 1, '2018-09-25 17:18:37', '2018-09-25 17:18:37'),
(6, 'Lớp 12', 'Lop 12', 'lop-12', '', 0, 1, NULL, NULL, 1, 1, '2018-09-25 17:18:44', '2018-09-25 17:18:44'),
(7, 'Hướng Nghiệp', 'Huong Nghiep', 'huong-nghiep', '', 0, 1, NULL, NULL, 1, 1, '2018-10-04 14:58:08', '2018-10-04 14:58:08'),
(8, 'Ngoại Ngữ', 'Ngoai Ngu', 'ngoai-ngu', '', 0, 1, NULL, NULL, 1, 1, '2018-10-04 14:58:17', '2018-10-04 14:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `courses_lession`
--

CREATE TABLE `courses_lession` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `video_id` varchar(100) DEFAULT NULL,
  `part_id` int(11) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int(11) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_lession`
--

INSERT INTO `courses_lession` (`id`, `name`, `alias`, `slug`, `courses_id`, `video_id`, `part_id`, `content`, `status`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Trẻ không chịu nghe lời - lo lắng của nhiều ông bố bà mẹ', 'Tre khong chiu nghe loi - lo lang cua nhieu ong bo ba me', 'tre-khong-chiu-nghe-loi-lo-lang-cua-nhieu-ong-bo-ba-me', 1, '', 1, '<p>Trở th&agrave;nh những &ocirc;ng bố, b&agrave; mẹ th&ocirc;ng minh v&agrave; kh&eacute;o l&eacute;o kh&ocirc;ng phải l&agrave; chuyện dễ. Trong thực tế, nhiều khi bố, mẹ kh&ocirc;ng biết ứng xử ra sao khi trẻ ham chơi, n&oacute;i dối, kh&ocirc;ng lễ ph&eacute;p...</p>\r\n\r\n<p>Gi&aacute;o dục con trẻ cũng giống như m&ocirc;n trượt tuyết, nếu sợ h&atilde;i v&agrave; cố gắng ngả người về ph&iacute;a sườn n&uacute;i, kiểu g&igrave; cũng sẽ bị t&eacute;. Bởi vậy, những ai đ&atilde;, đang v&agrave; sẽ trở th&agrave;nh những &ocirc;ng bố, b&agrave; mẹ cần trang bị cho m&igrave;nh những kỹ năng cần thiết, để cư xử th&ocirc;ng minh khi trẻ kh&ocirc;ng nghe lời.</p>\r\n', 1, 4, 1, 1, '2017-10-09 15:14:37', '2017-10-09 15:14:37'),
(2, 'Nguyên nhân từ tôi (phần 1)', 'Nguyen nhan tu toi (phan 1)', 'nguyen-nhan-tu-toi-phan-1', 1, '', 1, '<p>Thực chất trẻ kh&ocirc;ng nghe lời xuất ph&aacute;t từ 4 nguy&ecirc;n nh&acirc;n ch&iacute;nh ở cha mẹ.</p>\r\n\r\n<p>B&agrave;i học n&agrave;y sẽ chỉ ra nguy&ecirc;n nh&acirc;n đầu ti&ecirc;n trong 4 nguy&ecirc;n nh&acirc;n ấy. Đ&oacute; ch&iacute;nh l&agrave; việc cha mẹ thiếu nhận thức, kh&ocirc;ng hiểu thế giới t&acirc;m l&yacute; của trẻ.</p>\r\n\r\n<p>Trước ti&ecirc;n, phụ huynh &atilde;y chấp nhận trẻ v&ocirc; điều kiện: Ch&uacute;ng ta y&ecirc;u thương đứa trẻ kh&ocirc;ng v&igrave; n&oacute; đẹp, th&ocirc;ng minh, c&oacute; năng khiếu...m&agrave; đơn giản n&oacute; l&agrave; đứa trẻ. Sau đ&oacute;, phải hiểu về sự độc đ&aacute;o ri&ecirc;ng biệt của trẻ: Cha mẹ cần hiểu biết thấu đ&aacute;o c&aacute;c đặc trưng t&acirc;m l&yacute; theo từng độ tuổi của con.</p>\r\n\r\n<ul>\r\n	<li>Khi con ở trong giai đoạn 3 năm đầu đời</li>\r\n	<li>Khi con ở giai đoạn tiểu học</li>\r\n	<li>Khi con ở giai đoạn đoạn khủng hoảng tuổi dậy th&igrave;</li>\r\n	<li>Khi con ở trong giai đoạn giao lưu bạn b&egrave;</li>\r\n	<li>Khi con ở trong giai đoạn thanh thiếu ni&ecirc;n</li>\r\n</ul>\r\n', 1, 4, 1, 1, '2017-10-09 15:17:03', '2017-10-09 15:17:03'),
(3, 'Nguyên nhân từ trẻ', 'Nguyen nhan tu tre', 'nguyen-nhan-tu-tre', 1, '', 1, '<p>B&agrave;i học chỉ ra 4 nguy&ecirc;n nh&acirc;n từ ph&iacute;a trẻ, khiến trẻ kh&ocirc;ng nghe lời cha, mẹ. Đồng thời chỉ ra những cảm x&uacute;c của cha mẹ tương ứng với từng nguy&ecirc;n nh&acirc;n v&agrave; c&aacute;ch xử l&yacute;.</p>\r\n\r\n<p><strong>4 nguy&ecirc;n nh&acirc;n:</strong></p>\r\n\r\n<p>- Chống đối để được quan t&acirc;m</p>\r\n\r\n<p>- Chống đối để tự khẳng định m&igrave;nh</p>\r\n\r\n<p>- &Yacute; muốn trả th&ugrave;</p>\r\n\r\n<p>- Mất l&ograve;ng tin v&agrave;o th&agrave;nh c&ocirc;ng của bản th&acirc;n</p>\r\n\r\n<p>Trẻ c&agrave;ng kh&oacute; bảo c&agrave;ng mong muốn cha mẹ quan t&acirc;m v&agrave; y&ecirc;u thương.</p>\r\n\r\n<p>Phụ huynh cần hiểu nguy&ecirc;n nh&acirc;n s&acirc;u sa của viecj trẻ kh&ocirc;ng ra đời. Việc t&igrave;m ra l&iacute; do kh&ocirc;ng đon giản bởi nguy&ecirc;n nh&acirc;n th&igrave; kh&aacute;c nhau nhưng biểu hiện lại giống nhau.</p>\r\n\r\n<p><strong>Cảm x&uacute;c của cha mẹ tương ứng với từng nguy&ecirc;n nh&acirc;n:</strong></p>\r\n\r\n<p>- Nếu trẻ đấu tranh để được ch&uacute; &yacute; bằng c&aacute;ch kh&ocirc;ng nghe lời th&igrave; phụ huynh sẽ bực m&igrave;nh.</p>\r\n\r\n<p>Nếu nguy&ecirc;n nh&acirc;n thầm k&iacute;n của việc trẻ kh&ocirc;ng v&acirc;ng lời l&agrave; phả khắng lại &yacute; muốn của cha mẹ th&igrave; phụ huynh sẽ nổi giận.</p>\r\n\r\n<p>Nếu nguy&ecirc;n nh&acirc;n ẩn giấu l&agrave; trả th&ugrave; th&igrave; cảm x&uacute;c đ&aacute;p lại của phụ huynh sẽ l&agrave; tủi giận.</p>\r\n\r\n<p>Khi trẻ khổ th&acirc;m v&igrave; thất bại của m&igrave;nh th&igrave; phụ huynh sẽ rơi v&agrave;o t&acirc;m trạng ch&aacute;n chường, nhiều khi tuyệt vọng.</p>\r\n', 1, 4, 1, 1, '2017-10-09 15:17:43', '2017-10-09 15:17:43'),
(4, 'Tình huống 1: Cổ vũ, động viên', 'Tinh huong 1: Co vu, dong vien', 'tinh-huong-1-co-vu-dong-vien', 1, '', 2, '<p>B&agrave;i học ph&acirc;n t&iacute;ch điều cuối c&ugrave;ng trong 3 điều cha mẹ n&ecirc;n thay đổi. Đ&oacute; ch&iacute;nh l&agrave; thay đổi th&oacute;i quen giao tiếp ti&ecirc;u cực.</p>\r\n\r\n<p>Gi&aacute;o dục con bằng phương ph&aacute;p &aacute;m thị: Phương ph&aacute;p n&agrave;y cũng c&oacute; mặt t&iacute;ch cực v&agrave; ti&ecirc;u cực của n&oacute;.&nbsp;</p>\r\n\r\n<p>Trong cuộc sống hằng ng&agrave;y, cha mẹ n&ecirc;n sử dụng nhiều c&acirc;u n&oacute;i mang t&iacute;nh &aacute;m thị t&iacute;ch cực để thay thế cho sự y&ecirc;u cầu, chỉ tr&iacute;ch, tr&aacute;nh để cho trẻ cảm thấy mất tự trọng, mất thể diện đảm bảo mối quan hệ th&acirc;n thiết giữ cha mẹ v&agrave; con c&aacute;i.</p>\r\n\r\n<p>&Aacute;m thị ti&ecirc;u cực cũng c&oacute; ảnh hưởng đến trẻ. N&oacute; khiến trẻ sống trường k&igrave; trong sự bi quan, buồn ch&aacute;n, ảnh hướng đến sự ph&aacute;t triểm t&acirc;m sinh l&iacute; của trẻ, l&agrave;m mối quan hệ giữa cha mẹ v&agrave; con c&aacute;i trở n&ecirc;n xấu đi.</p>\r\n\r\n<p>Nội t&acirc;m của trẻ v&ocirc; c&ugrave;ng yếu đuổi, chỉ cần một c&uacute; sốc nho nhỏ cũng khiến ch&uacute;ng thu m&igrave;nh lại. Khi đ&oacute;, cha mẹ cần cổ vũ động vi&ecirc;n để ch&uacute;ng lu&ocirc;n tr&agrave;n đầy niềm tin.</p>\r\n', 1, 4, 1, 1, '2017-10-09 15:18:49', '2017-10-09 15:18:49'),
(5, 'Tình huống 2: Sự tự tin, gan dạ', 'Tinh huong 2: Su tu tin, gan da', 'tinh-huong-2-su-tu-tin-gan-da', 1, '', 2, '<p>B&agrave;i học chỉ ra những sai lầm thường mắc phải của c&aacute;c bậc phụ huynh khi thấy trẻ sợ h&atilde;i một điều g&igrave; đ&oacute;. Khi cha mẹ ph&aacute;t hiện con m&igrave;nh nh&aacute;t gan, cha mẹ cần d&agrave;nh thời gian n&oacute;i chuyện c&ugrave;ng trẻ t&igrave;m lại sự dũng cảm:</p>\r\n\r\n<p>- D&agrave;nh thời gian n&oacute;i chuyện c&ugrave;ng trẻ</p>\r\n\r\n<p>- Cho trẻ tham gia nhiều hoạt động c&oacute; &iacute;ch</p>\r\n\r\n<p>- Kể cho trẻ nghe nhiều c&acirc;u chuyện về c&aacute;c bậc anh h&ugrave;ng</p>\r\n\r\n<p>- Giải th&iacute;ch cho trẻ biết nhan gan l&agrave; biểu hiện của sự yếu đuối</p>\r\n\r\n<p>- N&ecirc;n để trẻ tiếp x&uacute;c với nhiều bạn b&egrave;</p>\r\n', 1, 4, 1, 1, '2017-10-09 15:19:23', '2017-10-09 15:19:23'),
(6, 'Bài 1', 'Bai 1', 'bai-1', 4, 'a6aWO6KP0ic', 8, 'Noi dung bai hoc', 1, 1, 1, 1, '2017-10-11 10:04:48', '2017-10-11 10:04:48'),
(7, 'Bài 2', 'Bai 2', 'bai-2', 4, 'ThSILbIHWQ4', 8, 'Noi dung bai 2', 1, 2, 1, 1, '2017-10-11 10:05:05', '2017-10-11 10:05:05'),
(8, 'Bài 3', 'Bai 3', 'bai-3', 4, 'zZjGBB5X3Z4', 8, 'Nội dung b&agrave;i 3', 1, 3, 1, 1, '2017-10-11 10:05:24', '2017-10-11 10:05:24'),
(9, 'Bài 1', 'Bai 1', 'bai-1', 3, 'gHW7bMhCWJk', 6, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 1, 1, '2017-10-11 10:07:33', '2017-10-11 10:07:33'),
(10, 'Bài 2', 'Bai 2', 'bai-2', 3, 'gHW7bMhCWJk', 6, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 2, 1, 1, '2017-10-11 10:07:53', '2017-10-11 10:07:53'),
(11, 'Bài 1: Tổng quan về Facebook & Facebook Marketing', 'Bai 1: Tong quan ve Facebook & Facebook Marketing', 'bai-1-tong-quan-ve-facebook-facebook-marketing', 5, '0zA7tbqTAZE', 11, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 1, 1, '2017-10-11 10:14:01', '2017-10-11 10:14:01'),
(12, 'Bài 2: Thuật toán cơ bản của Facebook', 'Bai 2: Thuat toan co ban cua Facebook', 'bai-2-thuat-toan-co-ban-cua-facebook', 5, '31v-fkYqvpM', 11, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 2, 1, 1, '2017-10-11 10:14:24', '2017-10-11 10:14:24'),
(13, 'Khái niệm thương hiệu', 'Khai niem thuong hieu', 'khai-niem-thuong-hieu', 6, 'gHW7bMhCWJk', 12, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 1, 1, '2017-10-11 10:16:40', '2017-10-11 10:16:40'),
(14, 'Yếu tố cấu thành thương hiệu (tiết 1)', 'Yeu to cau thanh thuong hieu (tiet 1)', 'yeu-to-cau-thanh-thuong-hieu-tiet-1', 6, 'gHW7bMhCWJk', 12, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 2, 1, 1, '2017-10-11 10:16:53', '2017-10-11 10:16:53'),
(15, 'Phân tích môi trường marketing', 'Phan tich moi truong marketing', 'phan-tich-moi-truong-marketing', 6, 'gHW7bMhCWJk', 13, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 1, 1, '2017-10-11 10:17:10', '2017-10-11 10:17:10'),
(16, 'Phân tích khách hàng, đối thủ cạnh tranh', 'Phan tich khach hang, doi thu canh tranh', 'phan-tich-khach-hang-doi-thu-canh-tranh', 6, 'gHW7bMhCWJk', 13, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 2, 1, 1, '2017-10-11 10:17:25', '2017-10-11 10:17:25'),
(17, 'Tổng quan nhiệm vụ của người bán hàng (phần 1)', 'Tong quan nhiem vu cua nguoi ban hang (phan 1)', 'tong-quan-nhiem-vu-cua-nguoi-ban-hang-phan-1', 7, 'gHW7bMhCWJk', 15, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 1, 1, '2017-10-11 10:18:48', '2017-10-11 10:18:48'),
(18, 'Tổng quan nhiệm vụ của người bán hàng (phần 2)', 'Tong quan nhiem vu cua nguoi ban hang (phan 2)', 'tong-quan-nhiem-vu-cua-nguoi-ban-hang-phan-2', 7, 'gHW7bMhCWJk', 15, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 2, 1, 1, '2017-10-11 10:19:36', '2017-10-11 10:19:36'),
(19, 'Kỹ năng cần có của người bán hàng (phần 1)', 'Ky nang can co cua nguoi ban hang (phan 1)', 'ky-nang-can-co-cua-nguoi-ban-hang-phan-1', 7, 'gHW7bMhCWJk', 15, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 3, 1, 1, '2017-10-11 10:19:59', '2017-10-11 10:19:59'),
(20, 'Rong biển cháy tỏi ớt cực ngon (hôp 80gr)', 'Rong bien chay toi ot cuc ngon (hop 80gr)', 'rong-bien-chay-toi-ot-cuc-ngon-hop-80gr', 8, 'p7ZsBPK656s', 16, 'vvfgfdgfdg', 1, 1, 1, 1, '2018-10-04 14:53:00', '2018-10-04 14:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `courses_part`
--

CREATE TABLE `courses_part` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int(11) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_part`
--

INSERT INTO `courses_part` (`id`, `name`, `alias`, `slug`, `courses_id`, `status`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Phần 1: Nguyên nhân khiến trẻ không chịu nghe lời và cách ứng xử của cha mẹ', 'Phan 1: Nguyen nhan khien tre khong chiu nghe loi va cach ung xu cua cha me', 'phan-1-nguyen-nhan-khien-tre-khong-chiu-nghe-loi-va-cach-ung-xu-cua-cha-me', 1, 1, 1, 1, 1, '2017-10-09 14:16:35', '2017-10-09 14:16:35'),
(2, 'Phần 2: Những tình huống cụ thể', 'Phan 2: Nhung tinh huong cu the', 'phan-2-nhung-tinh-huong-cu-the', 1, 1, 2, 1, 1, '2017-10-09 14:18:04', '2017-10-09 14:18:04'),
(3, 'Phần 3: Cách ứng xử trong từng tình huống cụ thể', 'Phan 3: Cach ung xu trong tung tinh huong cu the', 'phan-3-cach-ung-xu-trong-tung-tinh-huong-cu-the', 1, 1, 3, 1, 1, '2017-10-09 14:18:13', '2017-10-09 14:18:13'),
(4, 'Phần 1: Nguy hiểm đến từ đâu?', 'Phan 1: Nguy hiem den tu dau', 'phan-1-nguy-hiem-den-tu-dau', 2, 1, 1, 1, 1, '2017-10-09 14:20:12', '2017-10-09 14:20:12'),
(5, 'Phần 2: Dạy con tự vệ và xử lý tình huống', 'Phan 2: Day con tu ve va xu ly tinh huong', 'phan-2-day-con-tu-ve-va-xu-ly-tinh-huong', 2, 1, 2, 1, 1, '2017-10-09 14:20:20', '2017-10-09 14:20:20'),
(6, 'Chương I: Khám phá ưu thế bản thân', 'Chuong I: Kham pha uu the ban than', 'chuong-i-kham-pha-uu-the-ban-than', 3, 1, 1, 1, 1, '2017-10-09 14:20:40', '2017-10-09 14:20:40'),
(7, 'Chương II: Định hướng cuộc đời', 'Chuong II: Dinh huong cuoc doi', 'chuong-ii-dinh-huong-cuoc-doi', 3, 1, 2, 1, 1, '2017-10-09 14:20:47', '2017-10-09 14:20:47'),
(8, 'Chương 1: Những liệu pháp về sinh lý', 'Chuong 1: Nhung lieu phap ve sinh ly', 'chuong-1-nhung-lieu-phap-ve-sinh-ly', 4, 1, 1, 1, 1, '2017-10-09 14:21:14', '2017-10-09 14:21:14'),
(9, 'Chương 2: Biện pháp tinh thần', 'Chuong 2: Bien phap tinh than', 'chuong-2-bien-phap-tinh-than', 4, 1, 2, 1, 1, '2017-10-09 14:21:21', '2017-10-09 14:21:21'),
(10, 'Chương 3: Xử trí thông minh', 'Chuong 3: Xu tri thong minh', 'chuong-3-xu-tri-thong-minh', 4, 1, 3, 1, 1, '2017-10-09 14:21:28', '2017-10-09 14:21:28'),
(11, 'Các bài học', 'Cac bai hoc', 'cac-bai-hoc', 5, 1, 1, 1, 1, '2017-10-11 10:13:17', '2017-10-11 10:13:17'),
(12, 'Thương hiệu và quy trình xây dựng thương hiệu mạnh', 'Thuong hieu va quy trinh xay dung thuong hieu manh', 'thuong-hieu-va-quy-trinh-xay-dung-thuong-hieu-manh', 6, 1, 1, 1, 1, '2017-10-11 10:16:01', '2017-10-11 10:16:01'),
(13, 'Kỹ năng phân tích môi trường', 'Ky nang phan tich moi truong', 'ky-nang-phan-tich-moi-truong', 6, 1, 2, 1, 1, '2017-10-11 10:16:11', '2017-10-11 10:16:11'),
(14, 'Kỹ năng hoạch định phát triển thương hiệu', 'Ky nang hoach dinh phat trien thuong hieu', 'ky-nang-hoach-dinh-phat-trien-thuong-hieu', 6, 1, 3, 1, 1, '2017-10-11 10:16:19', '2017-10-11 10:16:19'),
(15, 'Các bài học', 'Cac bai hoc', 'cac-bai-hoc', 7, 1, 1, 1, 1, '2017-10-11 10:18:33', '2017-10-11 10:18:33'),
(16, 'Chương 1', 'Chuong 1', 'chuong-1', 8, 1, 1, 1, 1, '2018-10-04 14:52:32', '2018-10-04 14:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : fb 2: reg',
  `score` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `facebook_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `key_reset` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullname`, `email`, `address`, `phone`, `username`, `password`, `type`, `score`, `created_at`, `updated_at`, `last_login`, `status`, `facebook_id`, `image_url`, `key_reset`) VALUES
(1, 'Bin Kute', 'mrhoang1989@gmail.com', '', '', '', '', 1, 6, '2017-10-30 09:18:57', '2017-10-30 09:28:27', '2017-10-30 09:18:57', 1, 2147483647, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c60.0.200.200/p200x200/1959777_628282433908639_1604725911_n.jpg?oh=ddd900f788a3a1659f13b8a708eaafa9&oe=5AA5EA69', NULL),
(2, 'Trâm Quỳnh', 'ctyachau.net@gmail.com', '', '', '', '', 1, 11, '2017-10-30 10:10:19', '2017-10-30 10:10:33', '2017-10-30 10:10:19', 1, 2147483647, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/16425847_253185255122528_2994416044594680263_n.jpg?oh=232483decae1e35bc5b219bead6da05c&oe=5AA8991F', NULL),
(3, 'Xin Visa Nhật', 'hotrovisanhatban@hongson.net', '', '', '', '', 1, 7, '2017-10-30 14:06:59', '2017-10-30 14:26:33', '2017-10-30 14:06:59', 1, 2147483647, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/16807738_122820268237861_1486449615096146627_n.jpg?oh=d80b8cd0a52164680a498d644e9db715&oe=5AAADBED', NULL),
(4, 'Khaleesi', 'khaleesirock@gmail.com', '', '', '', '', 1, 10, '2017-10-31 13:37:19', '2017-10-31 13:37:19', '2017-10-31 13:37:19', 1, 2147483647, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/18767767_10150001832486397_7548411415947164309_n.jpg?oh=60bab6beceee466aa98fea6f70409ddb&oe=5A75408E', NULL),
(5, 'Út Hoàng', 'hoangnhonline@gmail.com', '', '', '', '', 1, 13, '2017-11-01 12:15:53', '2018-10-04 14:30:29', '2018-10-04 14:15:41', 1, 2147483647, 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1142586712539990&height=200&width=200&ext=1541230229&hash=AeQg8QZ_cYFqPLvr', NULL),
(6, 'nguyen van diep', 'nguyenvandiep.knvhv@gmail.com', '', '', '', '$2y$10$b3LvT1p.2bd4xVJRlFrVEu9jRvss2nEdHC4jyZ57/LUuSPmOjUNC2', 2, 10, '2017-11-01 14:00:32', '2017-11-01 14:00:32', '2017-11-01 14:00:32', 1, NULL, NULL, NULL),
(7, 'Nguyễn Huy Hoàng', 'hoangnhpublic@gmail.com', '', '', '', '$2y$10$P5WrQWTyJeD0dKwlrlUtXOYXyu6yQZdKUcpsPf6K3HI/n0FEUwY3i', 2, 10, '2017-12-26 10:08:02', '2017-12-26 10:08:02', '2017-12-26 10:08:02', 1, NULL, NULL, NULL),
(8, 'Visa Nhật', 'xinvisa.com.vn111@gmail.com', '', '', '', '', 1, 10, '2018-04-28 11:48:10', '2018-04-28 11:48:10', '2018-04-28 11:48:10', 1, 2147483647, 'https://lookaside.facebook.com/platform/profilepic/?asid=279087675944452&height=200&width=200&ext=1525150090&hash=AeTCDTucJdnZ8TKL', NULL),
(9, 'Minh Thái', 'minhthai3004@gmail.com', '', '', '', '$2y$10$SbLDeu/hXyAOg7Zz8rBgSeczRoYnL5HVJZYNnadxT5Irf0fBgS9G6', 2, 5, '2018-05-02 09:45:57', '2018-05-02 09:49:55', '2018-05-02 09:45:57', 1, NULL, NULL, NULL),
(10, 'Nghiêm Xuân Nghị', 'nghi.nx17@gmail.com', '', '', '', '', 1, 5, '2018-05-02 17:13:35', '2018-05-02 17:13:40', '2018-05-02 17:13:35', 1, 2147483647, 'https://lookaside.facebook.com/platform/profilepic/?asid=259118031316082&height=200&width=200&ext=1525515215&hash=AeSBNk8-7HFayeOF', NULL),
(11, 'Duong Kieu Hoa ', 'hoa.micad@gmail.com', '', '', '', '$2y$10$k7obO7LeRAj37VyyNF5uHOWQ2fXeY6C4Su5mxaph4sywSfl.uU9zG', 2, 10, '2018-05-02 17:21:44', '2018-05-02 17:21:44', '2018-05-02 17:21:44', 1, NULL, NULL, NULL),
(12, 'phantu', 'phanvantubkdn@gmail.com', '', '', '', '$2y$10$HH1BicAXweN4HmzaHfoGeealKuRlkbCe4BazxgfLnZ0FHeSL1jAyq', 2, 10, '2018-05-02 17:30:03', '2018-05-02 17:30:03', '2018-05-02 17:30:03', 1, NULL, NULL, NULL),
(13, 'Linh Xu', 'thongoc2496@gmail.com', '', '', '', '', 1, 10, '2018-06-23 10:29:06', '2018-06-23 10:29:06', '2018-06-23 10:29:06', 1, 2147483647, 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1012187635606658&height=200&width=200&ext=1529983746&hash=AeTcWHq3rlOd1_R-', NULL),
(14, 'Võ Diễm Thục', 'vodiemthuc@gmail.com', '', '', '', '', 1, 12, '2018-09-21 13:37:52', '2018-09-24 10:55:30', '2018-09-24 10:53:22', 1, 2147483647, 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=153609122238792&height=200&width=200&ext=1540103872&hash=AeSrY27IumoGPkrJ', NULL),
(15, 'Mai Đức Sang', 'maiducsang.hiephoidhcd@gmail.com', '', '', '', '', 1, 4, '2018-09-21 15:25:34', '2018-10-15 16:35:36', '2018-10-15 16:35:20', 1, 2147483647, 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2272658602968012&height=200&width=200&ext=1540110334&hash=AeQ0lB8szWHRPInq', NULL),
(16, 'Minh Thiện', 'minhthienvhv@gmail.com', '', '', '', '', 1, 16, '2018-09-21 16:16:48', '2018-10-15 18:12:30', '2018-10-15 15:46:14', 1, 2147483647, 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2160041244273806&height=200&width=200&ext=1540113408&hash=AeRXY1ufIwie8Tvx', NULL),
(17, 'Trường Văn Hóa Việt', 'vhvschool@gmail.com', '', '', '', '', 1, 12, '2018-10-03 14:24:41', '2018-10-03 16:13:52', '2018-10-03 14:24:41', 1, 2147483647, 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=340212260068069&height=200&width=200&ext=1541143481&hash=AeTNQ7RrrIZchnvR', NULL),
(18, 'Kiều Phạm', 'kieupham160895@gmail.com', '', '', '', '', 1, 10, '2018-10-03 15:20:22', '2018-10-03 15:20:22', '2018-10-03 15:20:22', 1, 2147483647, 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=741369812874236&height=200&width=200&ext=1541146822&hash=AeQwoXxJRDhmzbTD', NULL);

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
(4, 'Tin tức', '#', 1, 2),
(5, 'Quy chế hoạt động', '#', 3, 2),
(6, 'Bảo mật thông tin', '#', 4, 2);

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
-- Table structure for table `livestream`
--

CREATE TABLE `livestream` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `video_id` varchar(100) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 : chua dien ra, 2 : da dien ra',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `livestream`
--

INSERT INTO `livestream` (`id`, `name`, `alias`, `slug`, `description`, `video_id`, `teacher_id`, `date_start`, `status`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(1, 'Chia sẻ cách học tiếng Anh cho  người mất căn bản', 'Chia se cach hoc tieng Anh cho  nguoi mat can ban', 'chia-se-cach-hoc-tieng-anh-cho-nguoi-mat-can-ban', 'Livestream chia sẽ chi tiết cách học tiếng Anh', 'G4GgoHYfoNs', 9, '2017-10-18 11:00:00', 3, '2017-10-14 20:09:10', '2018-09-21 15:54:44', 1, 1),
(5, 'Toán lớp 10', 'Toan lop 10', 'toan-lop-10', 'Toán học lớp 10 - Đại số - Bài 1 - Mệnh đề - Tiết 1\r\n\r\nSẽ giúp các em nắm bắt các kiến thức cơ bản và nâng cao một  cách nhanh nhất . Từ đó giúp các em có một nền tảng kiến thức vững chắc để phát triển tư duy và trí tuệ và giúp các em đạt được những ước mơ của riêng mình . Chúc các em thành công.\r\n\r\nKênh THẦY QUANG ( TOÁN - HÓA - SINH ) có đầy đủ chương trình dạy của 3 môn khối B là TOÁN – HÓA –SINH , nếu em nào bị mất kiến thức cơ bản hãy nhanh chân vào đăng kí để lấy lại kiến thức , đồng thời cả thầy và cô có trên 10 năm kinh nghiệm để hướng dẫn tận tình trên các clip', 'lQfmLX0Z1Zk', 18, '2018-10-03 08:48:00', 3, '2018-10-03 08:49:55', '2018-10-12 15:12:49', 1, 1),
(6, 'Toán lớp 10', 'Toan lop 10', 'toan-lop-10', 'Toán học lớp 10 - Đại số - Bài 1 - Mệnh đề - Tiết 2\r\n\r\nSẽ giúp các em nắm bắt các kiến thức cơ bản và nâng cao một  cách nhanh nhất . Từ đó giúp các em có một nền tảng kiến thức vững chắc để phát triển tư duy và trí tuệ và giúp các em đạt được những ước mơ của riêng mình . Chúc các em thành công.\r\n\r\nKênh THẦY QUANG ( TOÁN - HÓA - SINH ) có đầy đủ chương trình dạy của 3 môn khối B là TOÁN – HÓA –SINH , nếu em nào bị mất kiến thức cơ bản hãy nhanh chân vào đăng kí để lấy lại kiến thức , đồng thời cả thầy và cô có trên 10 năm kinh nghiệm để hướng dẫn tận tình trên các clip đã phát', '4993sBLAzGA', 18, '2018-10-05 14:23:00', 2, '2018-10-05 14:24:00', '2018-10-15 15:32:03', 1, 1);

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
(1, 'Trang chủ', 'trang-chu', 0, 6, 'http://vhvschool.online', 'trang-chu', 1, 0, 1, 0),
(3, 'Khóa học', 'khoa-hoc', 0, 6, 'http://vhvschool.online/khoa-hoc', 'khoa-hoc', 1, 0, 3, 0),
(4, 'Trắc nghiệm', 'trac-nghiem', 0, 6, '#', 'trac-nghiem', 1, 0, 5, 0),
(5, 'Trắc nghiệm IQ', 'trac-nghiem-iq', 1, 1, 'http://vhvschool.online/trac-nghiem/trac-nghiem-iq', 'trac-nghiem-iq', 1, 4, 1, 0),
(6, 'Trắc nghiệm EQ', 'trac-nghiem-eq', 2, 1, 'http://vhvschool.online/trac-nghiem/trac-nghiem-eq', 'trac-nghiem-eq', 1, 4, 2, 0),
(7, 'Tin tức', 'tin-tuc', 0, 6, '#', 'tin-tuc', 1, 0, 7, 0),
(8, 'Tin giáo dục', 'tin-giao-duc', 1, 5, 'http://vhvschool.online/tin-tuc/tin-giao-duc', 'tin-giao-duc', 1, 7, 1, 0),
(9, 'Góc chia sẻ', 'goc-chia-se', 2, 5, 'http://vhvschool.online/tin-tuc/goc-chia-se', 'goc-chia-se', 1, 7, 2, 0),
(10, 'Liên hệ', 'lien-he', 0, 6, 'http://vhvschool.online/lien-he.html', 'lien-he', 1, 0, 8, 0),
(11, 'Kỹ năng mềm', 'ky-nang-mem', 1, 1, 'http://vhvschool.online/khoa-hoc/ky-nang-mem', 'ky-nang-mem', 1, 3, 1, 0),
(15, 'LỚP 10', 'lop-10', 0, 6, '', 'lop-10', 1, 14, 1, 0),
(16, 'LỚP 11', 'lop-11', 0, 6, '', 'lop-11', 1, 14, 2, 0),
(17, 'LỚP 12', 'lop-12', 0, 6, '', 'lop-12', 1, 14, 3, 0),
(18, 'Giáo dục thpt', 'giao-duc-thpt', 0, 6, '', 'giao-duc-thpt', 1, 0, 4, 0),
(22, 'Giới thiệu', 'gioi-thieu', 0, 6, '', 'gioi-thieu', 1, 1, 1, 0),
(28, 'Lớp 10', 'lop-10', 0, 6, 'http://vhvschool.online/giao-duc-thpt/lop-10', 'lop-10', 1, 18, 1, 0),
(29, 'Lớp 11', 'lop-11', 0, 6, 'http://vhvschool.online/giao-duc-thpt/lop-11', 'lop-11', 1, 18, 2, 0),
(30, 'Lớp 12', 'lop-12', 0, 6, 'http://vhvschool.online/giao-duc-thpt/lop-12', 'lop-12', 1, 18, 3, 0),
(33, 'Hành Trình Văn Hóa', 'hanh-trinh-van-hoa', 0, 6, 'http://vhvschool.online/tin-tuc/hanh-trinh-van-hoa', 'hanh-trinh-van-hoa', 1, 0, 6, 0),
(34, 'Hướng Nghiệp', 'huong-nghiep', 7, 1, 'http://vhvschool.online/khoa-hoc/huong-nghiep', 'huong-nghiep', 1, 3, 2, 0),
(35, 'Ngoại Ngữ', 'ngoai-ngu', 8, 1, 'http://vhvschool.online/khoa-hoc/ngoai-ngu', 'ngoai-ngu', 1, 3, 3, 0);

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
(1, NULL, '', '', '', 1, 1, '2017-10-09 09:56:27', '2017-10-09 09:56:27'),
(2, NULL, '', '', '', 1, 1, '2017-10-09 09:57:14', '2017-10-09 09:57:14'),
(3, NULL, '', '', '', 1, 1, '2017-10-09 10:01:03', '2017-10-09 10:01:03'),
(4, NULL, '', '', '', 1, 1, '2017-10-09 10:01:31', '2017-10-09 10:01:31'),
(5, NULL, '', '', '', 1, 1, '2017-10-09 10:05:23', '2017-10-09 10:05:23'),
(6, NULL, '', '', '', 1, 1, '2017-10-09 10:07:28', '2017-10-09 10:07:28'),
(7, NULL, '', '', '', 1, 1, '2017-10-09 10:41:54', '2017-10-09 10:41:54'),
(8, NULL, '', '', '', 1, 1, '2017-10-09 10:44:28', '2017-10-09 10:44:28'),
(9, NULL, '', '', '', 1, 1, '2017-10-09 10:45:03', '2017-10-09 10:45:03'),
(10, NULL, '', '', '', 1, 1, '2017-10-09 10:46:02', '2017-10-09 10:46:02'),
(11, NULL, '', '', '', 1, 1, '2017-10-09 10:46:40', '2017-10-09 10:46:40'),
(12, NULL, '', '', '', 1, 1, '2017-10-09 10:47:09', '2017-10-09 10:47:09'),
(13, NULL, '', '', '', 1, 1, '2017-10-09 10:49:04', '2017-10-09 10:49:04'),
(14, NULL, '', '', '', 1, 1, '2017-10-09 10:50:00', '2017-10-09 10:50:00'),
(15, '', '', '', '', 1, 1, '2017-10-09 10:57:59', '2017-10-09 10:57:59'),
(16, '', '', '', '', 1, 1, '2017-10-09 10:58:50', '2017-10-09 10:58:50'),
(17, '', '', '', '', 1, 1, '2017-10-09 11:00:00', '2017-10-09 11:00:00'),
(18, '', '', '', '', 1, 1, '2017-10-09 11:01:10', '2017-10-09 11:01:10'),
(19, '7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama', '', '', '', 1, 1, '2017-10-09 11:02:31', '2017-10-30 14:20:28'),
(20, '', '', '', '', 1, 1, '2017-10-09 11:03:14', '2017-10-09 11:03:14'),
(21, NULL, '', '', '', 1, 1, '2017-10-09 13:30:23', '2017-10-09 13:30:23'),
(22, NULL, 'Cẩm nang dạy con: Nói sao cho trẻ chịu nghe', 'Cẩm nang dạy con: Nói sao cho trẻ chịu nghe', '', 1, 1, '2017-10-09 13:31:43', '2017-10-09 13:45:54'),
(23, NULL, '', '', '', 1, 1, '2017-10-09 13:48:21', '2017-10-09 13:48:21'),
(24, NULL, '', '', '', 1, 1, '2017-10-09 13:53:33', '2017-10-09 13:53:33'),
(25, NULL, '', '', '', 1, 1, '2017-10-09 13:54:16', '2017-10-09 13:54:16'),
(26, NULL, '', '', '', 1, 1, '2017-10-09 13:56:28', '2017-10-09 13:56:28'),
(27, NULL, '', '', '', 1, 1, '2017-10-11 10:12:49', '2017-10-11 10:12:49'),
(28, NULL, '', '', '', 1, 1, '2017-10-11 10:15:50', '2017-10-11 10:15:50'),
(29, NULL, '', '', '', 1, 1, '2017-10-11 10:18:18', '2017-10-11 10:18:18'),
(30, '', '', '', '', 1, 1, '2017-10-11 13:11:11', '2017-10-11 13:11:11'),
(31, NULL, '', '', '', 1, 1, '2017-10-11 13:14:56', '2017-10-11 13:14:56'),
(32, NULL, '', '', '', 1, 1, '2017-10-11 13:17:16', '2017-10-11 13:17:16'),
(33, 'Thi THPT Quốc Gia Năm 2019', 'Bộ trưởng Bộ GD&ĐT Phùng Xuân Nhạ cho biết, năm tới, đề thi không phục vụ mục tiêu kì thi \"2 trong 1\" mà phục vụ đánh giá thực chất chất lượng dạy và học THPT. Trên cơ sở đó, các trường ĐH,CĐ sử dụng điểm xét tuyển thí sinh vào trường.', 'Thi THPT Quốc Gia Năm 2019', 'Thi THPT Quốc Gia Năm 2019', 1, 1, '2018-09-25 09:49:31', '2018-09-25 10:11:09'),
(35, 'Hành Trình Văn Hóa', 'Trong các cung điện khu vực Hoàng thành, Điện Thái Hòa là ngôi điện lớn nhất, đẹp nhất, chiếm vị trí trang trọng nhất và là công trình tiêu biểu của kiến trúc cung đình Huế với kiểu thức “trùng thiềm điệp ốc”. Điện thường được dùng để thiết đại triều, tổ ', 'Hành Trình Văn Hóa', 'Trong các cung điện khu vực Hoàng thành, Điện Thái Hòa là ngôi điện lớn nhất, đẹp nhất, chiếm vị trí trang trọng nhất và là công trình tiêu biểu của kiến trúc cung đình Huế với kiểu thức “trùng thiềm điệp ốc”. Điện thường được dùng để thiết đại triều, tổ chức các lễ tiết lớn và đón tiếp sứ thần. Điện Thái Hòa cũng là nơi chứng kiến sự kiện đăng quang của 13 vị Vua nhà Nguyễn, sự hưng vong, thành bại của vương triều và những thăng trầm của lịch sử. Clip thuộc bản quyền Trung tâm Lưu trữ quốc gia I - National archives centre N1', 1, 1, '2018-10-02 16:45:44', '2018-10-02 16:45:44'),
(36, '', '', '', '', 1, 1, '2018-10-03 08:44:15', '2018-10-03 08:44:15'),
(37, NULL, '', '', '', 1, 1, '2018-10-03 08:47:50', '2018-10-03 08:47:50'),
(38, 'LỚP 10', 'Toán học lớp 10 - Đại số - Bài 1 - Mệnh đề - Tiết 1', '', 'Toán học lớp 10 - Đại số - Bài 1 - Mệnh đề - Tiết 1 Sẽ giúp các em nắm bắt các kiến thức cơ bản và nâng cao một cách nhanh nhất . Từ đó giúp các em có một nền tảng kiến thức vững chắc để phát triển tư duy và trí tuệ và giúp các em đạt được những ước mơ của riêng mình . Chúc các em thành công. Kênh THẦY QUANG ( TOÁN - HÓA - SINH ) có đầy đủ chương trình dạy của 3 môn khối B là TOÁN – HÓA –SINH , nếu em nào bị mất kiến thức cơ bản hãy nhanh chân vào đăng kí để lấy lại kiến thức , đồng thời cả thầy và cô có trên 10 năm kinh nghiệm để hướng dẫn tận tình trên các clip', 1, 1, '2018-10-03 08:52:43', '2018-10-03 08:55:36'),
(40, NULL, '', '', '', 1, 1, '2018-10-05 09:31:07', '2018-10-05 09:31:07'),
(41, NULL, '', '', '', 1, 1, '2018-10-05 09:33:18', '2018-10-05 09:33:18'),
(42, 'Lăng Tẩm Triều Nguyễn 1', 'Nẻo về nguồn cội\r\n\r\nBuổi bình minh của triều đại nhà Nguyễn\r\n+++++\r\nLăng Gia Long\r\nLăng Gia Long bề thế, phóng khoáng, thể hiện chính tính cách, tâm hồn ngài.\r\n\r\nCuộc đời vua Gia Long chịu đựng những cuộc biến chuyển dữ dội trong lịch sử, nhiều trận mạc p', 'Lăng Tẩm Triều Nguyễn 1', 'Lăng Tẩm Triều Nguyễn 1', 1, 1, '2018-10-08 16:27:18', '2018-10-08 16:27:18'),
(43, NULL, '', '', '', 1, 1, '2018-10-09 15:55:16', '2018-10-09 15:55:16'),
(44, NULL, '', '', '', 1, 1, '2018-10-13 09:47:47', '2018-10-13 09:47:47'),
(45, NULL, '', '', '', 1, 1, '2018-10-13 09:51:31', '2018-10-13 09:51:31'),
(46, NULL, 'Toán học lớp 10 - Đại số - Bài 1 - Mệnh đề - Tiết 1', 'Toán học lớp 10 - Đại số - Bài 1 - Mệnh đề - Tiết 1', '', 1, 1, '2018-10-15 16:06:37', '2018-10-15 16:06:37'),
(47, NULL, 'dao động điều hòa là bài học đầu tiên trong chương đầu tiên của chương trình vật lý 12, khi đã hiểu và nắm chắc bài học này thì việc học các bài học sau trở nên dễ dàng hơn vì chúng có mối liên hệ khăng khít với nhau. Vậy chúng ta cần học và nắm chắc nhữn', 'Dao động điều hòa – vật lý 12', '', 1, 1, '2018-10-15 16:16:53', '2018-10-15 16:16:53'),
(48, NULL, 'Khái niệm điện tích điểm, Định luật Cu- lông và công thức tính lực tương tác giữa các điện tích điểm được thầy Phạm Quốc Toản- giáo viên trường THPT Nguyễn Tất Thành - ĐHSP Hà Nội giảng rất chi tiết, trước khi đưa ra phương pháp giải cho các dạng bài tập ', 'Định luật Cu Lông - Vật lý 11 ', '', 1, 1, '2018-10-15 16:23:20', '2018-10-15 16:23:20'),
(49, NULL, 'Năm 2018 là năm thứ 8, Công ty Cổ phần Kết Nối văn Hóa Việt tổ chức chương trình Ngày hội Hướng nghiệp, Tuyển sinh ĐH, CĐ và Sổ tay Hướng nghiệp, những thông tin cần biết về tuyển sinh ĐH, CĐ. Chương trình đã nhận được sự hưởng ứng tích cực từ các trường ', 'HƯỚNG NGHIỆP', '', 1, 1, '2018-10-15 16:27:34', '2018-10-15 16:27:34'),
(50, NULL, '', '', '', 1, 1, '2018-10-15 17:07:00', '2018-10-15 17:07:00'),
(51, NULL, '', '', '', 1, 1, '2018-10-15 17:09:08', '2018-10-15 17:09:08'),
(52, 'Lăng Tẩm Triều Nguyễn 2: Lăng Thiệu Trị, Tự Đức - [Nẻo về nguồn cội]', '', 'Lăng Tẩm Triều Nguyễn 2', 'Những thi sĩ Hoàng Đế\r\n+++++\r\nLăng Thiệu Trị\r\n\r\nThiệu Trị cũng là một vị vua tài hoa nhưng ông mất sớm, chỉ trị vì 7 năm. Cuối đời, vị vua hiền hòa này xây cất lăng tẩm đơn giản để không hao phí tài lực của quốc gia.\r\n+++++\r\nLăng Tự Đức\r\n\r\nNăm 1866, khi lăng bắt đầu được xây dựng, đã diễn ra cuộc nổi dậy của nhưng người thợ thi công lăng, điều đó khiến nội tâm bậc quân vương gặp trăn trở, có thể đây là lý do nhiều công trình trong lăng đều có chữ ‘’Khiêm’’\r\n\r\nKiến trúc của lăng mang những nét phá cách, sự phá cách đó xuất phát từ một tâm hồn trữ tình, yêu nghê thuật của một vị hoàng đế.\r\nTuy là vị vua hay chữ bậc nhất triều Nguyễn, nhưng trong lăng ông lại không xuất hiện bất cứ bài thơ nào của ông mà lại xuất hiện rất nhiều bài thơ của vua cha Tự Đức: vua Thiệu Trị , điều này thể hiện cái ‘’Khiêm’’ của Tự Đức cũng như lòng hiếu thảo của ông đối với vua cha.\r\n+++++\r\nNăm 1858, thực dân Pháp tiến vào nước ta, bước ngoặc lịch sử mang đến nhiều biến động trong cuộc đời các vị vua kế nghiệp sau này, không riêng gì công cuộc trị quốc, cả nơi yên nghỉ cuối đời của họ cũng có những sóng gió không thể ngờ trước.\r\nNguồn: Nẻo về nguồn cội', 1, 1, '2018-10-15 18:22:38', '2018-10-15 18:24:19');

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
(5, 'vanson29193@gmail.com', 0, 1, NULL, '2017-09-27 21:47:37', '2017-09-27 21:47:37'),
(6, 'duchuy280522@gmail.com', 0, 1, NULL, '2018-07-03 10:00:33', '2018-07-03 10:00:33'),
(7, 'khoanhong2000@gmail.com', 0, 1, NULL, '2018-09-21 23:41:15', '2018-09-21 23:41:15'),
(8, 'sangdauto@gmail.com', 0, 1, NULL, '2018-09-25 15:11:00', '2018-09-25 15:11:00'),
(9, 'maiducsang.knvhv@gmail.com', 0, 1, NULL, '2018-10-03 15:37:54', '2018-10-03 15:37:54'),
(10, 'maiducsang.knvhv1@gmail.com', 0, 1, NULL, '2018-10-03 16:16:13', '2018-10-03 16:16:13'),
(11, 'hocbongaedp@gmail.com', 0, 1, NULL, '2018-10-03 16:42:15', '2018-10-03 16:42:15');

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
  `subject_id` tinyint(4) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `meta_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int(11) DEFAULT NULL,
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`id`, `name`, `alias`, `slug`, `image_url`, `type`, `subject_id`, `school_name`, `description`, `content`, `is_hot`, `meta_id`, `status`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Hoàng Duy Nhất', 'Hoang Duy Nhat', 'hoang-duy-nhat', '/public/uploads/images/hoc-vien/thumb11_230973476-1507517359.jpg', 2, NULL, 'Trường THPT Gio Linh, Quảng Trị', '', '<strong>Th&agrave;nh t&iacute;ch:&nbsp;</strong><br />\r\nGiải Nhất chương tr&igrave;nh &nbsp;&quot;Tiếng Anh K&eacute;o Thả - Chăm học c&oacute; qu&agrave;&quot; Th&aacute;ng 03/2014', 1, 1, 1, NULL, 1, 1, '2017-10-09 09:56:27', '2017-10-09 10:05:54'),
(2, 'Lê Thị Kim Ngân', 'Le Thi Kim Ngan', 'le-thi-kim-ngan', '/public/uploads/images/hoc-vien/thumb11_628042669-1507517826.jpg', 2, NULL, 'Trường THPT chuyên Biên Hòa, Hà Nam', '', '<strong>Th&agrave;nh t&iacute;ch:&nbsp;</strong><br />\r\nTh&agrave;nh t&iacute;ch: Giải Ba cuộc thi Olympic m&ugrave;a h&egrave; 2014', 1, 2, 1, NULL, 1, 1, '2017-10-09 09:57:14', '2017-10-09 10:05:45'),
(3, 'Nguyễn Thị Minh Hiền', 'Nguyen Thi Minh Hien', 'nguyen-thi-minh-hien', '/public/uploads/images/hoc-vien/thumb11_811066348-1507518057.jpg', 2, NULL, 'Trường THPT Uông Bí, Quảng Ninh', '', '<strong>Th&agrave;nh t&iacute;ch:&nbsp;</strong><br />\r\nGiải Ba cuộc thi Olympic m&ugrave;a h&egrave; 2014', 1, 3, 1, NULL, 1, 1, '2017-10-09 10:01:03', '2017-10-09 10:05:38'),
(4, 'Ngô Thị Giang', 'Ngo Thi Giang', 'ngo-thi-giang', '/public/uploads/images/hoc-vien/thumb11_202519603-1507518082.png', 2, NULL, 'Trường THPT Hiệp Hòa 1, Bắc Giang', '', '<strong>Th&agrave;nh t&iacute;ch:&nbsp;</strong><br />\r\nGiải Khuyến Kh&iacute;ch m&ocirc;n Tiếng Anh - Chương tr&igrave;nh Thi thử Kỳ thi THPT Quốc gia 2015 Đợt 1', 1, 4, 1, NULL, 1, 1, '2017-10-09 10:01:31', '2017-10-09 10:01:31'),
(5, 'Trần Thanh Hải', 'Tran Thanh Hai', 'tran-thanh-hai', '/public/uploads/images/hoc-vien/thumb11_347593727-1507518315.jpg', 2, NULL, 'Trường THPT Tân Phú, TP Hồ Chí Minh', '', '<strong>Th&agrave;nh t&iacute;ch:</strong><br />\r\n- &Aacute; khoa ĐH Kinh tế Luật TP HCM với 26,5 điểm (To&aacute;n 9 - Vật L&yacute; 7,5 - H&oacute;a 9,75)<br />\r\n- Top 10 ĐH Y Dược TP HCM 2014 với 28,5 điểm (To&aacute;n 9,5 - Vật L&yacute; 9,25 - H&oacute;a 9,5)', 0, 5, 1, NULL, 1, 1, '2017-10-09 10:05:23', '2017-10-10 13:14:14'),
(6, 'Võ Quang Tường', 'Vo Quang Tuong', 'vo-quang-tuong', '/public/uploads/images/hoc-vien/thumb11_780580210-1507518440.jpg', 2, NULL, 'Trường THPT Thốt Nốt, Cần Thơ', '', '<strong>Th&agrave;nh t&iacute;ch:&nbsp;</strong><br />\r\n- Thủ khoa ViettelStudy Khối C năm 2014<br />\r\n- Đạt 24 điểm thi v&agrave;o trường Đại học Cần Thơ năm 2014', 1, 6, 1, NULL, 1, 1, '2017-10-09 10:07:27', '2017-10-10 13:14:21'),
(7, 'Thầy Tạ Anh Sơn', 'Thay Ta Anh Son', 'thay-ta-anh-son', '/public/uploads/images/giao-vien/thumb11_103910975-1507520387.jpg', 1, 1, '', '', 'Giới thiệu:<br />\r\n- Đạt giải nh&igrave; cuộc thi HSG cấp Quốc gia c&aacute;c năm lớp 11, 12<br />\r\n- Huy chương Bạc kỳ thi HSG To&aacute;n khu vực Ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh Dương năm 2000.<br />\r\n- Thầy gi&aacute;o tốt nghiệp loại giỏi lớp T&agrave;i năng thuộc ĐH B&aacute;ch Khoa H&agrave; Nội v&agrave; bảo vệ th&agrave;nh c&ocirc;ng luận &aacute;n Tiến sỹ To&aacute;n học tại Ph&aacute;p.<br />\r\n- Hiện tại thầy đang c&ocirc;ng t&aacute;c v&agrave; giảng dạy tại khoa To&aacute;n Đại học B&aacute;ch Khoa H&agrave; Nội.', 0, 7, 1, NULL, 1, 1, '2017-10-09 10:41:54', '2017-10-28 21:33:00'),
(8, 'Cô Nguyễn Thị Mai Hương', 'Co Nguyen Thi Mai Huong', 'co-nguyen-thi-mai-huong', '/public/uploads/images/giao-vien/thumb11_296108934-1507520664.jpg', 1, 5, 'Trường THCS Lê Quý Đôn, Hà Nội', '', 'Giới thiệu:&nbsp;<br />\r\n- L&agrave; gi&aacute;o vi&ecirc;n dạy giỏi cấp th&agrave;nh phố H&agrave; Nội<br />\r\n- Chiến sĩ thi đua năm 2012, 2013<br />\r\n- Giải nh&igrave; học sinh giỏi m&ocirc;n H&oacute;a học cấp tỉnh năm học 2006, giải khuyến kh&iacute;ch cấp Quốc gia m&ocirc;n h&oacute;a học năm 2006.', 0, 8, 1, NULL, 1, 1, '2017-10-09 10:44:28', '2017-10-09 10:44:28'),
(9, 'Thầy Chu Văn Biên', 'Thay Chu Van Bien', 'thay-chu-van-bien', '/public/uploads/images/giao-vien/thumb11_945307465-1507520699.jpg', 1, 2, 'ĐH Hồng Đức', '', 'Giới thiệu:&nbsp;- L&agrave; gi&aacute;o vi&ecirc;n giảng dạy trong chương tr&igrave;nh bổ trợ kiến thức Vật L&yacute; k&ecirc;nh VTV2 Đ&agrave;i truyền h&igrave;nh Việt Nam. -Hiện nay thầy c&oacute; hơn 20 năm kinh nghiệm luyện thi ĐH &ndash; CĐ đồng thời l&agrave; t&aacute;c giả của 20 đầu s&aacute;ch Luyện thi ĐH &ndash; CĐ nổi tiếng', 0, 9, 1, NULL, 1, 1, '2017-10-09 10:45:02', '2017-10-09 10:45:03'),
(10, 'Cô TS. Trần Thị Vân Anh ', 'Co TS. Tran Thi Van Anh ', 'co-ts-tran-thi-van-anh', '/public/uploads/images/giao-vien/thumb11_835101957-1507520754.jpg', 1, 9, 'Học viện Báo chí và Tuyên truyền', '', 'Giới thiệu:&nbsp;TS. Trần Thị V&acirc;n Anh đ&atilde; c&oacute; 10 năm kinh nghiệm dạy v&agrave; luyện thi v&agrave;o lớp 6, lớp 10 m&ocirc;n Ngữ văn. C&ocirc; đ&atilde; đ&agrave;o tạo được nhiều học sinh đỗ v&agrave;o trường chuy&ecirc;n, đạt điểm cao trong c&aacute;c kỳ thi tuyển sinh v&agrave;o lớp 6, lớp 10. Đồng thời c&ocirc; cũng l&agrave; người c&oacute; nhiều s&aacute;ng kiến kinh nghiệm được tặng thưởng của Sở Gi&aacute;o dục Đ&agrave;o tạo H&agrave; Nội về phương ph&aacute;p dạy học Ngữ văn.', 1, 10, 1, NULL, 1, 1, '2017-10-09 10:46:02', '2017-10-10 13:12:56'),
(11, 'Cô Cao Vân Oanh ', 'Co Cao Van Oanh ', 'co-cao-van-oanh', '/public/uploads/images/giao-vien/thumb11_770907017-1507520795.jpg', 1, 1, 'Trường Phổ thông chuyên Hà Nội - Amsterdam', '', 'Giới thiệu:&nbsp;Nhiều học sinh của c&ocirc; đ&atilde; đỗ cao v&agrave;o c&aacute;c trường THCS chất lượng cao trong th&agrave;nh phố H&agrave; Nội.', 1, 11, 1, NULL, 1, 1, '2017-10-09 10:46:39', '2017-10-10 13:12:52'),
(12, 'Thầy Nguyễn Mạnh Cường', 'Thay Nguyen Manh Cuong', 'thay-nguyen-manh-cuong', '/public/uploads/images/giao-vien/thumb11_958886737-1507520837.jpg', 1, 1, 'Trường THPT Chu Văn An (Hà Nội)', '', 'Giới thiệu:&nbsp;Thầy l&agrave; gi&aacute;o vi&ecirc;n đội tuyển Olympic To&aacute;n trường Đại học Thủy Lợi, đội tuyển học sinh giỏi To&aacute;n trường THPT Chu Văn An. Nhiều kinh nghiệm luyện thi Đại học m&ocirc;n To&aacute;n v&agrave; thi v&agrave;o lớp 10 (đặc biệt l&agrave; luyện thi v&agrave;o c&aacute;c trường THPT Chuy&ecirc;n).', 1, 12, 1, NULL, 1, 1, '2017-10-09 10:47:09', '2017-10-10 13:12:48'),
(13, 'Thầy Tăng Xuân Long ', 'Thay Tang Xuan Long ', 'thay-tang-xuan-long', '/public/uploads/images/giao-vien/thumb11_847294547-1507520930.jpg', 1, 3, 'Học viện kĩ thuật Quân sự, Hà Nội', '', 'Giới thiệu:&nbsp;Với tr&ecirc;n 10 năm kinh nghiệm giảng dạy v&agrave; luyện thi ĐH, luyện thi HSG v&agrave; thi Chuy&ecirc;n.Giảng dạy cho học sinh nắm chắc kiến thức cơ bản về l&yacute; thuyết, c&aacute;c dạng b&agrave;i tập cơ bản, tr&ecirc;n cơ sở đ&oacute; ph&aacute;t triển để l&agrave;m c&aacute;c b&agrave;i kh&oacute;, n&acirc;ng cao. N&ocirc;i dung giảng dạy lu&ocirc;n b&aacute;m s&aacute;t khung chương tr&igrave;nh thi của Bộ GD v&agrave; ĐT.', 1, 13, 1, NULL, 1, 1, '2017-10-09 10:49:03', '2017-10-10 13:12:44'),
(14, 'Cô Hoàng Kim Nhung', 'Co Hoang Kim Nhung', 'co-hoang-kim-nhung', '/public/uploads/images/giao-vien/thumb11_299557336-1507520996.jpg', 1, 3, 'Trường THCS Láng Thượng', '', 'Giới thiệu:&nbsp;33 năm kinh nghiệm giảng dạy v&agrave; bồi dưỡng đội tuyển học sinh giỏi; Giải nh&igrave; Gi&aacute;o vi&ecirc;n dạy giỏi m&ocirc;n H&oacute;a học khối THCS th&agrave;nh phố H&agrave; Nội năm 1994-1995; Gi&aacute;o vi&ecirc;n giỏi cấp th&agrave;nh phố nhiều năm liền; Nhiều học sinh đoạt giải Học sinh giỏi th&agrave;nh phố H&agrave; Nội m&ocirc;n H&oacute;a học', 1, 14, 1, NULL, 1, 1, '2017-10-09 10:50:00', '2017-10-10 13:12:40'),
(15, 'Cô Tô Nhi A', 'Co To Nhi A', 'co-to-nhi-a', '/public/uploads/images/giao-vien/936be8dc-c152-4169-89fa-44046e8546da-1507530572.jpg', 1, 10, '', '', '<p>Giảng vi&ecirc;n m&ocirc;n c&aacute;c m&ocirc;n Gi&aacute;o dục học đại cương, L&yacute; luận Gi&aacute;o dục, Tổ chức hoạt động ngo&agrave;i giờ l&ecirc;n lớp (Cao Đẳng Sư Phạm Trung Ương TP.HCM);</p>\r\n\r\n<p>- Giảng vi&ecirc;n m&ocirc;n Kỹ năng mềm (ĐH KT C&ocirc;ng Nghệ TP.HCM - Hutech, Nh&agrave; văn h&oacute;a Sinh Vi&ecirc;n, Nh&agrave; văn h&oacute;a Phụ Nữ);</p>\r\n\r\n<p>- Giảng vi&ecirc;n m&ocirc;n Kỹ năng giao tiếp truyền th&ocirc;ng (Hutech);</p>\r\n\r\n<p>- Giảng vi&ecirc;n m&ocirc;n T&acirc;m L&yacute; Học Đại Cương (ĐH Sư Phạm TP.HCM - Trường Cao Đẳng B&aacute;ch Việt);</p>\r\n\r\n<p>- T&acirc;m L&yacute; du kh&aacute;ch v&agrave; kỹ năng giao tiếp (Cao Đẳng Văn H&oacute;a - Nghệ Thuật - Du Lịch S&agrave;i G&ograve;n);</p>\r\n\r\n<p>- Kỹ năng thiết lập mối quan hệ (Trung cấp nghề Việt Giao);</p>\r\n\r\n<p>- Phương ph&aacute;p học đại học (ĐH Hoa Sen).</p>\r\n', 0, 21, 1, NULL, 1, 1, '2017-10-09 13:30:22', '2017-10-09 13:32:26'),
(16, 'Thầy TS. Nguyễn Hoàng Khắc Hiếu', 'Thay TS. Nguyen Hoang Khac Hieu', 'thay-ts-nguyen-hoang-khac-hieu', '/public/uploads/images/giao-vien/maxresdefault-1507531997.jpg', 1, 10, '', '', '<p>&nbsp;Kỷ lục gia Nguyễn Ho&agrave;ng Khắc Hiếu.</p>\r\n\r\n<p>- Giảng vi&ecirc;n khoa T&acirc;m l&yacute; Gi&aacute;o dục, trường Đại học Sư phạm Tp.HCM.</p>\r\n\r\n<p>- Ủy vi&ecirc;n Ban chấp h&agrave;nh Trung ương Hiệp hội Những người Lao động S&aacute;ng tạo Việt Nam</p>\r\n\r\n<p>- Cố vấn chuy&ecirc;n m&ocirc;n Trung t&acirc;m Đ&agrave;o tạo Bản lĩnh sống Sư Tử Trẻ.</p>\r\n\r\n<p>- Diễn giả c&aacute;c chuy&ecirc;n đề t&acirc;m l&yacute;</p>\r\n\r\n<p>- Chuy&ecirc;n gia huấn luyện Kỹ năng sống</p>\r\n\r\n<p>- Chuy&ecirc;n gia tư vấn, tham vấn, chăm s&oacute;c tinh thần</p>\r\n', 1, 24, 1, NULL, 1, 1, '2017-10-09 13:53:33', '2017-10-10 13:12:29'),
(18, 'THẦY QUANG', 'THAY QUANG', 'thay-quang', '/public/uploads/images/logotruongvhv-chuan1-1537520486.png', 1, NULL, '', 'Các bài học của THẦY QUANG đều hoàn toàn miễn phí, nếu có thêm bất kỳ câu hỏi về bài giảng hay , các bài tập khó thì các bạn hãy  comment nhé!!!\r\n\r\n Nếu các em có nhu cầu bổ trợ và nâng cao kiến thức hơn nữa thì hãy vào đăng kí khóa học online có thu phí của thầy nhé. Thầy chỉ thu phí đối với các bài giảng trên SÁCH BÀI TẬP VÀ CHUYÊN ĐỀ NÂNG CAO', '', 0, 37, 1, NULL, 1, 1, '2018-10-03 08:47:50', '2018-10-03 08:47:50'),
(19, 'NGUYỄN QUỐC CHÍ', 'NGUYEN QUOC CHI', 'nguyen-quoc-chi', '', 1, NULL, '', '', '', 0, 40, 1, NULL, 1, 1, '2018-10-05 09:31:07', '2018-10-05 09:31:07'),
(20, 'PHẠM QUỐC TOẢN', 'PHAM QUOC TOAN', 'pham-quoc-toan', '/public/uploads/images/logotruongvhv-chuan1-1537520486.png', 1, NULL, '', '', '', 0, 44, 1, NULL, 1, 1, '2018-10-13 09:47:47', '2018-10-13 09:47:47');

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
(8, 'Giới thiệu', 'Gioi thieu', 'Giới thiệu', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '/public/uploads/images/logotruongvhv-chuan-new-copy1-1537760846.png', 'gioi-thieu', 1, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', '', 1, 1, '2017-08-29 00:00:00', '2018-09-24 10:47:54'),
(10, 'Lịch Sử Hình Thành', 'Lich Su Hinh Thanh', '', '', '', 'lich-su-hinh-thanh', 1, 'Lịch Sử Hình Thành', '', 'Lịch Sử Hình Thành', '', 1, 1, '2017-09-28 21:40:36', '2017-09-28 21:46:12'),
(11, 'Lĩnh Vực Hoạt Động', 'Linh Vuc Hoat Dong', '', '', '', 'linh-vuc-hoat-dong', 1, 'Lĩnh Vực Hoạt Động', '', 'Lĩnh Vực Hoạt Động', '', 1, 1, '2017-09-28 21:43:29', '2017-09-28 21:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` text,
  `image_url` varchar(255) DEFAULT NULL,
  `duration` tinyint(4) DEFAULT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_id` bigint(20) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `name`, `alias`, `slug`, `description`, `content`, `image_url`, `duration`, `is_hot`, `status`, `meta_id`, `cate_id`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'BÀI TEST IQ SỐ 1', 'BAI TEST IQ SO 1', 'bai-test-iq-so-1', '', NULL, '', 1, 0, 1, 31, 1, 1, 1, 1, '2017-10-11 13:14:55', '2017-10-22 13:44:54'),
(2, 'BÀI TEST IQ SỐ 2', 'BAI TEST IQ SO 2', 'bai-test-iq-so-2', '', NULL, '', NULL, 0, 1, 32, 1, 2, 1, 1, '2017-10-11 13:17:16', '2017-10-11 13:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

CREATE TABLE `quiz_answers` (
  `id` int(11) NOT NULL,
  `content` text,
  `question_id` int(11) DEFAULT NULL,
  `display_order` tinyint(4) DEFAULT NULL,
  `is_true` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_answers`
--

INSERT INTO `quiz_answers` (`id`, `content`, `question_id`, `display_order`, `is_true`) VALUES
(121, 'A', 2, 1, 0),
(122, 'B', 2, 2, 0),
(123, 'C', 2, 3, 1),
(124, 'D', 2, 4, 0),
(125, '85647', 1, 1, 1),
(126, '86574', 1, 2, 0),
(127, '78654', 1, 3, 0),
(128, '76845', 1, 4, 0),
(129, 'Casey', 3, 1, 1),
(130, 'Stuart', 3, 2, 0),
(131, 'Ritchie', 3, 3, 0),
(132, 'Billie', 3, 4, 0),
(133, '1', 4, 1, 0),
(134, '2', 4, 2, 0),
(135, '3', 4, 3, 0),
(136, '4', 4, 4, 1),
(137, 'J', 5, 1, 0),
(138, 'H', 5, 2, 0),
(139, 'R', 5, 3, 0),
(140, 'D', 5, 4, 1),
(141, '20', 6, 1, 1),
(142, '18', 6, 2, 0),
(143, '19', 6, 3, 0),
(144, '23', 6, 4, 0),
(145, '22 tuổi', 7, 1, 0),
(146, '18 tuổi', 7, 2, 0),
(147, '20 tuổi', 7, 3, 0),
(148, '16 tuổi', 7, 4, 1),
(149, '9', 8, 1, 1),
(150, '6', 8, 2, 0),
(151, '8', 8, 3, 0),
(152, '7', 8, 4, 0),
(153, '3', 9, 1, 1),
(154, '4', 9, 2, 0),
(155, '2', 9, 3, 0),
(156, '5', 9, 4, 0),
(157, '34', 10, 1, 0),
(158, '24', 10, 2, 0),
(159, '25', 10, 3, 1),
(160, '29', 10, 4, 0),
(161, '4, 6, 1, 3, 5, 2 hoặc 2, 5, 3, 1, 6, 4.', 11, 1, 1),
(162, '4, 6, 3, 1, 5, 2 hoặc 2, 5, 3, 1, 6, 4.', 11, 2, 0),
(163, '4, 6, 1, 5, 3, 2 hoặc 2, 5, 3, 1, 6, 4.', 11, 3, 0),
(164, '4, 6, 1, 3, 5, 2 hoặc 2, 5, 3, 1, 4, 6.', 11, 4, 0),
(165, '+', 12, 1, 1),
(166, '-', 12, 2, 0),
(167, 'x', 12, 3, 0),
(168, '÷', 12, 4, 0),
(169, '+', 13, 1, 1),
(170, '-', 13, 2, 0),
(171, 'x', 13, 3, 0),
(172, '÷', 13, 4, 0),
(173, '20', 14, 1, 1),
(174, '18', 14, 2, 0),
(175, '19', 14, 3, 0),
(176, '23', 14, 4, 0),
(177, '34 VÀ 4', 15, 1, 0),
(178, '32 VÀ 4', 15, 2, 0),
(179, '31 VÀ 4', 15, 3, 1),
(180, '33 VÀ 4', 15, 4, 0),
(181, '60', 16, 1, 0),
(182, '70', 16, 2, 0),
(183, '64', 16, 3, 0),
(184, '72', 16, 4, 1),
(185, '+', 17, 1, 0),
(186, '-', 17, 2, 1),
(187, 'x', 17, 3, 0),
(188, '÷', 17, 4, 0),
(189, 'a', 18, 1, 0),
(190, 'b', 18, 2, 0),
(191, 'c', 18, 3, 1),
(192, 'd', 18, 4, 0),
(193, 'Hình a', 19, 1, 1),
(194, 'Hình b', 19, 2, 0),
(195, 'Hình c', 19, 3, 0),
(196, 'Hình d', 19, 4, 0),
(197, '6 dặm và 6 dặm', 20, 1, 0),
(198, '5 dặm và 5 dặm', 20, 2, 0),
(199, '10 dặm và 10 dặm', 20, 3, 1),
(200, '14 dặm và 14 dặm', 20, 4, 0),
(201, '3.5', 21, 1, 0),
(202, '3.6', 21, 2, 1),
(203, '3', 21, 3, 0),
(204, '3.3', 21, 4, 0),
(205, '6', 22, 1, 0),
(206, '7', 22, 2, 0),
(207, '8', 22, 3, 0),
(208, '9', 22, 4, 1),
(209, '20 phút', 23, 1, 0),
(210, '22 phút', 23, 2, 1),
(211, '24 phút', 23, 3, 0),
(212, '18 phút', 23, 4, 0),
(213, 'Hình A', 24, 1, 0),
(214, 'Hình B', 24, 2, 1),
(215, 'Hình C', 24, 3, 0),
(216, 'Hình D', 24, 4, 0),
(217, 'A', 25, 1, 0),
(218, 'B', 25, 2, 0),
(219, 'C', 25, 3, 1),
(220, 'D', 25, 4, 0),
(221, '1', 26, 1, 0),
(222, '5', 26, 2, 0),
(223, '3', 26, 3, 0),
(224, '7', 26, 4, 1),
(225, 'Việt Nam', 27, 1, 0),
(226, 'Đại Việt ', 27, 2, 0),
(227, 'Văn Lang', 27, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_cate`
--

CREATE TABLE `quiz_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_id` bigint(20) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_cate`
--

INSERT INTO `quiz_cate` (`id`, `name`, `alias`, `slug`, `description`, `is_hot`, `status`, `meta_id`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Trắc nghiệm IQ', 'Trac nghiem IQ', 'trac-nghiem-iq', '', 1, 1, NULL, NULL, 1, 1, '2017-10-11 13:03:59', '2017-10-11 13:03:59'),
(2, 'Trắc nghiệm EQ', 'Trac nghiem EQ', 'trac-nghiem-eq', '', 1, 1, NULL, NULL, 1, 1, '2017-10-11 13:05:00', '2017-10-11 13:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `content` text,
  `image_url` varchar(255) DEFAULT NULL,
  `no_answer` tinyint(4) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `quiz_id`, `content`, `image_url`, `no_answer`, `answer_id`, `display_order`) VALUES
(1, 1, 'Câu hỏi có 1 phương án đúng', '/public/uploads/images/cau-hoi/iq/161550_72-1507704039.jpg', 4, 125, NULL),
(2, 1, 'Hình nào giống với hình bên trái dưới đây?', '/public/uploads/images/cau-hoi/iq/163110_16-1507704916.jpg', 4, 123, NULL),
(3, 1, 'Casey, Stuart, Ritchie, Billie và Colin đều có bàn học riêng ở trường. Casey và Colin có máy vi tính trên bàn, trong khi những người khác có máy tính. Ritchie và Casey có một sổ tay giống như một bảng hướng dẫn. Những người khác chỉ có bảng hướng dẫn. Bàn của Casey và Billie làm bằng gỗ. Bàn của những người khác làm bằng kim loại. Vậy ai là người có 1 chiếc máy vi tính trên bàn gỗ? (Câu hỏi có 1 phương án đúng)', '', 4, 129, NULL),
(4, 1, 'Câu hỏi có 1 phương án đúng', '/public/uploads/images/cau-hoi/iq/083306_91-1507704960.jpg', 4, 136, NULL),
(5, 1, 'Tìm chữ cái có thể thay vào ô có dấu hỏi chấm. ( Có thể tham khảo bảng chữ cái cuối cùng)', '/public/uploads/images/cau-hoi/iq/081236_lettersequencekho60cau16-1507704990.png', 4, 140, NULL),
(6, 1, 'Số nào có thể thay vào chỗ có dấu hỏi chấm?( Câu hỏi có 1 phương án đúng)', '/public/uploads/images/cau-hoi/iq/153419_32-1507705010.jpg', 4, 141, NULL),
(7, 1, 'Tuấn 12 tuổi và có số tuổi bằng 3 lần em mình.Hỏi lúc Tuấn có số tuổi gấp 2 lần số tuổi em mình thì Tuấn bao nhiêu tuổi? ĐA:', '', 4, 148, NULL),
(8, 1, 'Tìm số thích hợp có thể thay dấu hỏi chấm.', '/public/uploads/images/cau-hoi/iq/095654_tuluankho100cau89-1507705099.png', 4, 149, NULL),
(9, 1, 'Trong một gia đình có sáu thành viên A, B, C, D, E và F. A và B là một cặp vợ chồng, A là thành viên nam. D là con trai duy nhất của C. C là anh trai của A. E là em gái của D. B là con dâu của F. F có chồng đã chết. Có bao nhiêu thành viên nam trong gia đình? (Câu hỏi có 1 phương án đúng)', '', 4, 153, NULL),
(10, 1, 'Cho dãy số: 0 3 7 12 18 ? Số nào có thể thay vào chỗ có dấu hỏi chấm? (Câu hỏi có 1 phương án đúng)', '', 4, 159, NULL),
(11, 1, 'Điền các số từ 1 đến 6 vào các hình tròn ở trên sao cho: Tổng các số 4 và 5 và tất cả các số ở giữa bằng 19; Tổng các số 6 và 3 và tất cả các số ở giữa bằng 10; Tổng các số 2 và 1 và tất cả các số ở giữa bằng 11; Tổng các số 4 và 3 và tất cả các số ở giữa bằng 14.', '/public/uploads/images/cau-hoi/iq/234505_numbersequencekho82-1507705147.png', 4, 161, NULL),
(12, 1, 'Hãy điền phép tính thích hợp vào ô trống để giá trị phép tính theo chiều dọc và chiều ngang là bằng nhau.', '/public/uploads/images/cau-hoi/iq/092524_28-1507705177.jpg', 4, 165, NULL),
(13, 1, 'Hãy điền phép tính thích hợp vào ô trống để giá trị phép tính theo chiều dọc và chiều ngang là bằng nhau.', '/public/uploads/images/cau-hoi/iq/091811_3-1507705201.jpg', 4, 169, NULL),
(14, 1, 'Số nào có thể thay vào chỗ có dấu hỏi chấm?( Câu hỏi có 1 phương án đúng)', '/public/uploads/images/cau-hoi/iq/152404_15-1507705217.jpg', 4, 173, NULL),
(15, 1, 'Tìm số thích hợp có thể điền vào chỗ dấu chấm hỏi trong hình dưới. (Thứ tự các số từ trái sang phải)', '/public/uploads/images/cau-hoi/iq/233936_numbersequencekho74-1507705241.png', 4, 179, NULL),
(16, 1, 'Cho dãy số: 2 8 18 32 50 ? Số nào có thể thay vào chỗ có dấu hỏi chấm? (Câu hỏi có 1 phương án đúng)', '', 4, 184, NULL),
(17, 1, 'Hãy điền phép tính thích hợp vào ô trống để giá trị phép tính theo chiều dọc và chiều ngang là bằng nhau.', '/public/uploads/images/cau-hoi/iq/092238_17-1507705269.jpg', 4, 186, NULL),
(18, 1, 'Tìm cặp số có mối liên hệ với một trong những cặp số đã cho( Câu hỏi có 1 phương án đúng)', '/public/uploads/images/cau-hoi/iq/092654_37-1507705287.jpg', 4, 191, NULL),
(19, 1, 'Câu hỏi có 1 phương án đúng', '/public/uploads/images/cau-hoi/iq/090000_165-1507705300.jpg', 4, 193, NULL),
(20, 1, 'Hai người ban đầu cùng đứng một chỗ, sau đó đi về hai hướng ngược nhau. Cả hai người đi bộ 6 dặm, sau đó rẽ phải và đi tiếp 8 dặm nữa. Hòi bây giờ họ cách điểm xuất phát bao xa? (Câu hỏi có 1 phương án đúng)', '', 4, 199, NULL),
(21, 1, 'Cho dãy số: 5,2 - 4,8 - 4,4 - 4 - ...Số nào sẽ là số tiếp theo trong dãy số trên? (Câu hỏi có 1 phương án đúng)', '', 4, 202, NULL),
(22, 1, 'Tìm số thích hợp có thể thay dấu hỏi chấm.', '/public/uploads/images/cau-hoi/iq/100345_tuluankho100cau98-1507705399.png', 4, 208, NULL),
(23, 1, 'Trước nửa đêm là bao nhiêu phút nếu trước đó 32 phút thời gian này gấp 3 lần số phút sau 22 giờ?', '', 4, 210, NULL),
(24, 1, 'Hình nào có thể thay vào chỗ có dấu hỏi chấm?', '/public/uploads/images/cau-hoi/iq/084638_130-1507727918.jpg', 4, 214, NULL),
(25, 1, 'Hình nào giống với hình bên trái dưới đây?', '/public/uploads/images/cau-hoi/iq/162927_12-1507728144.jpg', 4, 219, NULL),
(26, 1, 'Tìm số thích hợp có thể thay dấu hỏi chấm.', '/public/uploads/images/cau-hoi/iq/232714_numbersequencekho42-1507728224.png', 4, 224, NULL),
(27, 1, 'Nhà nước đầu tiên của Việt Nam', '/public/uploads/images/cau-hoi/iq/ban-hieu-ve-dat-nuoc-viet-nam-cua-minh-den-dau-cau-1-1538555327.jpg', 3, 227, NULL);

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
(5, 5, 1, 1, 2),
(6, 1, 0, 2, 2),
(7, 2, 0, 2, 2),
(8, 3, 0, 2, 2),
(9, 4, 0, 2, 2),
(10, 5, 1, 2, 2),
(11, 1, 0, 3, 2),
(12, 2, 0, 3, 2),
(13, 3, 0, 3, 2),
(14, 4, 0, 3, 2),
(15, 5, 1, 3, 2),
(16, 1, 0, 4, 2),
(17, 2, 0, 4, 2),
(18, 3, 0, 4, 2),
(19, 4, 0, 4, 2),
(20, 5, 1, 4, 2),
(21, 1, 0, 5, 2),
(22, 2, 0, 5, 2),
(23, 3, 0, 5, 2),
(24, 4, 0, 5, 2),
(25, 5, 1, 5, 2),
(26, 1, 0, 6, 2),
(27, 2, 0, 6, 2),
(28, 3, 0, 6, 2),
(29, 4, 0, 6, 2),
(30, 5, 1, 6, 2),
(31, 1, 0, 7, 2),
(32, 2, 0, 7, 2),
(33, 3, 0, 7, 2),
(34, 4, 0, 7, 2),
(35, 5, 1, 7, 2),
(36, 1, 0, 8, 2),
(37, 2, 0, 8, 2),
(38, 3, 0, 8, 2),
(39, 4, 0, 8, 2),
(40, 5, 1, 8, 2),
(41, 1, 0, 9, 2),
(42, 2, 0, 9, 2),
(43, 3, 0, 9, 2),
(44, 4, 0, 9, 2),
(45, 5, 1, 9, 2),
(46, 1, 0, 10, 2),
(47, 2, 0, 10, 2),
(48, 3, 0, 10, 2),
(49, 4, 0, 10, 2),
(50, 5, 1, 10, 2),
(51, 1, 0, 11, 2),
(52, 2, 0, 11, 2),
(53, 3, 0, 11, 2),
(54, 4, 0, 11, 2),
(55, 5, 1, 11, 2),
(56, 1, 0, 12, 2),
(57, 2, 0, 12, 2),
(58, 3, 0, 12, 2),
(59, 4, 0, 12, 2),
(60, 5, 1, 12, 2),
(61, 1, 0, 13, 2),
(62, 2, 0, 13, 2),
(63, 3, 0, 13, 2),
(64, 4, 0, 13, 2),
(65, 5, 1, 13, 2);

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
(2, 'site_title', 'Trường THCS, THPT Văn Hóa Việt', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(3, 'site_description', 'Trường THCS - THPT Văn Hóa Việt', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(4, 'site_keywords', 'Trường THCS - THPT Văn Hóa Việt', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(5, 'admin_email', 'vhvschool@gmail.com', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(22, 'mail_server', 'mail.example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(23, 'mail_login_name', 'login@example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(24, 'mail_password', 'password', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(105, 'site_name', 'vhvschool.online', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(113, 'google_analystic', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-126473467-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-126473467-1\');\r\n</script>\r\n', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(114, 'facebook_appid', 'www.facebook.com/Vhvschool.online/', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(115, 'google_fanpage', 'https://plus.google.com/u/0/117522055737075741711', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(116, 'facebook_fanpage', 'www.facebook.com/Vhvschool.online/', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(117, 'twitter_fanpage', '', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(130, 'logo', '/public/uploads/images/logotruongvhv-chuan-new-copy1-1537760846.png', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(131, 'favicon', '2017/08/29/favicon-1504021257.ico', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(141, 'banner', '/public/uploads/images/logotruongvhv-chuan-new-copy1-1537760846.png', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(142, 'custom_text', '', '2016-07-27 14:37:52', '2018-10-12 15:23:40'),
(143, 'email_cc', '', '2016-11-11 00:00:00', '2017-08-29 13:06:32'),
(145, 'cty_info', '', '0000-00-00 00:00:00', '2017-08-29 13:06:32'),
(146, 'hotline', '0907 373 317', '2017-07-27 00:00:00', '2018-10-12 15:23:40'),
(170, 'email_header', 'vhvschool@gmail.com', '2017-07-27 00:00:00', '2018-10-12 15:23:40'),
(203, 'thong_tin_footer', '<p><span style=\"font-size:16px;\"><span style=\"color:#006600;\"><b>TRƯỜNG THCS - THPT VĂN&nbsp;H&Oacute;A VIỆT</b></span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\">Địa chỉ: 75A Nguyễn Sỹ S&aacute;ch, Phường 15, Quận T&acirc;n B&igrave;nh, TP. HCM.</span></p>\r\n\r\n<p><span style=\"font-size:12px;\">Hotline: 0907 373 317</span></p>\r\n\r\n<p><span style=\"font-size:12px;\">Email: vhvschool@gmail.com</span></p>\r\n', '2017-10-28 00:00:00', '2018-10-12 15:23:40'),
(204, 'articles_per_page', '20', '2017-10-28 00:00:00', '2017-10-28 00:00:00'),
(205, 'article_related', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'chi_nhanh_phia_nam', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `display_order` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `class` int(11) NOT NULL DEFAULT '10',
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `slug`, `display_order`, `status`, `class`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Toán', 'toan', 1, 1, 10, 1, 1, '2017-10-09 10:21:03', '2018-09-24 10:49:54'),
(2, 'Vật lý', 'vat-ly', 2, 1, 10, 1, 1, '2017-10-09 10:21:09', '2017-10-09 10:21:09'),
(3, 'Hóa học', 'hoa-hoc', 3, 1, 10, 1, 1, '2017-10-09 10:21:17', '2017-10-09 10:21:17'),
(4, 'Anh văn', 'anh-van', 4, 1, 10, 1, 1, '2017-10-09 10:21:23', '2017-10-09 10:21:23'),
(5, 'Sinh học', 'sinh-hoc', 5, 1, 10, 1, 1, '2017-10-09 10:21:33', '2017-10-09 10:21:33'),
(6, 'Địa lý', 'dia-ly', 6, 1, 10, 1, 1, '2017-10-09 10:21:37', '2017-10-09 10:21:37'),
(7, 'Lịch sử', 'lich-su', 7, 1, 10, 1, 1, '2017-10-09 10:21:43', '2017-10-09 10:21:43'),
(8, 'Văn học', 'van-hoc', 8, 1, 10, 1, 1, '2017-10-09 10:21:52', '2017-10-09 10:21:52'),
(9, 'Ngữ văn', 'ngu-van', 9, 1, 10, 1, 1, '2017-10-09 10:45:25', '2017-10-09 10:45:25'),
(10, 'Tâm lý học', 'tam-ly-hoc', 10, 1, 10, 1, 1, '2017-10-09 13:30:11', '2017-10-09 13:30:11'),
(11, 'Toán', 'toan', 1, 1, 11, 1, 1, '2017-10-09 10:21:03', '2018-09-24 10:49:54'),
(12, 'Vật lý', 'vat-ly', 2, 1, 11, 1, 1, '2017-10-09 10:21:09', '2017-10-09 10:21:09'),
(13, 'Hóa học', 'hoa-hoc', 3, 1, 11, 1, 1, '2017-10-09 10:21:17', '2017-10-09 10:21:17'),
(14, 'Anh văn', 'anh-van', 4, 1, 11, 1, 1, '2017-10-09 10:21:23', '2017-10-09 10:21:23'),
(15, 'Sinh học', 'sinh-hoc', 5, 1, 11, 1, 1, '2017-10-09 10:21:33', '2017-10-09 10:21:33'),
(16, 'Địa lý', 'dia-ly', 6, 1, 11, 1, 1, '2017-10-09 10:21:37', '2017-10-09 10:21:37'),
(17, 'Lịch sử', 'lich-su', 7, 1, 11, 1, 1, '2017-10-09 10:21:43', '2017-10-09 10:21:43'),
(18, 'Văn học', 'van-hoc', 8, 1, 11, 1, 1, '2017-10-09 10:21:52', '2017-10-09 10:21:52'),
(19, 'Ngữ văn', 'ngu-van', 9, 1, 11, 1, 1, '2017-10-09 10:45:25', '2017-10-09 10:45:25'),
(20, 'Tâm lý học', 'tam-ly-hoc', 10, 1, 11, 1, 1, '2017-10-09 13:30:11', '2017-10-09 13:30:11'),
(21, 'Toán', 'toan', 1, 1, 12, 1, 1, '2017-10-09 10:21:03', '2018-09-24 10:49:54'),
(22, 'Vật lý', 'vat-ly', 2, 1, 12, 1, 1, '2017-10-09 10:21:09', '2017-10-09 10:21:09'),
(23, 'Hóa học', 'hoa-hoc', 3, 1, 12, 1, 1, '2017-10-09 10:21:17', '2017-10-09 10:21:17'),
(24, 'Anh văn', 'anh-van', 4, 1, 12, 1, 1, '2017-10-09 10:21:23', '2017-10-09 10:21:23'),
(25, 'Sinh học', 'sinh-hoc', 5, 1, 12, 1, 1, '2017-10-09 10:21:33', '2017-10-09 10:21:33'),
(26, 'Địa lý', 'dia-ly', 6, 1, 12, 1, 1, '2017-10-09 10:21:37', '2017-10-09 10:21:37'),
(27, 'Lịch sử', 'lich-su', 7, 1, 12, 1, 1, '2017-10-09 10:21:43', '2017-10-09 10:21:43'),
(28, 'Văn học', 'van-hoc', 8, 1, 12, 1, 1, '2017-10-09 10:21:52', '2017-10-09 10:21:52'),
(29, 'Ngữ văn', 'ngu-van', 9, 1, 12, 1, 1, '2017-10-09 10:45:25', '2017-10-09 10:45:25'),
(30, 'Tâm lý học', 'tam-ly-hoc', 10, 1, 12, 1, 1, '2017-10-09 13:30:11', '2017-10-09 13:30:11'),
(31, 'Giáo dục công dân', 'giao-duc-cong-dan', 11, 1, 12, 1, 1, '2017-10-09 10:21:52', '2017-10-09 10:21:52'),
(32, 'Kỹ thuật', 'ky-thuat', 12, 1, 12, 1, 1, '2017-10-09 10:45:25', '2017-10-09 10:45:25'),
(33, 'Giáo dục quốc phòng', 'giao-duc-quoc-phong', 13, 1, 12, 1, 1, '2017-10-09 13:30:11', '2017-10-09 13:30:11');

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
(132, NULL, 'thi-trung-hoc-pho-thong-quoc-gia-nam-2019', 2, 'Thi Trung Học Phổ Thông Quốc Gia Năm 2019.', NULL, NULL, NULL, 1, 1, '2018-09-25 10:03:49', '2018-09-25 10:03:49'),
(133, NULL, 'hanh-trinh-van-hoa', 2, 'Hành Trình Văn Hóa', NULL, NULL, NULL, 1, 1, '2018-10-02 16:39:47', '2018-10-02 16:39:47'),
(134, NULL, 'hanhtrinhvanhoa', 2, 'HànhTrìnhVănHóa', NULL, NULL, NULL, 1, 1, '2018-10-02 16:44:11', '2018-10-02 16:44:11'),
(135, NULL, 'lang-tam-trieu-nguyen-1', 2, 'Lăng Tẩm Triều Nguyễn 1', NULL, NULL, NULL, 1, 1, '2018-10-08 16:23:51', '2018-10-08 16:23:51'),
(136, NULL, 'toan', 2, 'Toán', NULL, NULL, NULL, 1, 1, '2018-10-13 13:20:32', '2018-10-13 13:20:32');

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

--
-- Dumping data for table `tag_objects`
--

INSERT INTO `tag_objects` (`object_id`, `tag_id`, `type`, `object_type`) VALUES
(8, 132, 2, 1),
(13, 135, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject`
--

CREATE TABLE `teacher_subject` (
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_subject`
--

INSERT INTO `teacher_subject` (`teacher_id`, `subject_id`) VALUES
(7, 3),
(7, 4),
(8, 5),
(8, 9),
(9, 2),
(9, 3),
(10, 2),
(10, 6),
(11, 4),
(11, 8),
(12, 1),
(12, 5),
(13, 2),
(13, 6),
(14, 1),
(15, 10),
(16, 10),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(20, 2),
(20, 5);

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
-- Table structure for table `thpt_baihoc`
--

CREATE TABLE `thpt_baihoc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `video_id` varchar(100) DEFAULT NULL,
  `stem_class_id` int(11) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int(11) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `fullname`, `display_name`, `email`, `password`, `role`, `leader_id`, `status`, `changed_password`, `remember_token`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@vhvschool.online', '$2y$10$UHDKhzeFOLfdCBWQ7GgEFeHmzlglsfrLheHRoOvP3FSKuKKf1D5x2', 3, 1, 1, 0, 'O0eF1chbpZ6koawOjTJiyH9FNpD9ha81h9uNDnbmAzxDGtSqDO7NbveT5Okz', 1, 1, '2017-06-28 00:00:00', '2018-09-21 13:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_courses`
--

CREATE TABLE `user_courses` (
  `user_id` int(11) NOT NULL,
  `courses_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_courses`
--

INSERT INTO `user_courses` (`user_id`, `courses_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 6, 0, '2017-10-30 09:25:57', '2017-10-30 09:25:57'),
(1, 7, 5, '2017-10-30 09:28:27', '2017-10-30 09:28:27'),
(2, 6, 0, '2017-10-30 10:10:33', '2017-10-30 10:10:33'),
(3, 6, 0, '2017-10-30 14:07:38', '2017-10-30 14:07:38'),
(3, 7, 5, '2017-10-30 14:07:58', '2017-10-30 14:07:58'),
(5, 7, 5, '2017-12-26 16:19:28', '2017-12-26 16:19:28'),
(9, 7, 5, '2018-05-02 09:49:55', '2018-05-02 09:49:55'),
(10, 7, 5, '2018-05-02 17:13:40', '2018-05-02 17:13:40'),
(14, 7, 0, '2018-09-24 10:55:30', '2018-09-24 10:55:30'),
(15, 9, 10, '2018-10-05 09:38:54', '2018-10-05 09:38:54'),
(15, 12, 0, '2018-10-15 16:35:36', '2018-10-15 16:35:36'),
(16, 6, 0, '2018-09-21 16:16:58', '2018-09-21 16:16:58'),
(16, 12, 0, '2018-10-15 16:07:11', '2018-10-15 16:07:11'),
(16, 13, 0, '2018-10-15 16:19:01', '2018-10-15 16:19:01'),
(16, 14, 0, '2018-10-15 18:12:30', '2018-10-15 18:12:30'),
(17, 7, 0, '2018-10-03 16:13:52', '2018-10-03 16:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_quiz`
--

CREATE TABLE `user_quiz` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `score` float NOT NULL,
  `duration` varchar(100) NOT NULL,
  `str_random` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_share` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_quiz`
--

INSERT INTO `user_quiz` (`id`, `user_id`, `quiz_id`, `score`, `duration`, `str_random`, `image_url`, `is_share`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '', '003592866fdbe4333fbb5a8aca72531c', '/public/uploads/result/1-1-1509330524.png', 0, '2017-10-30 09:28:45', '2017-10-30 09:28:45'),
(2, 3, 1, 15.38, '', '4cdc61ece648e64bcde332d4f4019b21', '/public/uploads/result/3-1-1509348376.png', 1, '2017-10-30 14:26:16', '2017-10-30 14:26:33'),
(3, 3, 1, 15.38, '', '618884ac22b323f7f7a922a6e253804c', '/public/uploads/result/3-1-1509348402.png', 0, '2017-10-30 14:26:42', '2017-10-30 14:26:42'),
(4, 17, 1, 0, '', 'b5a976a9f320b5ed563a32787ff9f07e', '/public/uploads/result/17-1-1538551564.png', 0, '2018-10-03 14:26:04', '2018-10-03 14:26:04'),
(5, 17, 1, 11.54, '', '4c346d2e7f0cea4f1aa3fb3f92f839bb', '/public/uploads/result/17-1-1538551637.png', 0, '2018-10-03 14:27:17', '2018-10-03 14:27:17'),
(6, 17, 1, 19.23, '', 'b1475ca23a28de538836ec726641c4e3', '/public/uploads/result/17-1-1538553487.png', 1, '2018-10-03 14:58:07', '2018-10-03 14:58:44'),
(7, 18, 1, 30.77, '', '72f3814459cba10f6c5c48604d758ee0', '/public/uploads/result/18-1-1538554890.png', 0, '2018-10-03 15:21:30', '2018-10-03 15:21:30'),
(8, 18, 1, 3.7, '', 'df305a9b0a2f45d447bc086cf539fe9f', '/public/uploads/result/18-1-1538555758.png', 0, '2018-10-03 15:35:58', '2018-10-03 15:35:58'),
(9, 17, 1, 3.7, '', 'f8d6fc712ebdf297b912bb4dfff02a27', '/public/uploads/result/17-1-1538556212.png', 0, '2018-10-03 15:43:32', '2018-10-03 15:43:32'),
(10, 5, 1, 0, '', '1f0d1903905347556d850ff35e5bba0d', '/public/uploads/result/5-1-1538638248.png', 0, '2018-10-04 14:30:48', '2018-10-04 14:30:48'),
(11, 16, 1, 11.11, '', '12150258da945aa43af92f3e9c59d146', '/public/uploads/result/16-1-1539334703.png', 0, '2018-10-12 15:58:23', '2018-10-12 15:58:23'),
(12, 16, 1, 3.7, '', '46316f879a076cac15e6fa409105665b', '/public/uploads/result/16-1-1539593198.png', 0, '2018-10-15 15:46:38', '2018-10-15 15:46:38');

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
-- Indexes for table `classthpt`
--
ALTER TABLE `classthpt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `fullname` (`fullname`),
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
-- Indexes for table `courses_cate`
--
ALTER TABLE `courses_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_lession`
--
ALTER TABLE `courses_lession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_part`
--
ALTER TABLE `courses_part`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `phone` (`phone`),
  ADD KEY `fullname` (`fullname`),
  ADD KEY `type` (`type`),
  ADD KEY `image_url` (`image_url`),
  ADD KEY `status` (`status`);

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
-- Indexes for table `livestream`
--
ALTER TABLE `livestream`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_cate`
--
ALTER TABLE `quiz_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
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
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD PRIMARY KEY (`teacher_id`,`subject_id`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thpt_baihoc`
--
ALTER TABLE `thpt_baihoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_courses`
--
ALTER TABLE `user_courses`
  ADD PRIMARY KEY (`user_id`,`courses_id`);

--
-- Indexes for table `user_quiz`
--
ALTER TABLE `user_quiz`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `articles_cate`
--
ALTER TABLE `articles_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `classthpt`
--
ALTER TABLE `classthpt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counter_values`
--
ALTER TABLE `counter_values`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `courses_cate`
--
ALTER TABLE `courses_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courses_lession`
--
ALTER TABLE `courses_lession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `courses_part`
--
ALTER TABLE `courses_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `custom_link`
--
ALTER TABLE `custom_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `livestream`
--
ALTER TABLE `livestream`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `quiz_cate`
--
ALTER TABLE `quiz_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `thpt_baihoc`
--
ALTER TABLE `thpt_baihoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_quiz`
--
ALTER TABLE `user_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
