-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 11, 2017 at 04:58 PM
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
(1, 'Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD', 'hang-chuc-sinh-vien-moi-ra-truong-nhan-luong-khoi-diem-den-3000-usd', 'Hang chuc sinh vien moi ra truong nhan luong khoi diem den 3.000 USD', 'Theo Đại học Bách khoa Hà Nội, năm học 2015-2016, trường có hơn 60 sinh viên được tuyển dụng với mức lương 2.000 đến 3.000 USD một tháng.', '/public/uploads/images/thumb00_081905408995654-1506935578.jpg', 1, '<p>Trong bối cảnh 63% sinh vi&ecirc;n ra trường kh&ocirc;ng l&agrave;m được việc, 225.000 cử nh&acirc;n, thạc sĩ thất nghiệp, vấn đề &ldquo;lương 2.000 USD&rdquo; vẫn được coi l&agrave; ước mơ viển v&ocirc;ng, xa vời.</p>\r\n\r\n<h2>Giấc mơ từng bị &#39;n&eacute;m đ&aacute;&#39;</h2>\r\n\r\n<p>Năm 2011, một sinh vi&ecirc;n Đại học Ngoại thương tuy&ecirc;n bố ra trường lương dưới 1.000 USD kh&ocirc;ng l&agrave;m, g&acirc;y n&ecirc;n &ldquo;c&uacute; sốc&rdquo; với nhiều sinh vi&ecirc;n v&agrave; nh&agrave; tuyển dụng. Ph&aacute;t ng&ocirc;n n&agrave;y đ&atilde; trở th&agrave;nh chủ đề bị chế giễu tr&ecirc;n cộng đồng mạng.</p>\r\n\r\n<p>Năm 2016, một sinh vi&ecirc;n Học viện Kỹ thuật Mật m&atilde; đặt c&acirc;u hỏi trong hội thảo về cơ hội nghề nghiệp: &ldquo;Em phải học tập v&agrave; l&agrave;m việc như thế n&agrave;o để c&aacute;c nh&agrave; tuyển dụng ở đ&acirc;y nhận v&agrave;o l&agrave;m với mức lương khởi điểm 2.000 USD/th&aacute;ng?&quot;. C&acirc;u hỏi khiến nhiều con mắt đổ dồn về ph&iacute;a nữ sinh v&agrave; sau đ&oacute; c&ocirc; bạn bị &quot;n&eacute;m đ&aacute;&quot; tr&ecirc;n mạng.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/09/shares/083141_bk1.jpg\" /></p>\r\n\r\n<h3><em>Bảng thống k&ecirc; việc l&agrave;m của sinh vi&ecirc;n ĐH B&aacute;ch khoa H&agrave; Nội 6 th&aacute;ng đầu năm 2016. Ảnh: ĐHBKHN.</em></h3>\r\n\r\n<p>Hai c&acirc;u hỏi tr&ecirc;n của sinh vi&ecirc;n về mức lương ngh&igrave;n USD nhận được &yacute; kiến tr&aacute;i chiều của dư luận. Người cho rằng đ&oacute; l&agrave; giấc mơ &quot;hoang đường, kh&ocirc;ng c&oacute; cơ sở&quot; v&igrave; sinh vi&ecirc;n Việt Nam ra trường thường chưa l&agrave;m được việc. Thế nhưng, kh&ocirc;ng &iacute;t &yacute; kiến kh&aacute;c khẳng định &ldquo;nếu kh&ocirc;ng c&oacute; ước mơ th&igrave; kh&ocirc;ng thể l&agrave;m được những điều vĩ đại&quot;.</p>\r\n\r\n<p>Theo kết quả khảo s&aacute;t của một số trường đại học, sinh vi&ecirc;n mới ra trường ho&agrave;n to&agrave;n c&oacute; thể nhận được mức lương 2.000 USD/th&aacute;ng tại c&aacute;c c&ocirc;ng ty nước ngo&agrave;i.</p>\r\n\r\n<p>Mới đ&acirc;y, Đại học B&aacute;ch khoa H&agrave; Nội c&ocirc;ng bố bảng thống k&ecirc; mức lương trung b&igrave;nh của sinh vi&ecirc;n tốt nghiệp 6 th&aacute;ng đầu năm 2016 (80% số sinh vi&ecirc;n tốt nghiệp trả lời khảo s&aacute;t). Theo đ&oacute;, mức trung b&igrave;nh l&agrave; 8,2 triệu đồng/th&aacute;ng. Phổ lương trải rộng từ 3 đến 60 triệu đồng/th&aacute;ng.&nbsp;</p>\r\n\r\n<p>Tại Đại học Khoa học Tự nhi&ecirc;n (Đại học Quốc gia H&agrave; Nội), c&aacute;c khảo s&aacute;t thực tế do nh&agrave; trường thực hiện qua những năm gần đ&acirc;y cho thấy mức lương sinh vi&ecirc;n nhận được dao động từ 6-20 triệu đồng/th&aacute;ng. Số sinh vi&ecirc;n nhận lương 30-60 triệu đồng/th&aacute;ng kh&ocirc;ng nhiều. Một số sinh vi&ecirc;n xuất sắc c&oacute; lương 60 triệu đồng/th&aacute;ng.</p>\r\n\r\n<h2>Phải d&aacute;m nghĩ về mức lương 2.000 USD</h2>\r\n\r\n<p>Theo số liệu của Đại học Khoa học Tự nhi&ecirc;n, hai nữ sinh nhận được lương khởi điểm 2.000 USD khi chưa ra trường l&agrave; Nguyễn Thị Qu&yacute; (ng&agrave;nh Ti&ecirc;n tiến H&oacute;a học) v&agrave; Đỗ Thị Phương (ng&agrave;nh C&ocirc;ng nghệ Kỹ thuật H&oacute;a học). Họ đ&atilde; được C&ocirc;ng ty H&oacute;a chất Kyowa (Nhật Bản) nhận l&agrave;m việc.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/09/shares/083428_quy1.jpg\" /></p>\r\n\r\n<h3><em>Nguyễn Thị Qu&yacute; - sinh vi&ecirc;n ĐH Khoa học Tự nhi&ecirc;n, Đại học Quốc gia H&agrave; Nội. Ảnh: ĐHKHTN.</em></h3>\r\n\r\n<p>&Ocirc;ng Nguyễn Thanh B&igrave;nh - Trưởng ph&ograve;ng C&ocirc;ng t&aacute;c sinh vi&ecirc;n, Đại học Khoa học Tự nhi&ecirc;n - l&yacute; giải, sinh vi&ecirc;n trong trường c&oacute; nhiều cơ hội được nhận v&agrave;o l&agrave;m việc tại c&aacute;c tập đo&agrave;n lớn của nước ngo&agrave;i n&ecirc;n lương cao. Đ&oacute; phần lớn l&agrave; sinh vi&ecirc;n l&agrave;m việc li&ecirc;n quan c&aacute;c ng&agrave;nh như h&oacute;a chất, sinh học, c&ocirc;ng nghệ sinh học, c&ocirc;ng nghệ thực phẩm hoặc vi sinh...</p>\r\n\r\n<p>PGS Đinh Văn Hải, Trưởng ph&ograve;ng C&ocirc;ng t&aacute;c Ch&iacute;nh trị Sinh vi&ecirc;n, Đại học B&aacute;ch khoa H&agrave; Nội, cũng cho hay: Năm học 2015-2016, trường c&oacute; hơn 60 sinh vi&ecirc;n được tuyển dụng với mức lương 2.000 đến 3.000 USD/th&aacute;ng, hầu hết l&agrave;m cho c&ocirc;ng ty nước ngo&agrave;i, c&aacute;c ng&agrave;nh về c&ocirc;ng nghệ th&ocirc;ng tin.</p>\r\n\r\n<p>Trong đ&oacute;, em Nguyễn Xu&acirc;n B&aacute;ch (sinh vi&ecirc;n năm cuối) tr&uacute;ng tuyển vị tr&iacute; kỹ sư phần mềm, l&agrave;m việc ở Nhật Bản với mức lương 60 triệu đồng mỗi th&aacute;ng.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Hàng chục sinh viên mới ra trường nhận lương khởi điểm đến 3.000 USD\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/09/shares/083501_luong_my_1_1.jpg\" /></p>\r\n\r\n<h3><em>Quy định mức lương tối thiểu v&ugrave;ng đối với người lao động l&agrave;m việc theo hợp đồng lao động. Nguồn: Bộ Lao động Thương binh v&agrave; X&atilde; hội. Đồ họa: Nguyễn Sương. &nbsp;</em></h3>\r\n\r\n<p>Tiến sĩ L&ecirc; Nh&acirc;n T&acirc;m - cố vấn c&ocirc;ng nghệ v&agrave; kiến tr&uacute;c sư về điện to&aacute;n đ&aacute;m m&acirc;y của Tập đo&agrave;n IBM - cho rằng sinh vi&ecirc;n phải d&aacute;m nghĩ về lương 2.000 USD. Hiện nay, sinh vi&ecirc;n mới ra trường c&oacute; thể nhận được mức lương n&agrave;y, chủ yếu ở lĩnh vực bảo mật c&ocirc;ng nghệ th&ocirc;ng tin.</p>\r\n\r\n<p>&Ocirc;ng T&acirc;m cũng cho rằng điều quan trọng hơn sinh vi&ecirc;n n&ecirc;n đặt c&acirc;u hỏi: Bạn l&agrave; ai sau 2-5 năm nữa. Từ đ&oacute;, bạn sẽ biết m&igrave;nh l&agrave;m g&igrave;, n&ecirc;n trang bị những g&igrave; để đạt được mục ti&ecirc;u.</p>\r\n\r\n<p>TS L&ecirc; Nh&acirc;n T&acirc;m l&yacute; giải c&aacute;c c&ocirc;ng ty lớn như IBM, Microsoft, Google... đều tuyển dụng những người c&oacute; nhiều kinh nghiệm. V&igrave; vậy, c&aacute;c bạn trẻ n&ecirc;n học hỏi từ ch&iacute;nh người quản l&yacute; của m&igrave;nh xem họ l&agrave;m c&ocirc;ng việc g&igrave;, thực hiện kỹ năng n&agrave;o để bổ sung những điều m&igrave;nh c&ograve;n khuyết thiếu.</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>Quy&ecirc;n Quy&ecirc;n</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Zing.vn</em></p>\r\n', 0, NULL, 1, 1, 0, 398, '2017-10-02 16:13:47', '2017-10-09 08:56:12', 1, 1),
(2, '860.000 thí sinh làm thủ tục thi THPT quốc gia', '860000-thi-sinh-lam-thu-tuc-thi-thpt-quoc-gia', '860.000 thi sinh lam thu tuc thi THPT quoc gia', 'Chiều nay, thí sinh sẽ đến các điểm thi làm thủ tục, chuẩn bị cho kỳ thi THPT quốc gia diễn ra vào ngày 22-24/6.', '/public/uploads/images/tin-tuc/thumb00_090436900502677-1507521419.jpg', 1, '<p>Chiều 21/6, khoảng 866.000 th&iacute; sinh cả nước sẽ tập trung tại c&aacute;c điểm thi THPT quốc gia để l&agrave;m thủ tục v&agrave; đ&iacute;nh ch&iacute;nh sai s&oacute;t (nếu c&oacute;). Th&iacute; sinh phải xuất tr&igrave;nh Giấy chứng minh nh&acirc;n d&acirc;n hoặc thẻ căn cước c&ocirc;ng d&acirc;n v&agrave; nhận Thẻ dự thi. Nếu ph&aacute;t hiện sai s&oacute;t về họ, t&ecirc;n đệm, t&ecirc;n, ng&agrave;y, th&aacute;ng, năm sinh, đối tượng ưu ti&ecirc;n, khu vực ưu ti&ecirc;n, c&aacute;c em cần b&aacute;o ngay cho c&aacute;n bộ của Điểm thi để xử l&yacute;.</p>\r\n\r\n<p>Sau khi th&iacute; sinh c&oacute; mặt đ&ocirc;ng đủ tại ph&ograve;ng thi, c&aacute;n bộ coi thi sẽ nhắc lại lịch thi, phổ biến quy chế như: đến chậm qu&aacute; 15 ph&uacute;t sau khi c&oacute; hiệu lệnh t&iacute;nh giờ l&agrave;m b&agrave;i sẽ kh&ocirc;ng được dự thi buổi đ&oacute;; 10 ph&uacute;t sau khi ph&aacute;t đề phải kiểm tra v&agrave; b&aacute;o lỗi đề thi. Những lỗi thiếu trang, r&aacute;ch, hỏng, nh&ograve;a, m&atilde; đề trong c&aacute;c m&ocirc;n thi th&agrave;nh phần của b&agrave;i thi tổ hợp kh&aacute;c nhau, th&iacute; sinh phải b&aacute;o c&aacute;o ngay để kịp thời xử l&yacute;...</p>\r\n\r\n<p>Do hầu hết m&ocirc;n thi trắc nghiệm, th&iacute; sinh sẽ được gi&aacute;m thị hướng dẫn cặn kẽ việc l&agrave;m b&agrave;i. C&aacute;c em chỉ được t&ocirc; bằng b&uacute;t ch&igrave; đen &ocirc; số b&aacute;o danh, &ocirc; m&atilde; đề thi v&agrave; &ocirc; trả lời. Trường hợp t&ocirc; nhầm hoặc muốn thay đổi c&acirc;u trả lời, cần tẩy sạch ch&igrave; ở &ocirc; cũ, rồi t&ocirc; &ocirc; m&igrave;nh lựa chọn...&nbsp;</p>\r\n\r\n<p><img alt=\"860.000 thí sinh làm thủ tục thi THPT quốc gia\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/06/21/shares/090351_1.jpg\" /></p>\r\n\r\n<h3><em>Lịch thi THPT quốc gia 2017.</em></h3>\r\n\r\n<p>Năm 2017, Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo tiếp tục tổ chức kỳ thi THPT quốc gia với mục ti&ecirc;u x&eacute;t tốt nghiệp v&agrave; x&eacute;t tuyển đại học, cao đẳng. So với 2 năm trước, kỳ thi THPT quốc gia năm nay c&oacute; nhiều thay đổi về h&igrave;nh thức, số m&ocirc;n, số ng&agrave;y v&agrave; đơn vị tổ chức thi.</p>\r\n\r\n<p>Năm nay trừ Ngữ văn, 8 m&ocirc;n c&ograve;n lại thi trắc nghiệm. Đ&acirc;y cũng l&agrave; năm đầu ti&ecirc;n Bộ Gi&aacute;o dục đưa Gi&aacute;o dục c&ocirc;ng d&acirc;n v&agrave;o kỳ thi cuối c&ugrave;ng của học sinh, b&ecirc;n cạnh c&aacute;c m&ocirc;n truyền thống To&aacute;n, Ngoại ngữ, L&yacute;, H&oacute;a, Sinh, Sử, Địa.&nbsp;</p>\r\n\r\n<p>Do thi trắc nghiệm, thời gian l&agrave;m b&agrave;i được r&uacute;t ngắn (trừ Văn 120 ph&uacute;t, To&aacute;n 90 ph&uacute;t, Ngoại ngữ 60 ph&uacute;t, c&aacute;c m&ocirc;n c&ograve;n lại 50 ph&uacute;t), tổng thời gian thi THPT quốc gia giảm c&ograve;n 2 ng&agrave;y rưỡi, thay v&igrave; 4 ng&agrave;y như trước.</p>\r\n\r\n<p>Sở Gi&aacute;o dục giữ vai tr&ograve; chủ tr&igrave; cụm thi, thay v&igrave; để c&aacute;c trường đại học cầm trịch. Nhằm đảm bảo kh&aacute;ch quan, c&ocirc;ng bằng cho th&iacute; sinh, c&aacute;c trường đại học vẫn tham gia tr&ocirc;ng, chấm v&agrave; gi&aacute;m s&aacute;t kỳ thi. Th&iacute; sinh thi ngay tại địa phương cư tr&uacute;, kh&ocirc;ng phải di chuyển về cụm thi đại học như trước, tr&aacute;nh l&atilde;ng ph&iacute; thời gian, tiền bạc.</p>\r\n\r\n<p>Để x&eacute;t tốt nghiệp THPT, th&iacute; sinh sẽ l&agrave;m 5 b&agrave;i thi, gồm 3 b&agrave;i độc lập bắt buộc l&agrave; To&aacute;n, Văn, Ngoại ngữ; lựa chọn một trong hai b&agrave;i thi tổ hợp Khoa học tự nhi&ecirc;n (L&yacute;, H&oacute;a, Sinh) hoặc Khoa học x&atilde; hội (Sử, Địa, Gi&aacute;o dục c&ocirc;ng d&acirc;n). Nếu muốn tăng cơ hội x&eacute;t tuyển đại học, th&iacute; sinh c&oacute; thể chọn thi cả hai b&agrave;i tổ hợp.</p>\r\n\r\n<p>Kỳ thi 2017 cả nước c&oacute; khoảng 860.000 th&iacute; sinh (giảm hơn 27.000 so với năm trước) sẽ dự thi THPT quốc gia để x&eacute;t tốt nghiệp v&agrave; x&eacute;t tuyển đại học, cao đẳng sư phạm. Hơn 643.000 (75%) th&iacute; sinh thi để lấy kết quả x&eacute;t tuyển đại học. Trong khi đ&oacute;, chỉ ti&ecirc;u của c&aacute;c trường đại học, cao đẳng sư phạm cả nước l&agrave; hơn 392.000 (giảm 30.000 so với năm trước).&nbsp;</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>Quỳnh Trang</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Vnexpress.net</em></p>\r\n', 1, NULL, 1, 1, 0, 15, '2017-10-09 10:57:59', '2017-10-09 10:58:06', 1, 1),
(3, 'Lưu ‎‎ý quan trọng với thí sinh khi làm bài thi tổ hợp', 'luu-y-quan-trong-voi-thi-sinh-khi-lam-bai-thi-to-hop', 'Luu ‎‎y quan trong voi thi sinh khi lam bai thi to hop', 'Hai bài thi tổ hợp khoa học tự nhiên và khoa học xã hội là điểm mới trong kỳ thi THPT quốc gia 2017. Thí sinh cần nắm rõ quy định với hai bài thi này để tránh sai sót đáng tiếc.', '/public/uploads/images/tin-tuc/thumb00_081905408995654-1507521513.jpg', 1, '<h2>Điểm kh&aacute;c biệt với 2 đối tượng th&iacute; sinh</h2>\r\n\r\n<p>B&agrave;i thi khoa học tự nhi&ecirc;n gồm tổ hợp c&aacute;c m&ocirc;n Vật l&yacute;, H&oacute;a học, Sinh học.</p>\r\n\r\n<p>Ri&ecirc;ng b&agrave;i thi khoa học x&atilde; hội c&oacute; sự kh&aacute;c biệt giữa 2 đối tượng th&iacute; sinh. Cụ thể, th&iacute; sinh học chương tr&igrave;nh gi&aacute;o dục THPT b&agrave;i thi khoa học x&atilde; hội gồm tổ hợp c&aacute;c m&ocirc;n Lịch sử, Địa l&yacute;, Gi&aacute;o dục c&ocirc;ng d&acirc;n.</p>\r\n\r\n<p>Th&iacute; sinh học chương tr&igrave;nh GDTX cấp THPT, b&agrave;i thi khoa học x&atilde; hội &iacute;t m&ocirc;n hơn, chỉ gồm Lịch sử v&agrave; Địa l&yacute;.</p>\r\n\r\n<p>Để x&eacute;t c&ocirc;ng nhận tốt nghiệp THPT, th&iacute; sinh học chương tr&igrave;nh Gi&aacute;o dục THPT phải dự thi 4 b&agrave;i thi, gồm 3 b&agrave;i thi độc lập l&agrave; To&aacute;n, Ngữ văn, Ngoại ngữ v&agrave; một b&agrave;i thi do th&iacute; sinh tự chọn trong số 2 b&agrave;i thi tổ hợp.</p>\r\n\r\n<p>Th&iacute; sinh học chương tr&igrave;nh GDTX cấp THPT phải dự thi 3 b&agrave;i thi, gồm 2 b&agrave;i thi độc lập l&agrave; To&aacute;n, Ngữ văn v&agrave; một b&agrave;i thi do th&iacute; sinh tự chọn trong số 2 b&agrave;i thi tổ hợp.</p>\r\n\r\n<p><img alt=\"Lưu ‎‎ý quan trọng với thí sinh khi làm bài thi tổ hợp\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/06/19/shares/081632_anh.jpg\" /></p>\r\n\r\n<h3><em>Th&iacute; sinh cần nắm r&otilde; quy định với hai b&agrave;i thi tổ hợp khoa học tự nhi&ecirc;n v&agrave; khoa học x&atilde; hội để tr&aacute;nh sai s&oacute;t đ&aacute;ng tiếc.</em></h3>\r\n\r\n<p>Th&iacute; sinh được chọn dự thi cả 2 b&agrave;i thi tổ hợp, điểm b&agrave;i thi tổ hợp n&agrave;o cao hơn sẽ được chọn để t&iacute;nh điểm x&eacute;t c&ocirc;ng nhận tốt nghiệp THPT; th&iacute; sinh GDTX c&oacute; thể chọn dự thi cả b&agrave;i thi Ngoại ngữ, điểm b&agrave;i thi n&agrave;y để x&eacute;t tuyển sinh ĐH, CĐ, kh&ocirc;ng d&ugrave;ng để t&iacute;nh điểm x&eacute;t c&ocirc;ng nhận tốt nghiệp THPT.</p>\r\n\r\n<p>Để x&eacute;t tuyển sinh ĐH, CĐ, th&iacute; sinh đ&atilde; tốt nghiệp THPT phải dự thi c&aacute;c b&agrave;i thi độc lập, b&agrave;i thi tổ hợp hoặc c&aacute;c m&ocirc;n thi th&agrave;nh phần của b&agrave;i thi tổ hợp, ph&ugrave; hợp với tổ hợp b&agrave;i thi, m&ocirc;n thi x&eacute;t tuyển v&agrave;o ng&agrave;nh, nh&oacute;m ng&agrave;nh theo quy định của trường ĐH, CĐ.</p>\r\n\r\n<h2>Lưu &lrm;&yacute; quan trọng khi l&agrave;m b&agrave;i thi tổ hợp</h2>\r\n\r\n<p>Theo quy định, th&iacute; sinh l&agrave; học sinh lớp 12 năm học 2016-2017 ĐKDT b&agrave;i thi tổ hợp n&agrave;o th&igrave; phải thi tất cả c&aacute;c m&ocirc;n thi th&agrave;nh phần của b&agrave;i thi tổ hợp đ&oacute;.</p>\r\n\r\n<p>Th&iacute; sinh l&agrave;m b&agrave;i c&aacute;c m&ocirc;n thi th&agrave;nh phần của b&agrave;i thi tổ hợp theo Lịch thi tr&ecirc;n c&ugrave;ng một phiếu trả lời trắc nghiệm (TLTN).</p>\r\n\r\n<p>Cần hết sức lưu &yacute;, c&aacute;c m&ocirc;n thi th&agrave;nh phần trong mỗi b&agrave;i thi tổ hợp c&oacute; c&ugrave;ng một m&atilde; đề thi; th&iacute; sinh ghi m&atilde; đề thi n&agrave;y tr&ecirc;n Phiếu TLTN để theo d&otilde;i.</p>\r\n\r\n<p>Th&iacute; sinh phải nộp lại đề thi, giấy nh&aacute;p khi hết thời gian l&agrave;m b&agrave;i m&ocirc;n thi th&agrave;nh phần; kh&ocirc;ng phải nộp lại đề thi, giấy nh&aacute;p đối với m&ocirc;n thi Sinh học v&agrave; Gi&aacute;o dục c&ocirc;ng d&acirc;n của b&agrave;i thi tổ hợp; kh&ocirc;ng phải nộp lại đề thi, giấy nh&aacute;p đối với c&aacute;c b&agrave;i thi độc lập To&aacute;n, Ngữ văn, Ngoại ngữ.</p>\r\n\r\n<p>Khi thu b&agrave;i, th&iacute; sinh phải điền v&agrave;o Phiếu thu b&agrave;i thi số tờ giấy thi của m&igrave;nh v&agrave; k&yacute; x&aacute;c nhận; đảm bảo kh&ocirc;ng xảy ra nhầm lẫn, thiếu s&oacute;t.</p>\r\n\r\n<h2>Lưu &yacute; với th&iacute; sinh chỉ thi 1-2 m&ocirc;n th&agrave;nh phần</h2>\r\n\r\n<p>Th&iacute; sinh GDTX thi b&agrave;i thi khoa học x&atilde; hội, th&iacute; sinh tự do, được xếp ph&ograve;ng thi ri&ecirc;ng ở một hoặc một số điểm thi do Gi&aacute;m đốc Sở GD&amp;ĐT quyết định.</p>\r\n\r\n<p>Với th&iacute; sinh thi 2 m&ocirc;n thi th&agrave;nh phần li&ecirc;n tiếp (bao gồm cả th&iacute; sinh GDTX thi b&agrave;i thi khoa học x&atilde; hội): Th&iacute; sinh c&oacute; mặt tại ph&ograve;ng thi trước giờ ph&aacute;t đề thi &iacute;t nhất 15 ph&uacute;t để l&agrave;m c&ocirc;ng t&aacute;c chuẩn bị.</p>\r\n\r\n<p>Ngay sau khi hết giờ l&agrave;m b&agrave;i của m&ocirc;n thi th&agrave;nh phần thứ nhất của m&igrave;nh, th&iacute; sinh phải dừng b&uacute;t, c&aacute;n bộ coi thi (CBCT) thu đề thi v&agrave; giấy nh&aacute;p của th&iacute; sinh, sau đ&oacute; CBCT ph&aacute;t đề thi m&ocirc;n thi th&agrave;nh phần tiếp theo v&agrave; giấy nh&aacute;p mới đ&uacute;ng Lịch thi. Khi hết giờ l&agrave;m b&agrave;i m&ocirc;n thi th&agrave;nh phần thứ 2, CBCT thu đề thi v&agrave; giấy nh&aacute;p của th&iacute; sinh (trừ m&ocirc;n thi Sinh học v&agrave; Gi&aacute;o dục c&ocirc;ng d&acirc;n) v&agrave; cho th&iacute; sinh ra về dưới sự hướng dẫn của c&aacute;n bộ gi&aacute;m s&aacute;t.</p>\r\n\r\n<p>Với th&iacute; sinh thi 2 m&ocirc;n thi th&agrave;nh phần kh&ocirc;ng li&ecirc;n tiếp: C&oacute; mặt tại ph&ograve;ng thi trước giờ ph&aacute;t đề thi &iacute;t nhất 15 ph&uacute;t để l&agrave;m c&ocirc;ng t&aacute;c chuẩn bị.</p>\r\n\r\n<p>Ngay sau khi hết giờ l&agrave;m b&agrave;i của m&ocirc;n thi th&agrave;nh phần thứ nhất, th&iacute; sinh phải dừng b&uacute;t, nộp đề thi, giấy nh&aacute;p cho CBCT.</p>\r\n\r\n<p>Th&iacute; sinh phải ngồi nguy&ecirc;n vị tr&iacute;, giữ trật tự, &uacute;p Phiếu TLTN xuống mặt b&agrave;n v&agrave; bảo quản Phiếu TLTN trong suốt thời gian chờ thi m&ocirc;n th&agrave;nh phần tiếp theo.</p>\r\n\r\n<p>Trường hợp đặc biệt, th&iacute; sinh ra ngo&agrave;i ph&ograve;ng thi phải được ph&eacute;p của CBCT, th&iacute; sinh n&agrave;y phải nộp Phiếu TLTN cho CBCT; th&iacute; sinh ra ngo&agrave;i ph&ograve;ng thi dưới sự hướng dẫn của c&aacute;n bộ gi&aacute;m s&aacute;t.</p>\r\n\r\n<p>Th&iacute; sinh chỉ thi một m&ocirc;n thi th&agrave;nh phần: C&oacute; mặt tại ph&ograve;ng thi trước giờ ph&aacute;t đề thi &iacute;t nhất 15 ph&uacute;t để l&agrave;m c&ocirc;ng t&aacute;c chuẩn bị. Ngay sau khi hết giờ l&agrave;m b&agrave;i, CBCT thu Phiếu TLTN, thu đề thi v&agrave; giấy nh&aacute;p của th&iacute; sinh (trừ c&aacute;c m&ocirc;n thi Sinh học v&agrave; Gi&aacute;o dục c&ocirc;ng d&acirc;n) v&agrave; cho th&iacute; sinh ra về dưới sự hướng dẫn của c&aacute;n bộ gi&aacute;m s&aacute;t.</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>Lập Phương</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Giaoducthoidai.vn</em></p>\r\n', 0, NULL, 1, 1, 0, 16, '2017-10-09 10:58:50', '2017-10-09 10:58:50', 1, 1),
(4, '5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời', '5-dieu-chung-ta-cu-mai-phan-nan-o-tuoi-20-truong-thanh-roi-moi-biet-do-la-nhung-thu-sieu-tuyet-voi', '5 dieu chung ta cu mai phan nan o tuoi 20, truong thanh roi moi biet do la nhung thu sieu tuyet voi', 'Những năm tháng của tuổi 20 là để học làm người, để vững vàng mà chiến đấu cho những điều tốt đẹp bạn mong muốn.', '/public/uploads/images/tin-tuc/093644_1-1507521557.jpg', 2, '<h2>1. Ở tuổi 20 - bạn bắt đầu tự chi trả cho ch&iacute;nh bản th&acirc;n m&igrave;nh</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/08/shares/093644_1.jpg\" /></p>\r\n\r\n<p>Những năm th&aacute;ng của tuổi 20 bắt đầu từ việc bạn ra trường, kiếm tiền v&agrave; tự nu&ocirc;i sống bản th&acirc;n m&igrave;nh. Để duy tr&igrave; cuộc sống nghe c&oacute; vẻ đơn giản, tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.</p>\r\n\r\n<p>Tiền ăn, tiền chơi, tiền nh&agrave;, tiền điện, tiền nước, tiền điện thoại... Hầu hết ch&uacute;ng ta được bố mẹ &quot;bao đ&atilde;i trọn g&oacute;i&quot;, sống một c&aacute;ch &quot;miễn ph&iacute;&quot; trong gần hai thập kỷ đầu đời. Giờ đ&acirc;y th&igrave; sao? Từng con số trong t&agrave;i khoản ng&acirc;n h&agrave;ng &quot;nhảy m&uacute;a&quot; v&agrave; biến mất trước khi bạn kịp nh&igrave;n thấy ch&uacute;ng.</p>\r\n\r\n<p>Sốc kh&ocirc;ng? C&oacute; chứ, trừ khi bạn c&oacute; một tuổi thơ đầy s&oacute;ng gi&oacute; v&agrave; biết tự lập từ sớm, c&ograve;n kh&ocirc;ng những người trẻ ở tuổi 20 đều c&oacute; những khủng hoảng về tiền bạc.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, chẳng mấy ai n&oacute;i với bạn rằng: ch&uacute;ng ta đem sự &ecirc;m ấm, bao bọc trong v&ograve;ng tay của gia đ&igrave;nh để đổi lấy sự tự chủ. Nếu bạn suy nghĩ theo hướng đ&oacute;, khủng hoảng về tiền bạc ch&iacute;nh l&agrave; c&uacute; h&iacute;ch gi&uacute;p bạn vươn l&ecirc;n v&agrave; cố gắng kiếm tiền, chẳng c&oacute; g&igrave; phải căng thẳng hết.</p>\r\n\r\n<h2>2. Ở tuổi 20 - bạn phải bắt đầu từ những c&ocirc;ng việc nghe đ&atilde; thấy ch&aacute;n</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/08/shares/093703_2.jpg\" /></p>\r\n\r\n<p>H&atilde;y th&uacute; thật với nhau, ở tuổi 20 chẳng ai mang ước mơ b&eacute; nhỏ! Gần như ai cũng nghĩ về một cuộc sống tươi đẹp, được l&agrave;m thứ m&igrave;nh th&iacute;ch, kiếm được nhiều tiền v&acirc;n v&acirc;n v&agrave; m&acirc;y m&acirc;y...</p>\r\n\r\n<p>Thế nhưng, cuộc sống hiện thực lại phũ ph&agrave;ng, kh&ocirc;ng phải ai cũng c&oacute; cuộc sống m&agrave;u hồng sau Đại học, phải l&agrave;m những c&ocirc;ng việc ch&acirc;n tay vất vả hoặc chẳng được người đời coi trọng, đơn giản v&igrave; bạn chưa c&oacute; kinh nghiệm g&igrave; hết.</p>\r\n\r\n<p>Người tốt nghiệp bằng giỏi vẫn phải đi phục vụ b&agrave;n, chạy Uber, Grab, l&agrave;m nh&acirc;n vi&ecirc;n thị trường tối ng&agrave;y long dong ngo&agrave;i đường mời ch&agrave;o kh&aacute;ch, bị ăn chửi tơi bời rồi trở về với khu&ocirc;n mặt lấm lem bụi đường.</p>\r\n\r\n<p>Tuổi 20 v&agrave; những c&ocirc;ng việc m&agrave; ch&uacute;ng ta coi l&agrave; tồi tệ, vất vả, thu nhập b&egrave;o bọt.</p>\r\n\r\n<p>C&oacute; l&atilde;ng ph&iacute; thời gian kh&ocirc;ng? Kh&ocirc;ng hề, bạn c&oacute; nhớ c&acirc;u chuyện về một cậu b&eacute; tới rạp xiếc v&agrave; muốn học ảo thuật kh&ocirc;ng? Việc đầu ti&ecirc;n m&agrave; cậu ta phải l&agrave;m l&agrave; đi qu&eacute;t dọn ph&acirc;n ngựa. Cuộc đời vẫn vậy, muốn l&ecirc;n cao phải leo từng bậc, nhảy c&oacute;c chỉ dễ ng&atilde; đau th&ocirc;i.</p>\r\n\r\n<p>Trước khi c&oacute; được cuộc sống v&agrave; c&ocirc;ng việc bạn mong muốn, h&atilde;y suy nghĩ thực tế một ch&uacute;t. Đừng qu&aacute; để &yacute; đến những tấm gương l&agrave;m gi&agrave;u ở tuổi 20, đ&oacute; l&agrave; con số rất rất nhỏ nhoi trong x&atilde; hội n&agrave;y.</p>\r\n\r\n<p>Những năm th&aacute;ng của tuổi 20 l&agrave; để học l&agrave;m người, c&oacute; vững v&agrave;ng đ&atilde; rồi những thứ tốt đẹp sẽ đến với bạn.</p>\r\n\r\n<h2>3. Ở tuổi 20 - chuyện t&igrave;nh cảm l&agrave;m ch&uacute;ng ta đau đầu!</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/08/shares/093735_3.jpg\" /></p>\r\n\r\n<p>Những năm đầu tuổi 20, t&igrave;nh cảm m&atilde;nh liệt nhất v&agrave; cũng s&acirc;u sắc nhất. Hẹn h&ograve;, t&aacute;n tỉnh c&ocirc; g&aacute;i trong mộng thất bại hoặc c&oacute; chăng y&ecirc;u nhau nhưng mỗi người một thế giới, lại tranh c&atilde;i suốt ng&agrave;y.</p>\r\n\r\n<p>Khi bạn 20, bạn th&iacute;ch sự n&aacute;o nhiệt, bạn chỉ muốn t&igrave;m được một đối tượng khiến cho bạn cảm thấy th&uacute; vị v&agrave; hấp dẫn. Với bạn, gặp được một người như vậy c&oacute; khi c&ograve;n quan trọng hơn l&agrave; t&igrave;m ra đối tượng ph&ugrave; hợp.</p>\r\n\r\n<p>Để tới khi 30 tuổi, c&oacute; thể bạn sẽ bật cười khi nghĩ về con người ng&ocirc; ngh&ecirc; ng&agrave;y đ&oacute;. L&uacute;c n&agrave;y, t&igrave;m một người c&ugrave;ng chung ch&iacute; hướng, c&oacute; thể hiểu v&agrave; th&ocirc;ng cảm cho nhau mới l&agrave; ti&ecirc;u ch&iacute; quan trọng nhất.</p>\r\n\r\n<p>Kh&ocirc;ng c&oacute; những &quot;đau đầu&quot; của tuổi 20, bạn sẽ trưởng th&agrave;nh về mặt t&igrave;nh cảm thế n&agrave;o được ở tuổi 30?</p>\r\n\r\n<h2>4. Ở tuổi 20 - bạn b&egrave; rơi rụng dần</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/08/shares/093811_4.jpg\" /></p>\r\n\r\n<p>H&atilde;y lấy bức ảnh tốt nghiệp cấp ba hoặc Đại học ra, ngẫm xem tới giờ bạn c&ograve;n qua lại với bao nhi&ecirc;u người?</p>\r\n\r\n<p>C&oacute; một sự thật m&agrave; ai cũng phải chấp nhận: c&agrave;ng trưởng th&agrave;nh, c&agrave;ng &iacute;t bạn.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; một điều hiển nhi&ecirc;n nhưng n&oacute; cũng l&agrave; l&yacute; do lớn nhất g&acirc;y ra c&aacute;i chết của một t&igrave;nh bạn v&agrave;o những năm 20 của cuộc đời. Ở độ tuổi n&agrave;y, bạn biết kh&ocirc;ng, bạn thực sự chưa biết r&otilde; về ch&iacute;nh bản th&acirc;n m&igrave;nh. Bạn m&ugrave; mờ v&agrave;o việc m&igrave;nh l&agrave; ai, m&igrave;nh muốn trở th&agrave;nh người như thế n&agrave;o v&agrave; bạn cứ v&ocirc; thức hướng về những người khiến bạn thấy c&oacute; &yacute; nghĩa nhất v&agrave;o l&uacute;c đ&oacute;. Sau một thời gian, bạn nắm được quyền kiểm so&aacute;t mạnh mẽ hơn v&agrave;o bản th&acirc;n m&igrave;nh v&agrave; x&aacute;c định được những người m&igrave;nh muốn ở b&ecirc;n. V&igrave; lẽ đ&oacute;, bạn bắt đầu cựa m&igrave;nh thay đổi. Bạn loại bỏ những người kh&ocirc;ng c&ograve;n ph&ugrave; hợp với m&igrave;nh.</p>\r\n\r\n<p>Đ&acirc;y c&oacute; lẽ l&agrave; l&yacute; do kh&oacute; khăn nhất khi n&oacute;i về việc kết th&uacute;c một t&igrave;nh bạn bởi thực sự&hellip; n&oacute; chẳng phải l&agrave; lỗi của ai cả. Bạn v&agrave; những người bạn đ&oacute; đơn thuần chỉ l&agrave; lớn l&ecirc;n v&agrave; trở th&agrave;nh những người kh&aacute;c.</p>\r\n\r\n<p>Đ&uacute;ng, điều n&agrave;y kh&ocirc;ng c&oacute; g&igrave; xấu, những ai c&ograve;n b&ecirc;n cạnh ch&iacute;nh l&agrave; những người ph&ugrave; hợp cho cuộc sống hiện tại của bạn, &quot;chất lượng lu&ocirc;n tốt hơn số lượng&quot;.</p>\r\n\r\n<h2>5. Ở tuổi 20 - hy vọng nhiều, thất vọng lại c&agrave;ng nhiều</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"5 điều chúng ta cứ mãi phàn nàn ở tuổi 20, trưởng thành rồi mới biết đó là những thứ siêu tuyệt vời\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/05/08/shares/093828_5.png\" /></p>\r\n\r\n<p>Cuộc sống kh&ocirc;ng tồn tại m&agrave;u hồng, m&agrave; chỉ c&oacute; trắng đen v&agrave; x&aacute;m. Hy vọng c&agrave;ng nhiều, thất vọng c&agrave;ng nhiều hơn. Hoặc nếu đạt được điều m&igrave;nh hi vọng th&igrave; niềm vui bị giảm đi rất nhiều lần v&igrave; đ&atilde; &quot;đo&aacute;n trước được&quot;.</p>\r\n\r\n<p>Hy vọng l&agrave; c&aacute;ch n&oacute;i b&oacute;ng bẩy của &quot;đo&aacute;n m&ograve;&quot;, &quot;50/50&quot;, &quot;m&ecirc; t&iacute;n&quot; v&agrave; thiếu thực tế. Những người c&oacute; suy nghĩ ch&iacute;n chắn v&agrave; thực tiễn sẽ chỉ quan t&acirc;m đến kết quả, với &iacute;t hi vọng nhất c&oacute; thể để tr&aacute;nh bị mất tinh thần v&agrave; tiếp tục tiến l&ecirc;n sau mỗi lần thất bại.</p>\r\n\r\n<p>Khi đối mặt với thất bại th&igrave; những lời hứa h&atilde;o, sự hi vọng sẽ như c&aacute;i c&ugrave;m sắt, biến ch&iacute;nh m&igrave;nh th&agrave;nh thằng thất hứa trong việc sống k tới với hy vọng m&agrave; m&igrave;nh gieo v&agrave;o người kh&aacute;c. V&agrave; đương nhi&ecirc;n sẽ l&agrave;m ch&iacute;nh m&igrave;nh ch&ugrave;n ch&acirc;n đi một &iacute;t sau mỗi lần thất bại v&agrave; kết quả l&agrave; mất tinh thần, mất niềm tin v&agrave;o ch&iacute;nh những lựa chọn của m&igrave;nh (chịu qu&aacute; nhiều thất vọng bởi ch&iacute;nh h&agrave;nh động của m&igrave;nh.)</p>\r\n\r\n<p>Thế n&ecirc;n, những nỗi thất vọng tr&agrave;n trề của tuổi 20 l&agrave; một trong những yếu tố gi&uacute;p ch&uacute;ng ta trưởng th&agrave;nh.</p>\r\n\r\n<p>Bạn thường tắm l&acirc;u tắm kỹ nhưng lại bỏ qu&ecirc;n những bộ phận c&agrave;ng kỳ cọ th&igrave; c&agrave;ng c&oacute; lợi cho sức khỏe</p>\r\n\r\n<p><strong><em>Theo Long.J/ Thời Đại/ Cafebiz.vn</em></strong></p>\r\n', 0, NULL, 1, 1, 0, 17, '2017-10-09 11:00:00', '2017-10-09 11:00:00', 1, 1),
(5, 'Nhiều trường thêm tổ hợp mới trong xét tuyển', 'nhieu-truong-them-to-hop-moi-trong-xet-tuyen', 'Nhieu truong them to hop moi trong xet tuyen', 'Năm nay, nhiều trường đại học dự kiến có thêm các tổ hợp mới với sự góp mặt của bài thi Khoa học tự nhiên và Khoa học xã hội.', '/public/uploads/images/tin-tuc/083538_gd4-1507521650.jpg', 1, '<p>TS L&ecirc; Ch&iacute; Th&ocirc;ng - Trưởng ph&ograve;ng Đ&agrave;o tạo Đại học B&aacute;ch khoa TP.HCM - cho biết năm 2017, trường sẽ x&eacute;t tuyển thẳng theo quy chế tuyển sinh của Bộ GD&amp;ĐT; ưu ti&ecirc;n x&eacute;t tuyển học sinh c&aacute;c trường THPT chuy&ecirc;n, năng khiếu tr&ecirc;n to&agrave;n quốc (theo phương &aacute;n tuyển sinh của ĐHQG TP.HCM); x&eacute;t tuyển theo kết quả thi THPT quốc gia 2017 v&agrave; x&eacute;t tuyển theo kết quả kỳ thi đ&aacute;nh gi&aacute; năng lực của ĐHQG TP.HCM</p>\r\n\r\n<p>Trong c&aacute;c phương thức x&eacute;t tuyển kể tr&ecirc;n, phương thức x&eacute;t tuyển theo kết quả thi THPT quốc gia 2017 chiếm khoảng 80% chỉ ti&ecirc;u.</p>\r\n\r\n<p>&ldquo;Sẽ c&oacute; tổ hợp K00 b&agrave;i thi Khoa học tự nhi&ecirc;n v&agrave; K01 b&agrave;i thi Khoa học x&atilde; hội v&agrave;o x&eacute;t tuyển, trong đ&oacute; hầu hết ng&agrave;nh đều x&eacute;t tuyển tổ hợp m&ocirc;n K00&rdquo;, PGS. TS Đỗ Văn Dũng - Hiệu trưởng Đại học Sư phạm Kỹ thuật TP.HCM - chia sẻ.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Nhiều trường thêm tổ hợp mới trong xét tuyển\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/01/13/shares/083538_gd4.jpg\" /></p>\r\n\r\n<h3><em>Năm nay, nhiều trường đại học dự kiến sẽ c&oacute; th&ecirc;m c&aacute;c tổ hợp mới với sự g&oacute;p mặt của b&agrave;i thi Khoa học tự nhi&ecirc;n v&agrave; Khoa học x&atilde; hội. Ảnh minh họa.</em></h3>\r\n\r\n<p>Trong khi đ&oacute;, Đại học C&ocirc;ng nghiệp Thực phẩm TP.HCM b&ecirc;n cạnh c&aacute;c tổ hợp x&eacute;t tuyển truyền thống, năm nay, trường c&oacute; th&ecirc;m tổ hợp x&eacute;t tuyển tự nhi&ecirc;n gồm To&aacute;n, Văn v&agrave; Khoa học Tự nhi&ecirc;n.</p>\r\n\r\n<p>Tương tự, Đại học Khoa học Tự nhi&ecirc;n năm nay cũng đưa th&ecirc;m b&agrave;i thi Khoa học Tự nhi&ecirc;n v&agrave;o x&eacute;t tuyển như C&ocirc;ng nghệ Sinh học, Khoa học Vật liệu, To&aacute;n học với tổ hợp To&aacute;n - Tiếng Anh - Khoa học Tự nhi&ecirc;n&hellip;</p>\r\n\r\n<p>Đại học Văn Hiến cũng dự kiến đưa th&ecirc;m nhiều tổ hợp với sự c&oacute; mặt của b&agrave;i thi Khoa học Tự nhi&ecirc;n v&agrave; Khoa học X&atilde; hội trong x&eacute;t tuyển để ph&ugrave; hợp với ng&agrave;nh học cũng như mở rộng đối tượng x&eacute;t tuyển.</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>Nguyễn Dũng</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Tienphong.vn</em></p>\r\n', 1, NULL, 1, 1, 0, 18, '2017-10-09 11:01:10', '2017-10-10 13:21:44', 1, 1),
(6, '7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama', '7-bi-quyet-de-doc-duoc-nhieu-sach-nhu-bill-gates-elon-musk-hay-obama', '7 bi quyet de doc duoc nhieu sach nhu Bill Gates, Elon Musk hay Obama', 'Bố trí được khoảng thời gian đọc sách nhiều là điều rất khó với đại đa số chúng ta, thế nhưng chỉ với một vài phương pháp đơn giản ta có thể tối ưu hoá thời gian đọc, đọc được nhiều sách hơn như Bill Gates hay những người siêu thành công khác.', '/public/uploads/images/tin-tuc/thumb00_085701186119988-1507521708.jpg', 2, '<p>Lợi &iacute;ch của việc đọc s&aacute;ch đ&atilde; qu&aacute; r&otilde; r&agrave;ng kh&ocirc;ng cần phải b&agrave;n c&atilde;i. Nhưng đọc s&aacute;ch rất tốn thời gian v&agrave; với những người c&oacute; c&ocirc;ng việc bận rộn, gần như kh&ocirc;ng thể vừa c&oacute; thời gian đọc s&aacute;ch vừa tập trung giải quyết khối lượng c&ocirc;ng việc lớn ngập đầu.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/04/26/shares/085255_1.jpg\" /></p>\r\n\r\n<p>May mắn thay, những chuy&ecirc;n gia gi&aacute;m s&aacute;t kinh doanh ở Đại học Harvard (HBR) đ&atilde; gi&uacute;p ch&uacute;ng ta kh&aacute;m ph&aacute; ra một số mẹo nhỏ để đảm bảo rằng bạn sẽ c&oacute; thể h&igrave;nh th&agrave;nh th&oacute;i quen đọc s&aacute;ch h&agrave;ng ng&agrave;y v&agrave; tăng số lượng s&aacute;ch m&agrave; bạn đọc.</p>\r\n\r\n<h2>1. Biết từ bỏ những cuốn s&aacute;ch &ldquo;v&ocirc; nghĩa&rdquo;</h2>\r\n\r\n<p>Hầu hết mọi người đều cố gắng ho&agrave;n th&agrave;nh một quyển s&aacute;ch ngay cả khi n&oacute; chẳng mang lại &yacute; nghĩa g&igrave; đặc biệt, thậm ch&iacute; l&agrave; n&oacute; rất ch&aacute;n. Bởi v&igrave; kh&ocirc;ng ai muốn l&agrave;m một &ldquo;kẻ bỏ cuộc&rdquo;.</p>\r\n\r\n<p>Gretchen Rubin, t&aacute;c giả của cuốn s&aacute;ch b&aacute;n chạy The Happiness Project v&agrave; l&agrave; chuy&ecirc;n gia nghi&ecirc;n cứu th&oacute;i quen ở Đại học Harvard đ&atilde; ph&aacute;t hiện ra rằng &ldquo;người th&agrave;nh c&ocirc;ng kh&ocirc;ng bao giờ bỏ cuộc&rdquo; kh&ocirc;ng được &aacute;p dụng với th&oacute;i quen đọc s&aacute;ch.</p>\r\n\r\n<p>Rubin cho biết, bỏ đọc những cuốn s&aacute;ch tồi c&agrave;ng sớm th&igrave; bạn &ldquo;c&agrave;ng c&oacute; nhiều thời gian để đọc những cuốn s&aacute;ch kh&aacute;c tuyệt vời hơn&rdquo; v&agrave; khiến việc đọc s&aacute;ch kh&ocirc;ng trở th&agrave;nh một điều bắt buộc. Mỗi năm c&oacute; hơn 50.000 đầu s&aacute;ch được xuất bản. Tại sao phải ph&iacute; phạm thời gian đọc những cuốn s&aacute;ch m&agrave; bạn kh&ocirc;ng th&iacute;ch?</p>\r\n\r\n<p>H&atilde;y bỏ qua mặc cảm tội lỗi v&agrave; đặt n&oacute; xuống. Bạn sẽ tiết kiệm được thời gian v&agrave; đầu tư n&oacute; đ&uacute;ng l&uacute;c đ&uacute;ng chỗ hơn.</p>\r\n\r\n<h2>2. Tận dụng những giờ ph&uacute;t rảnh rỗi ở bất cứ nơi n&agrave;o</h2>\r\n\r\n<p>Stephen King n&oacute;i rằng việc đọc s&aacute;ch đ&atilde; đ&oacute;ng g&oacute;p phần lớn v&agrave;o sự nghiệp văn chương của &ocirc;ng v&agrave; nếu ai muốn theo bước &ocirc;ng trong sự nghiệp viết l&aacute;ch th&igrave; n&ecirc;n đọc &iacute;t nhất 5 tiếng một ng&agrave;y.</p>\r\n\r\n<p>Với những người bận rộn th&igrave; họ thấy tuy&ecirc;n bố đ&oacute; thật v&ocirc; l&iacute;. Cho đến khi HBR thường xuy&ecirc;n ghi lại được việc Stephen King đọc khi ra khỏi nh&agrave;. Thậm ch&iacute; c&ograve;n c&oacute; cả những bức ảnh chụp lại &ocirc;ng đang đọc tại một trận đấu b&oacute;ng ch&agrave;y của đội Red Sox.</p>\r\n\r\n<p><img alt=\"7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/04/26/shares/085314_2.jpg\" /></p>\r\n\r\n<p>Với những người đi đường, việc r&uacute;t một cuốn s&aacute;ch ra để đọc tại c&ocirc;ng vi&ecirc;n l&agrave; một điều k&igrave; lạ. Nhưng nếu họ biết rằng th&oacute;i quen đ&oacute; đ&atilde; gi&uacute;p Stephen King b&aacute;n được 350 triệu đầu s&aacute;ch th&igrave; chắc chắn họ sẽ mang theo một cuốn s&aacute;ch v&agrave;o lần sau.</p>\r\n\r\n<p>Như Parisha đ&atilde; n&oacute;i, &ldquo;C&oacute; những khoảng thời gian &ldquo;chết&rdquo; mỗi ng&agrave;y, v&agrave; n&oacute; gi&uacute;p ch&uacute;ng ta c&oacute; th&ecirc;m rất nhiều ph&uacute;t để đọc&rdquo;. Điều đ&oacute; kh&ocirc;ng c&oacute; nghĩa l&agrave; bạn phải mang theo một quyển s&aacute;ch để đọc trong đ&aacute;m cưới của người bạn th&acirc;n, nhưng c&oacute; rất nhiều cơ hội để bạn c&oacute; thể đọc gần như ở bất cứ nơi đ&acirc;u nếu bạn muốn&rdquo;</p>\r\n\r\n<h2>3. Giữ b&iacute; mật</h2>\r\n\r\n<p>Khoa học đ&atilde; chứng minh rằng việc chia sẻ &yacute; định của bạn với những người kh&aacute;c khi bạn đang thực hiện nhiệm vụ hay mục ti&ecirc;u c&oacute; thể khiến điều đ&oacute; phản t&aacute;c dụng v&agrave; l&agrave;m bạn &iacute;t c&oacute; cơ hội th&agrave;nh c&ocirc;ng hơn.</p>\r\n\r\n<p>Một nghi&ecirc;n cứu v&agrave;o năm 2009 đ&atilde; chứng minh rằng: khi c&aacute;c sinh vi&ecirc;n muốn trở th&agrave;nh nh&agrave; tư vấn t&acirc;m l&iacute;, nếu họ viết ra những hoạt động c&oacute; thể gi&uacute;p họ ho&agrave;n th&agrave;nh mục ti&ecirc;u v&agrave; chia sẻ với những người l&agrave;m th&iacute; nghiệm th&igrave; họ gần như kh&ocirc;ng thực hiện những hoạt động đ&oacute;. Ngược lại, nh&oacute;m kh&ocirc;ng chia sẻ danh s&aacute;ch những c&ocirc;ng việc cần thực hiện th&igrave; họ đ&atilde; d&agrave;nh nhiều thời gian hơn để theo đuổi mục ti&ecirc;u.</p>\r\n\r\n<p>Khi mọi người chia sẻ mục ti&ecirc;u của m&igrave;nh, họ cảm thấy c&oacute; &iacute;t động lực để l&agrave;m việc cật lực. N&ecirc;n nếu bạn c&oacute; &yacute; định đọc nhiều s&aacute;ch hơn, h&atilde;y viết ra một danh s&aacute;ch - nhưng h&atilde;y giữ n&oacute; cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<h2>4. Tr&aacute;nh xa những thứ g&acirc;y xao nh&atilde;ng</h2>\r\n\r\n<p>Neil Pasricha l&agrave;m điều n&agrave;y ở nh&agrave; ri&ecirc;ng bằng c&aacute;ch giấu Tivi xuống tầng hầm v&agrave; đặt gi&aacute; s&aacute;ch ở ph&ograve;ng kh&aacute;c. Theo HBR, Pasricha đ&atilde; được truyền cảm hứng bởi th&iacute; nghiệm nổi tiếng &ldquo;b&aacute;nh quy s&ocirc;-c&ocirc;-la v&agrave; củ cải&rdquo; của nh&agrave; nghi&ecirc;n cứu t&acirc;m l&iacute; Roy Baumeister.</p>\r\n\r\n<p>Những đối tượng l&agrave;m th&iacute; nghiệm bị bỏ đ&oacute;i được y&ecirc;u cầu ho&agrave;n th&agrave;nh một tr&ograve; chơi giải đố kh&oacute;. Một số người kh&ocirc;ng được đưa đồ ăn trong khi những người c&ograve;n lại được cho b&aacute;nh quy với điều kiện họ kh&ocirc;ng được ph&eacute;p ăn.</p>\r\n\r\n<p>Kh&ocirc;ng c&oacute; g&igrave; bất ngờ khi nh&oacute;m c&oacute; b&aacute;nh quy l&agrave; nh&oacute;m giải chậm nhất v&igrave; họ đ&atilde; d&agrave;nh to&agrave;n bộ &yacute; ch&iacute; để tho&aacute;t khỏi sự c&aacute;m dỗ khỏi những chiếc b&aacute;nh.</p>\r\n\r\n<h2>5. Đọc s&aacute;ch giấy</h2>\r\n\r\n<p>Lời khuy&ecirc;n về việc tr&aacute;nh xa những thứ l&agrave;m bạn mất tập trung cũng c&oacute; thể &aacute;p dụng để lựa chọn s&aacute;ch giấy thay cho những thiết bị điện tử. C&oacute; một cuốn s&aacute;ch hữu h&igrave;nh ở trong tay thay v&igrave; một thiết bị c&oacute; thể kết nối internet m&agrave; bạn d&ugrave;ng để check mail hay xem ảnh tr&ecirc;n Pinterest - điều n&agrave;y c&oacute; thể hạn chế việc mất tập trung v&agrave; gi&uacute;p bạn c&oacute; th&ecirc;m sức mạnh &yacute; ch&iacute; để đọc s&aacute;ch.</p>\r\n\r\n<p><img alt=\"7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/04/26/shares/085334_3.jpg\" /></p>\r\n\r\n<p>Nhưng giới hạn những thứ g&acirc;y ph&acirc;n t&acirc;m chỉ l&agrave; một trong những l&iacute; do để lựa chọn s&aacute;ch giấy thay v&igrave; e-book. Trong thời đại m&agrave; c&aacute;c k&ecirc;nh giải tr&iacute; v&agrave; truyền th&ocirc;ng được đưa l&ecirc;n m&agrave;n h&igrave;nh, một cuốn s&aacute;ch thật tr&ecirc;n tay c&oacute; thể tạo cho bạn cảm gi&aacute;c th&iacute;ch th&uacute;, gi&uacute;p giảm stress v&agrave; căng thẳng.</p>\r\n\r\n<h2>6. Thay đổi tư duy</h2>\r\n\r\n<p>Ryan Holiday - một chiến lược gia truyền th&ocirc;ng nhấn mạnh rằng thay đổi tư duy về việc đọc s&aacute;ch l&agrave; ch&igrave;a kh&oacute;a để đọc được nhiều hơn. &ldquo;Bạn phải dừng việc nghĩ rằng đọc s&aacute;ch l&agrave; một việc m&agrave; bạn phải l&agrave;m. H&atilde;y để n&oacute; trở th&agrave;nh một thứ tự nhi&ecirc;n như việc ăn hay việc thở của bạn. N&oacute; kh&ocirc;ng phải việc bạn l&agrave;m v&igrave; bạn th&iacute;ch, m&agrave; h&atilde;y biến n&oacute; th&agrave;nh phản xạ hay bản năng&rdquo;.</p>\r\n\r\n<p>Bạn sẽ kh&ocirc;ng bao giờ ho&agrave;n th&agrave;nh được c&ocirc;ng việc nếu như chỉ ngồi đ&oacute; v&agrave; suy t&iacute;nh l&agrave;m thế n&agrave;o để đạt được mục ti&ecirc;u m&agrave; chẳng bắt tay v&agrave;o thực hiện. H&atilde;y bắt đầu thay đổi th&oacute;i quen đọc s&aacute;ch bằng những h&agrave;nh động cụ thể, c&oacute; thời gian r&otilde; r&agrave;ng v&agrave; đặt n&oacute; l&ecirc;n ưu ti&ecirc;n h&agrave;ng đầu mỗi ng&agrave;y.</p>\r\n\r\n<h2>7. T&igrave;m một danh s&aacute;ch c&aacute;c đầu s&aacute;ch c&oacute; sẵn</h2>\r\n\r\n<p>Việc mệt mỏi v&igrave; phải lựa chọn v&agrave; ra quyết định l&agrave; vấn đề rất nhiều người gặp phải trước khi h&igrave;nh th&agrave;nh được th&oacute;i quen. Ch&uacute;ng ta c&oacute; thể thấy qua việc Steve Jobs hay Mark Zuckerberg lu&ocirc;n mặc một bộ đồ khi đi l&agrave;m hay ngay cả khi xuất hiện trước truyền th&ocirc;ng. Chọn ra đầu s&aacute;ch để đọc th&ocirc;i cũng c&oacute; thể hủy diệt &yacute; ch&iacute; của bạn khi bạn thậm ch&iacute; c&ograve;n chưa bắt đầu.</p>\r\n\r\n<p>Những nỗ lực vượt bậc để chuyển từ quyết t&acirc;m đọc h&agrave;ng ngh&igrave;n quyển s&aacute;ch mới mỗi năm c&oacute; thể cắn x&eacute; tinh thần bạn trước khi bạn thực sự c&oacute; thể đọc được một trang s&aacute;ch - v&agrave; đ&oacute; l&agrave; l&iacute; do tại sao HBR khuy&ecirc;n bạn n&ecirc;n t&igrave;m ra một danh s&aacute;ch được soạn sẵn.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"7 bí quyết để đọc được nhiều sách như Bill Gates, Elon Musk hay Obama\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2017/04/26/shares/085351_4.jpg\" /></p>\r\n\r\n<p>C&oacute; thể ch&uacute;ng ta kh&ocirc;ng t&agrave;i n&agrave;o đọc được 500 trang một ng&agrave;y như Warren Buffet hay ho&agrave;n th&agrave;nh 50 cuốn s&aacute;ch một năm như Bill Gates. Nhưng bạn ho&agrave;n to&agrave;n c&oacute; thể sử dụng những mẹo nhỏ n&agrave;y để đọc được th&ecirc;m nhiều s&aacute;ch trong năm nay, tăng khả năng tiếp nhận v&agrave; ti&ecirc;u h&oacute;a th&ocirc;ng tin, đạt được nhiều lợi &iacute;ch đ&atilde; được khoa học chứng minh m&agrave; việc đọc s&aacute;ch mang lại.</p>\r\n\r\n<p style=\"text-align: right;\">Theo Tru&ecirc; Spiderum/Tr&iacute; thức trẻ/Cafebiz.vn</p>\r\n', 1, NULL, 1, 1, 0, 19, '2017-10-09 11:02:30', '2017-10-10 13:21:38', 1, 1),
(7, 'Là tân sinh viên, đừng quên những điều này!', 'la-tan-sinh-vien-dung-quen-nhung-dieu-nay', 'La tan sinh vien, dung quen nhung dieu nay!', 'Là tân sinh viên nghĩa là mọi thứ đều bắt đầu mới, là nơi mà tuổi trẻ của bạn được chứng thực và cũng là điểm xuất phát cho những ước mơ, hoài bão.', '/public/uploads/images/tin-tuc/thumb00_051445578968397-1507521768.jpg', 2, '<h2>Đừng sợ h&atilde;i, h&atilde;y lu&ocirc;n hết m&igrave;nh!</h2>\r\n\r\n<p>Mỗi m&ugrave;a khai giảng, t&acirc;n sinh vi&ecirc;n lại đứng giữa v&ocirc; v&agrave;n lời cảnh b&aacute;o từ c&aacute;c nguồn tin, mạng x&atilde; hội. Ch&iacute;nh những th&ocirc;ng tin ti&ecirc;u cực đ&atilde; t&aacute;c động đến h&agrave;nh động của nhiều bạn, trong đ&oacute;, c&aacute;ch m&agrave; đa số c&aacute;c bạn lựa chọn để đối ph&oacute; l&agrave;: Hạn chế tiếp x&uacute;c.</p>\r\n\r\n<p><img alt=\"Là tân sinh viên, đừng quên những điều này!\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2016/09/07/shares/170656_1.jpg\" /></p>\r\n\r\n<h3><em>Cứ vui đi v&igrave; cuộc đời cho ph&eacute;p!</em></h3>\r\n\r\n<p>Tuy nhi&ecirc;n, thay v&igrave; đặt những c&acirc;u nghi vấn trước những vấn đề tại sao bạn kh&ocirc;ng chấp nhận giải quyết ch&uacute;ng theo c&aacute;ch m&agrave; trước đ&acirc;y bạn đ&atilde; từng. Đừng l&agrave;m m&igrave;nh gi&agrave; đi v&igrave; những lo sợ, h&atilde;y lu&ocirc;n hết m&igrave;nh với mọi thứ. Đơn giản l&agrave; cuộc sống vẫn c&ograve;n nhiều điều tốt đẹp v&agrave; những người tử tế, cứ sống hết m&igrave;nh rồi bạn sẽ nhận được niềm vui.</p>\r\n\r\n<h2>B&acirc;y giờ l&agrave; sai lầm, sau n&agrave;y sẽ l&agrave; kỉ niệm</h2>\r\n\r\n<p>Đừng sợ sai lầm bởi v&igrave; mọi thứ chỉ c&oacute; &yacute; nghĩa tương đối ở thời điểm m&agrave; ch&uacute;ng diễn ra. C&oacute; thể, ở khoảnh khắc đ&oacute; bạn cảm thấy &acirc;n hận v&igrave; đ&atilde; đi v&agrave;o con đường sai lệch hay bị cắn rứt bởi những vi phạm m&agrave; bất cứ ai trong đời sinh vi&ecirc;n cũng từng c&oacute; (đi học muộn, ngủ gật tr&ecirc;n lớp...) nhưng biết đ&acirc;u, sau n&agrave;y bạn lại cười tủm tỉm khi nghĩ về.</p>\r\n\r\n<p><img alt=\"Là tân sinh viên, đừng quên những điều này!\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2016/09/07/shares/170936_2.jpg\" /></p>\r\n\r\n<h3><em>Kh&ocirc;ng c&ograve;n l&agrave; con ếch dưới giếng nữa, giờ l&agrave; thời khắc để bạn &#39;bung lụa&#39;. Nhưng nhớ l&agrave; c&aacute;i g&igrave; qu&aacute; cũng kh&ocirc;ng phải l&agrave; điều tốt!</em></h3>\r\n\r\n<p>L&agrave; t&acirc;n sinh vi&ecirc;n, nghĩa l&agrave; bạn c&oacute; quyền lựa chọn: Thanh ni&ecirc;n nghi&ecirc;m t&uacute;c hay Sinh vi&ecirc;n thực thụ!</p>\r\n\r\n<h2>H&atilde;y kết giao thật nhiều, sau n&agrave;y bạn sẽ kh&ocirc;ng c&ograve;n nhiều cơ hội</h2>\r\n\r\n<p>Nếu chẳng may c&oacute; k&iacute; ức kh&ocirc;ng mấy tốt đẹp thời phổ th&ocirc;ng như... bị tẩy chay. Th&igrave; ng&ocirc;i trường mới sẽ l&agrave; cơ hội cho bạn l&agrave;m lại từ đầu. Những con người mới, những người bạn từ khắp nơi, h&atilde;y chủ động kết giao để c&oacute; th&ecirc;m những mối quan hệ. Đồng thời, c&oacute; những thay đổi bản th&acirc;n theo hướng t&iacute;ch cực để x&oacute;a bỏ c&aacute;i nh&igrave;n ti&ecirc;u cực từ hội bạn cũ.</p>\r\n\r\n<p>L&agrave; t&acirc;n sinh vi&ecirc;n, nghĩa l&agrave; bạn được đứng trước h&agrave;ng ng&agrave;n những lựa chọn, trong đ&oacute; c&oacute;... chọn bạn m&agrave; chơi!</p>\r\n\r\n<h2>Thời gian học tập khoa học, đừng bao giờ l&agrave;m mọt s&aacute;ch</h2>\r\n\r\n<p>C&aacute;c hoạt động ngoại kh&oacute;a, r&egrave;n luyện kĩ năng v&agrave; v&ocirc; v&agrave;n c&oacute; kh&oacute;a học b&ecirc;n lề kh&aacute;c mới ch&iacute;nh l&agrave; điều bạn n&ecirc;n tập trung khi bước v&agrave;o giảng đường Đại học, Cao đẳng. Thay v&igrave; dồn sức cho những nội dung ch&iacute;nh kh&oacute;a th&igrave; giờ đ&acirc;y, đ&atilde; đến l&uacute;c bạn học c&aacute;ch h&ugrave;ng biện trước đ&aacute;m đ&ocirc;ng, học c&aacute;ch viết CV sao cho thật ấn tượng, học c&aacute;ch thể hiện c&aacute; t&iacute;nh v&agrave; ghi điểm với người đối diện...</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Là tân sinh viên, đừng quên những điều này!\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2016/09/07/shares/171122_3.jpg\" /></p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Là tân sinh viên, đừng quên những điều này!\" src=\"http://media.viettelstudy.vn:8888/archive/images/content/2016/09/07/shares/171140_4.jpg\" /></p>\r\n\r\n<p>Thực tế, đa số c&aacute;c nh&agrave; tuyển dụng cần người biết l&agrave;m hơn l&agrave; người học giỏi, t&acirc;n sinh vi&ecirc;n nhớ nh&eacute;!</p>\r\n\r\n<p id=\"ctl53_TabAuther\" style=\"text-align: right;\"><strong>T&agrave;i Teen</strong></p>\r\n\r\n<p id=\"ctl53_TabSID\" style=\"text-align: right;\"><em>Theo Baodatviet.vn</em></p>\r\n', 1, NULL, 1, 1, 0, 20, '2017-10-09 11:03:14', '2017-10-10 13:21:33', 1, 1);

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
('171.253.223.89', 117, 2, 1506921701),
('127.0.0.1', 7, 2, 1507694167),
('127.0.0.1', 13, 2, 1507619812),
('127.0.0.1', 14, 2, 1507619812),
('127.0.0.1', 12, 2, 1507619812),
('127.0.0.1', 11, 2, 1507696080),
('127.0.0.1', 10, 2, 1507693945),
('127.0.0.1', 16, 2, 1507695880),
('127.0.0.1', 4, 2, 1507692010),
('127.0.0.1', 6, 2, 1507695159),
('127.0.0.1', 2, 2, 1507691354),
('127.0.0.1', 3, 2, 1507691357),
('127.0.0.1', 5, 2, 1507696059),
('127.0.0.1', 1, 2, 1507691352),
('127.0.0.1', 9, 2, 1507691317),
('127.0.0.1', 17, 2, 1507694156);

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
(17, 6, 2, 283, 6, 8),
(18, 7, 2, 283, 5, 8),
(19, 13, 2, 282, 3, 3),
(20, 14, 2, 282, 3, 3),
(21, 12, 2, 282, 3, 3),
(22, 11, 2, 283, 1, 4),
(23, 10, 2, 283, 2, 5),
(24, 16, 2, 283, 1, 4),
(25, 4, 2, 283, 3, 7),
(26, 3, 2, 283, 2, 4),
(27, 2, 2, 283, 3, 6),
(28, 1, 2, 283, 2, 3),
(29, 5, 2, 283, 4, 6),
(30, 9, 2, 283, 2, 2),
(31, 8, 2, 283, 1, 1),
(32, 17, 2, 283, 2, 2);

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
  `content` text,
  `image_url` varchar(255) DEFAULT NULL,
  `video_id` varchar(100) DEFAULT NULL,
  `object` text,
  `single` tinyint(1) DEFAULT '0' COMMENT 'Bài học lẻ',
  `benefit` text,
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
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `alias`, `slug`, `teacher_id`, `subject_id`, `description`, `content`, `image_url`, `video_id`, `object`, `single`, `benefit`, `is_hot`, `status`, `meta_id`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Cẩm nang dạy con: Nói sao cho trẻ chịu nghe', 'Cam nang day con: Noi sao cho tre chiu nghe', 'cam-nang-day-con-noi-sao-cho-tre-chiu-nghe', 15, 15, 'Nhìn sự việc bằng đôi mắt trẻ thơ sẽ giúp phụ huynh hiểu rõ con của mình', '<p>Việc nu&ocirc;i dạy con trẻ lớn kh&ocirc;n lu&ocirc;n l&agrave; mong ước lớn nhất của những bậc phụ huynh. Tuy nhi&ecirc;n, kh&ocirc;ng &iacute;t những bậc l&agrave;m cha, l&agrave;m mẹ cảm thấy bất lực v&agrave; bối rối trước những h&agrave;nh vi bất hợp t&aacute;c v&agrave; kh&ocirc;ng v&acirc;ng lời của con trẻ như: N&oacute;i dối, k&eacute;n ăn, kh&ocirc;ng nghe lời, ham chơi, lười biếng...</p>\r\n\r\n<p>Tuy nhi&ecirc;n quan trọng hơn khi ch&uacute;ng ta muốn thay đổi những điều đ&oacute; th&igrave; hầu như trẻ lại kh&ocirc;ng chịu nghe. Vậy nguy&ecirc;n nh&acirc;n từ đ&acirc;u, những &ocirc;ng bố, b&agrave; mẹ n&ecirc;n l&agrave;m g&igrave;, ứng xử ra sao?</p>\r\n\r\n<p>Gi&aacute;o dục con cũng giống như m&ocirc;n trượt tuyết, nếu sợ h&atilde;i v&agrave; cố gắng ngả người về ph&iacute;a sườn n&uacute;i, kiểu g&igrave; cũng sẽ bị t&eacute;. V&igrave; n&oacute; l&agrave; m&ocirc;n thể thao đi ngược với bản năng của con người, c&agrave;ng lao về ph&iacute;a dốc ch&uacute;ng ta c&agrave;ng lạn l&aacute;ch một c&aacute;ch dễ d&agrave;ng. Bởi vậy, những &ocirc;ng bố, b&agrave; mẹ cần c&oacute; những c&aacute;ch cư xử th&ocirc;ng minh, kh&eacute;o l&eacute;o trong c&aacute;c t&igrave;nh huống cụ thể.</p>\r\n\r\n<p>Kh&oacute;a kỹ năng&nbsp;<strong>N&oacute;i sao cho trẻ chịu nghe</strong>&nbsp;sẽ gi&uacute;p c&aacute;c bậc phụ huynh l&agrave;m được những điều n&agrave;y.</p>\r\n\r\n<p>Kh&oacute;a học gồm 3 phần:</p>\r\n\r\n<p>Phần 1: V&igrave; sao trẻ kh&ocirc;ng chịu nghe lời?</p>\r\n\r\n<p>Phần 2: Những t&igrave;nh huống cụ thể, hay gặp trong cuộc sống</p>\r\n\r\n<p>Phần 3: C&aacute;ch ứng xử trong từng t&igrave;nh huống cụ thể</p>\r\n', '/public/uploads/images/khoa-hoc/thumb11_490548194-1507530679.jpg', '8LSLHQlxTnI', '<p>Kh&oacute;a học d&agrave;nh cho những ai đ&atilde;, đang v&agrave; sẽ trở th&agrave;nh những &ocirc;ng bố b&agrave; mẹ, những người lu&ocirc;n mong muốn t&igrave;m được một phương ph&aacute;p tốt nhất để gi&aacute;o dục con trẻ.</p>\r\n', 0, '<p>Kh&oacute;a học sẽ gi&uacute;p c&aacute;c bậc phụ huynh biết những nguy&ecirc;n nh&acirc;n dẫn đến việc trẻ kh&ocirc;ng nghe lời, cung cấp cho phụ huynh một v&agrave;i t&igrave;nh huống điển h&igrave;nh v&agrave; c&aacute;ch cư xử trong những t&igrave;nh huống như v&acirc;y.</p>\r\n', 1, 1, 22, NULL, 1, 1, '2017-10-09 13:31:43', '2017-10-11 10:09:07'),
(2, 'Làm sao để trẻ an toàn và dạy con cách tự vệ', 'Lam sao de tre an toan va day con cach tu ve', 'lam-sao-de-tre-an-toan-va-day-con-cach-tu-ve', 15, NULL, 'Trang bị cho phụ huynh và trẻ tâm lý sẵn sàng ứng phó với những tình huống nguy hiểm trong cuộc sống', '<p><strong>L&Agrave;M SAO ĐỂ TRẺ AN TO&Agrave;N V&Agrave; BIẾT TỰ VỆ</strong></p>\r\n\r\n<p>X&atilde; hội c&agrave;ng hiện đại, c&aacute;c nguồn nguy hiểm với trẻ em c&agrave;ng gia tăng v&agrave; cha mẹ kh&ocirc;ng thể n&agrave;o kiểm so&aacute;t được.<br />\r\nĐặc biệt, bạn sẽ kh&ocirc;ng bao giờ lường trước được điều g&igrave; sẽ g&acirc;y nguy hại cho con m&igrave;nh khi c&aacute;c t&aacute;c nh&acirc;n g&acirc;y nguy hiểm c&oacute; mặt ở khắp mọi nơi, thậm ch&iacute; ngay trong gia đ&igrave;nh bạn. L&agrave; một bậc l&agrave;m cha l&agrave;m mẹ bận bịu với c&ocirc;ng ăn việc l&agrave;m, bạn lại kh&ocirc;ng thể ở b&ecirc;n con suốt ng&agrave;y để che chở bảo vệ con. Bởi vậy, tr&aacute;ch nhiệm của người l&agrave;m cha mẹ l&agrave; trang bị cho con những kiến thức để tự bảo vệ m&igrave;nh trong những t&igrave;nh huống nguy hiểm.</p>\r\n\r\n<p>Kh&oacute;a học n&agrave;y gồm c&oacute; 2 phần ch&iacute;nh:</p>\r\n\r\n<p><strong>PHẦN 1: Nguy hiểm đến từ đ&acirc;u?</strong></p>\r\n\r\n<p><strong>B&agrave;i 1: Nguy hiểm đến từ ch&iacute;nh m&igrave;nh</strong></p>\r\n\r\n<p>- Đ&oacute; l&agrave; việc ch&uacute;ng ta c&oacute; niềm tin m&ugrave; qu&aacute;ng</p>\r\n\r\n<p>- C&oacute; những định kiến cũng như tự giới hạn bản th&acirc;n</p>\r\n\r\n<p>- Kh&ocirc;ng ch&acirc;n qu&yacute; ch&iacute;nh bản th&acirc;n m&igrave;nh</p>\r\n\r\n<p><strong>B&agrave;i 2: Nguy hiểm đến từ người th&acirc;n</strong></p>\r\n\r\n<p>C&oacute; những t&igrave;nh huống g&acirc;y nguy hiểm cho trẻ đến từ ch&iacute;nh c&aacute;c bậc l&agrave;m cha me, nếu kh&ocirc;ng để &yacute; sẽ g&acirc;y ra những hậu quả nghi&ecirc;m trọng. V&iacute; dụ như việc cha mẹ &aacute;p đặt, ch&ecirc; bai, nghi ngờ con m&igrave;nh...</p>\r\n\r\n<p><strong>B&agrave;i 3: Nguy hiểm đến từ bạn b&egrave;</strong></p>\r\n\r\n<p>Trẻ kh&ocirc;ng thể trưởng th&agrave;nh v&agrave; ph&aacute;t triển khi thiếu đi quan hệ b&egrave; bạn. Từ nh&oacute;m bạn b&egrave; những t&igrave;nh huống nguy hiểm c&oacute; thể diễn ra mu&ocirc;n h&igrave;nh, vạn trạng: Bị bạn b&egrave; bạo lực, bị ảnh hưởng lối sống, th&oacute;i quen, &aacute;p lực từ bạn b&egrave; rủ r&ecirc; hay tin tưởng qu&aacute; độ v&agrave;o bạn b&egrave;.</p>\r\n\r\n<p><strong>B&agrave;i 4: Nguy hiểm đến từ người quen v&agrave; người lạ:</strong></p>\r\n\r\n<p>Cuộc sống đặt ra cho phụ huynh v&agrave; con trẻ rất nhiều nguy hiểm. Ch&uacute;ng ta c&oacute; thể điểm mặt được một v&agrave;i t&igrave;nh huống ti&ecirc;u biểu, để phụ huynh c&oacute; được những bước chuẩn bị v&agrave; c&aacute;ch dạy cho con ứng ph&oacute; với c&aacute;c t&igrave;nh huống đ&oacute;. Một v&agrave;i t&igrave;nh huống hay gặp phải như: Khi trẻ bị bắt c&oacute;c, trẻ bị lạc, bị bạo h&agrave;nh.</p>\r\n\r\n<p><strong>B&agrave;i 5: Nguy hiểm tiềm ẩn đến từ m&ocirc;i trường</strong></p>\r\n\r\n<p>M&ocirc;i trường n&agrave;o cũng lu&ocirc;n tiềm ẩn những nguy cơ m&agrave; do ch&iacute;nh m&ocirc;i trường đ&oacute; mang lại. Một v&agrave;i t&igrave;nh huống nguy hiểm đến từ: Đồ b&eacute;n nhọn trong gia đ&igrave;nh, điện, nước, nhiệt độ, tốc độ, độ cao...</p>\r\n\r\n<p><strong>PHẦN 2: Dạy con tự vệ v&agrave; xử l&yacute; t&igrave;nh huống</strong></p>\r\n\r\n<p><strong>B&agrave;i 1: Dạy con tự vệ v&agrave; xử l&yacute; t&igrave;nh huống</strong></p>\r\n\r\n<p>Cuộc sống đặt ra cho phụ huynh v&agrave; con trẻ rất nhiều nguy hiểm. Ch&uacute;ng ta c&oacute; thể điểm mặt được một v&agrave;i t&igrave;nh huống ti&ecirc;u biểu, để phụ huynh c&oacute; được những bước chuẩn bị v&agrave; c&aacute;ch dạy cho con ứng ph&oacute; với c&aacute;c t&igrave;nh huống đ&oacute;. V&iacute; dụ: Khi con ở nh&agrave; một m&igrave;nh c&oacute; người lạ v&agrave;o hỏi ba mẹ th&igrave; cần l&agrave;m g&igrave;? Khi trẻ bị đ&agrave;n anh, đ&agrave;n chị trong lớp bạo lực n&ecirc;n như thế n&agrave;o?....</p>\r\n\r\n<p><strong>Lời kết:&nbsp;</strong></p>\r\n\r\n<p>Cuộc sống mu&ocirc;n h&igrave;nh vạn trạng v&agrave; ch&uacute;ng ta kh&ocirc;ng thể n&agrave;o biết được c&ocirc;ng thức của cuộc sống l&agrave; g&igrave;? Tuy nhi&ecirc;n h&atilde;y cố gắng sống một c&aacute;ch chủ động, trang bị cho m&igrave;nh v&agrave; con những kiến thức thật sự cần thiết để ứng ph&oacute; một c&aacute;ch nhanh ch&oacute;ng v&agrave; giảm tải tối đa những nguy hiểm c&oacute; thể đến với bản th&acirc;n m&igrave;nh. Trải nghiệm hoặc chứng kiến sự trải nghiệm của người kh&aacute;c cũng mang đến cho ch&uacute;ng ta một kinh nghiệm n&agrave;o đ&oacute; trong cuộc sống n&agrave;y.</p>\r\n', '/public/uploads/images/khoa-hoc/thumb11_609032-1507531645.jpg', NULL, 'D&agrave;nh cho những ai đ&atilde;, đang v&agrave; sẽ trở th&agrave;nh những &ocirc;ng bố, b&agrave; mẹ. Mong muốn c&oacute; một phương ph&aacute;p gi&aacute;o dục v&agrave; bảo vệ con trước những mối nguy hiểm của x&atilde; hội.', 0, 'Cuộc sống bận rộn sẽ khiến c&aacute;c bậc phụ huynh kh&ocirc;ng thể c&oacute; mặt b&ecirc;n con mọi l&uacute;c mọi nơi. V&igrave; thế kh&oacute;a học n&agrave;y sẽ gi&uacute;p c&aacute;c &ocirc;ng bố, b&agrave; mẹ nhận định những mối hiểm nguy xung quanh v&agrave; trang bị cho con những kỹ năng cần thiết để tự đối ph&oacute;. Kh&oacute;a học sẽ mang lại cho qu&yacute; phụ huynh c&aacute;i nh&igrave;n to&agrave;n diện về những nguy hiểm c&oacute; thể đến với con, những t&igrave;nh huống cụ thể m&agrave; con c&oacute; thể gặp trong cuộc sống, từ đ&oacute; c&oacute; những c&aacute;ch ứng xử hợp l&yacute;, kịp thời.', 0, 1, 23, NULL, 1, 1, '2017-10-09 13:48:21', '2017-10-09 13:48:21'),
(3, 'Khám phá ưu thế bản thân để định hướng cuộc đời', 'Kham pha uu the ban than de dinh huong cuoc doi', 'kham-pha-uu-the-ban-than-de-dinh-huong-cuoc-doi', 16, NULL, 'Để thành công bạn phải biết mình có những gì.', '<p>V&igrave; sao Edison lại l&agrave; một nh&agrave; khoa học với 1.907 ph&aacute;t minh s&aacute;ng chế m&agrave; kh&ocirc;ng phải l&agrave; một nh&agrave; văn?</p>\r\n\r\n<p>V&igrave; sao Bill Gates trở th&agrave;nh &ocirc;ng chủ của tập đo&agrave;n Microsoft khổng lồ m&agrave; kh&ocirc;ng phải l&agrave; đầu bếp?</p>\r\n\r\n<p>V&igrave; sao Sơn T&ugrave;ng MTP l&agrave; một ca sĩ được y&ecirc;u th&iacute;ch m&agrave; kh&ocirc;ng phải l&agrave; một b&aacute;c sĩ? C&ograve;n bạn, bạn c&oacute; thể l&agrave; một người như thế n&agrave;o đ&oacute; đặc biệt hơn?</p>\r\n\r\n<p>Để th&agrave;nh c&ocirc;ng, đầu ti&ecirc;n bạn phải hiểu m&igrave;nh l&agrave; người như thế n&agrave;o. Nếu biết m&igrave;nh l&agrave; một ch&uacute; lạc đ&agrave;, ắt hẳn bạn sẽ tha hồ tung ho&agrave;nh tr&ecirc;n sa mạc hơn l&agrave; nằm y&ecirc;n trong chiếc chuồng sở th&uacute;.</p>\r\n\r\n<p>Nếu biết m&igrave;nh l&agrave; một ch&uacute; chim c&oacute; đ&ocirc;i c&aacute;nh khỏe mạnh, ắt hẳn bạn đ&atilde; d&aacute;m sống tự do tr&ecirc;n bầu trời thay v&igrave; ngồi t&igrave;m kiếm sự an to&agrave;n trong một chiếc lồng.</p>\r\n\r\n<p>Khi biết m&igrave;nh l&agrave; ai, c&oacute; tiềm năng g&igrave;, người ta sẽ kh&ocirc;ng cam chịu với số phận hiện tại v&agrave; lu&ocirc;n phấn đấu để ph&aacute;t triển vượt bậc hơn.</p>\r\n\r\n<p>Hiểu được bản th&acirc;n th&igrave; bạn sẽ l&agrave;m được nhiều hơn những g&igrave; bạn nghĩ.</p>\r\n\r\n<p>Nếu kh&ocirc;ng biết m&igrave;nh c&oacute; ưu thế g&igrave;, bạn sẽ chọn chọn sai nghề, l&agrave;m kh&ocirc;ng đ&uacute;ng c&ocirc;ng việc, ph&aacute;t triển tr&igrave; trệ, kh&ocirc;ng c&oacute; ước mơ, bất lực trong việc l&agrave;m chủ được vận mệnh tương lai của ch&iacute;nh m&igrave;nh...</p>\r\n\r\n<p>C&oacute; những người lu&ocirc;n cố gắng, cố gắng v&agrave; cố gắng m&agrave; thực tế vẫn vậy, chẳng c&oacute; g&igrave; kh&aacute; hơn! C&oacute; thể v&igrave; họ đ&atilde; cố gắng ở lĩnh vực kh&ocirc;ng phải sở trường của m&igrave;nh.</p>\r\n\r\n<p>C&oacute; những người muốn l&agrave;m một điều g&igrave; đ&oacute; kh&aacute;c đi, họ kh&ocirc;ng muốn lẩn quẩn cả đời với những thứ mệt mỏi nhạt nhẽo như b&acirc;y giờ! Nhưng họ kh&ocirc;ng biết m&igrave;nh phải l&agrave;m g&igrave;? M&igrave;nh bắt đầu từ đ&acirc;u?! C&oacute; thể họ l&uacute;ng t&uacute;ng v&igrave; chưa nh&igrave;n ra được những khả năng m&igrave;nh đang c&oacute; để ph&aacute;t huy n&oacute;.</p>\r\n\r\n<p>C&oacute; rất nhiều người thực ra kh&ocirc;ng biết m&igrave;nh sống để l&agrave;m g&igrave;? Lẽ sống của m&igrave;nh l&agrave; chi? V&agrave; kh&ocirc;ng c&oacute; trong tay một mảnh giấy n&agrave;o để c&oacute; thể gọi l&agrave; c&oacute; kế hoạch cuộc đời.</p>\r\n\r\n<p>Trong những người đ&oacute; c&oacute; bạn trong đấy?</p>\r\n\r\n<p>H&atilde;y sử dụng hết 100% tiềm năng m&agrave; bạn c&oacute;, h&atilde;y l&agrave;m chủ vận mệnh của ch&iacute;nh m&igrave;nh sau Kh&oacute;a học Kh&aacute;m ph&aacute; ưu thế bản th&acirc;n để định hướng cuộc đời!</p>\r\n\r\n<p>Ch&uacute;c bạn sẽ hiểu m&igrave;nh l&agrave; ai, m&igrave;nh n&ecirc;n l&agrave;m g&igrave; trong cuộc đời n&agrave;y v&agrave; bản đồ tương lai bạn sẽ hiện r&otilde; trong l&ograve;ng b&agrave;n tay!</p>\r\n', '/public/uploads/images/khoa-hoc/thumb11_167158056-1507532030.jpg', 'pj-pV0sBGPU', 'Kh&oacute;a học d&agrave;nh cho tất cả ch&uacute;ng ta - những người c&ograve;n đang l&uacute;ng t&uacute;ng v&igrave; chưa nh&igrave;n ra được những khả năng của bản th&acirc;n để ph&aacute;t huy, sử dụng n&oacute; một c&aacute;ch hiệu quả.', 0, '<p>Trong kh&oacute;a học Kh&aacute;m ph&aacute; ưu thế bản th&acirc;n để định hướng cuộc đời, bạn sẽ được Chuy&ecirc;n gia t&acirc;m l&yacute; &ndash; Kỷ lục gia Nguyễn Ho&agrave;ng Khắc Hiếu hướng dẫn ph&acirc;n t&iacute;ch chi tiết bản th&acirc;n bằng c&aacute;c c&ocirc;ng cụ:</p>\r\n\r\n<p>+ Sinh trắc học</p>\r\n\r\n<p>+ Tổng hợp nhận x&eacute;t</p>\r\n\r\n<p>+ So s&aacute;nh với h&igrave;nh mẫu</p>\r\n\r\n<p>+ Nội quan &amp; ph&acirc;n t&iacute;ch m&ocirc; h&igrave;nh SWOT</p>\r\n\r\n<p>+ Trắc nghiệm Holland</p>\r\n\r\n<p>+ Trắc nghiệm MBTI</p>\r\n\r\n<p>+ Trắc nghiệm Kh&iacute; chất, IQ, EQ, CQ</p>\r\n\r\n<p>+ Phương ph&aacute;p Thử nghiệm bản th&acirc;n</p>\r\n', 1, 1, 25, NULL, 1, 1, '2017-10-09 13:54:16', '2017-10-11 10:06:59'),
(4, 'Kỹ năng giải tỏa Stress', 'Ky nang giai toa Stress', 'ky-nang-giai-toa-stress', 16, NULL, '12 cách đập tan tảng đá stress', '<strong>Chương 1: Những liệu ph&aacute;p về sinh l&yacute;</strong><br />\r\nK&iacute;ch th&iacute;ch thần kinh<br />\r\n<strong>Chương 2: Biện ph&aacute;p tinh thần</strong><br />\r\nLối ra<br />\r\nTưởng tượng<br />\r\nGiao tiếp với điểm tựa tinh thần<br />\r\nVật nu&ocirc;i<br />\r\nSống th&ocirc;i m&agrave;!<br />\r\nT&ugrave;y duy&ecirc;n<br />\r\n<strong>Chương 3: Xử tr&iacute; th&ocirc;ng minh</strong><br />\r\nTận dụng stress để s&aacute;ng tạo<br />\r\nTh&aacute;o gỡ n&uacute;t thắt<br />\r\nB&agrave;n tay gi&uacute;p đỡ<br />\r\nĐ&agrave;m ph&aacute;n<br />\r\nNếu vẫn c&ograve;n stress th&igrave; &aacute;p dụng c&aacute;ch cuối c&ugrave;ng n&agrave;y', '/public/uploads/images/khoa-hoc/thumb11_166808576-1507532183.jpg', 'Dz-r1SC2fuk', 'Kh&oacute;a học d&agrave;nh cho những ai đang gặp bế tắc, thường xuy&ecirc;n cảm thấy stress trong cuộc sống, c&ocirc;ng việc...v&agrave; chưa t&igrave;m được lối ra.', 0, 'Trong kh&oacute;a học n&agrave;y, TS Nguyễn Ho&agrave;ng Khắc Hiếu sẽ cung cấp cho c&aacute;c bạn những liệu ph&aacute;p sinh l&yacute; cũng như tinh thần để c&aacute;c bạn vượt qua stress một c&aacute;ch dễ d&agrave;ng. Đồng thời, trải nghiệm kh&oacute;a học, c&aacute;c bạn cũng sẽ học được c&aacute;ch th&aacute;o gỡ những bế tắc trong cuộc sống, trong c&ocirc;ng việc, tận dụng ch&iacute;nh stress để biến n&oacute; th&agrave;nh động lực vươn l&ecirc;n ph&iacute;a trước.', 1, 1, 26, NULL, 1, 1, '2017-10-09 13:56:27', '2017-10-11 10:06:30'),
(5, 'CEO VinaLink chia sẻ cách làm Marketing trên Facebook từ A->Z', 'CEO VinaLink chia se cach lam Marketing tren Facebook tu A->Z', 'ceo-vinalink-chia-se-cach-lam-marketing-tren-facebook-tu-a-z', 8, NULL, 'Đừng thờ ơ với kênh giao tiếp khách hàng hiệu quả nhất hiện nay', '<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\"><b>BẢN CHẤT SOCIAL MEDIA &amp; FACEBOOK MARKETING</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul style=\"list-style:none outside none; margin:0px; padding:0px; color:#474747; font-family:Arial; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:start; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" type=\"disc\">\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Bức tranh to&agrave;n cảnh về Facebook Thế giới v&agrave; Việt Nam</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">L&yacute; do sử dụng Facebook trong Marketing</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Thế mạnh &amp; t&iacute;nh social ho&aacute; trong Facebook Marketing</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">H&agrave;nh vi người d&ugrave;ng tr&ecirc;n Facebook</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Thực h&agrave;nh tạo v&agrave; thiết lập k&ecirc;nh fanpage theo nhu cầu</span></span></span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\"><b>NHỮNG CHỈ SỐ QUAN TRỌNG TR&Ecirc;N FACEBOOK</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul style=\"list-style:none outside none; margin:0px; padding:0px; color:#474747; font-family:Arial; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:start; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" type=\"disc\">\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Những chỉ số ch&iacute;nh tr&ecirc;n một Facebook Fanpage</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Reach v&agrave; c&aacute;c phương thức tăng reach</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Ph&acirc;n t&iacute;ch nguồn like của Fanpage v&agrave; h&agrave;nh vi người d&ugrave;ng theo nguồn like</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Cơ chế giới thiệu fanpage v&agrave; nội dung tương tự của Facebook.</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Đo lường hiệu quả của b&agrave;i đăng</span></span></span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Nội dung kh&oacute;a học</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\"><b>TĂNG LIKE &amp; QUẢNG B&Aacute; FANPAGE</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul style=\"list-style:none outside none; margin:0px; padding:0px; color:#474747; font-family:Arial; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:start; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" type=\"disc\">\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">C&aacute;c phương thức tăng like tốt nhất</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Tăng like qua nguồn lực b&ecirc;n ngo&agrave;i</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Tăng like dựa tr&ecirc;n cơ chế suggest của Facebook v&agrave; hệ thống page vệ tinh</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Tăng like qua group v&agrave; trang c&aacute; nh&acirc;n tr&ecirc;n Facebook</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Tăng like qua Facebook ads</span></span></span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\"><b>FACEBOOK ADS</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul style=\"list-style:none outside none; margin:0px; padding:0px; color:#474747; font-family:Arial; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:start; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" type=\"disc\">\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">C&aacute;c quy định, cơ chế hiển thị v&agrave; t&iacute;nh tiền của Facebook Ads</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Thiết lập t&agrave;i khoản Facebook ads</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">C&aacute;c c&ocirc;ng cụ tiếp cận kh&aacute;ch h&agrave;ng mục ti&ecirc;u qua Facebook Ads</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Những nguy&ecirc;n l&yacute; cơ bản của tạo mẫu quảng c&aacute;o</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Thiết lập Quảng c&aacute;o tăng like; Quảng c&aacute;o c&aacute;c b&agrave;i đăng v&agrave; Quảng c&aacute;o website</span></span></span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"margin:0px 0px 5px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:13px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-family:Arial\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\"><b>PH&Aacute;T TRIỂN NỘI DUNG FANPAGE</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul style=\"list-style:none outside none; margin:0px; padding:0px; color:#474747; font-family:Arial; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:start; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" type=\"disc\">\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">C&aacute;c bước lập kế hoạch Facebook Marketing</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Quy định về đăng tải nội dung của Facebook</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Ph&aacute;t triển nội dung cho fanpage theo mục đ&iacute;ch: b&aacute;n h&agrave;ng;&nbsp; thương hiệu; cộng đồng &hellip;</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Những dạng nội dung được tương t&aacute;c nhiều tr&ecirc;n Facebook</span></span></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin:0px 0px 5px; padding:0px\"><span style=\"color:#474747\"><span style=\"line-height:22px\"><span style=\"font-size:small; margin:0px; padding:0px\"><span style=\"margin:0px; padding:0px; font-family:Arial\">Sử dụng group v&agrave; trang c&aacute; nh&acirc;n trong ph&aacute;t triển nội dung fanpage</span></span></span></span></p>\r\n	</li>\r\n</ul>\r\n', '/public/uploads/images/khoa-hoc/thumb11_524478149-1507691529.jpg', 'UP6yQ0d5vCM', 'D&agrave;nh cho những c&aacute; nh&acirc;n y&ecirc;u th&iacute;ch Facebook v&agrave; đang c&oacute; mong muốn sử dụng Facebook như một k&ecirc;nh kinh doanh', 0, '<p>Kiến thức đầy đủ &amp; cập nhật li&ecirc;n tục: Bạn sẽ được học c&aacute;c b&agrave;i giảng với những phương ph&aacute;p, những kinh nghiệm được giảng vi&ecirc;n chia sẻ trong kho&aacute; học, cập nhật những xu hướng mới nhất năm 2015</p>\r\n\r\n<p>Chi ph&iacute; thấp &ndash; hiệu quả cao: Thay v&igrave; bỏ ra h&agrave;ng triệu đồng để tới c&aacute;c trung t&acirc;m. Với ViettelStudy bạn vẫn được học với giảng vi&ecirc;n Tuấn H&agrave; - người uy t&iacute;n &amp; gi&agrave;u kinh nghiệm h&agrave;ng đầu Việt Nam trong lĩnh vực social marketing</p>\r\n\r\n<p>&nbsp;Tối ưu về thời gian: Bạn c&oacute; thể chủ động trong việc sắp xếp thời gian học, tự điều chỉnh tốc độ học theo khả năng v&agrave; c&oacute; thể n&acirc;ng cao kiến thức ngay sau khi học, tiết kiệm thời gian di chuyển giữa c&aacute;c địa điểm học; chủ động &ocirc;n tập v&agrave; học lại kiến thức</p>\r\n', 1, 1, 27, NULL, 1, 1, '2017-10-11 10:12:48', '2017-10-11 10:12:49'),
(6, 'Kỹ năng xây dựng thương hiệu', 'Ky nang xay dung thuong hieu', 'ky-nang-xay-dung-thuong-hieu', 9, NULL, 'Tạo sự khác biệt cho thương hiệu', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '/public/uploads/images/khoa-hoc/thumb11_782586130-1507691732.jpg', 'evMCCbWVkis', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 28, NULL, 1, 1, '2017-10-11 10:15:49', '2017-10-11 10:15:50'),
(7, 'Nghệ thuật bán hàng hiệu quả', 'Nghe thuat ban hang hieu qua', 'nghe-thuat-ban-hang-hieu-qua', 9, NULL, 'Kỹ năng cần thiết để trở thành người bán hàng chuyên nghiệp', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '/public/uploads/images/khoa-hoc/thumb11_290013033-1507691529.jpg', 'gHW7bMhCWJk', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 29, NULL, 1, 1, '2017-10-11 10:18:17', '2017-10-11 10:18:18');

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
(19, 'Kỹ năng cần có của người bán hàng (phần 1)', 'Ky nang can co cua nguoi ban hang (phan 1)', 'ky-nang-can-co-cua-nguoi-ban-hang-phan-1', 7, 'gHW7bMhCWJk', 15, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 3, 1, 1, '2017-10-11 10:19:59', '2017-10-11 10:19:59');

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
(15, 'Các bài học', 'Cac bai hoc', 'cac-bai-hoc', 7, 1, 1, 1, 1, '2017-10-11 10:18:33', '2017-10-11 10:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `hand_phone` varchar(20) NOT NULL,
  `company` varchar(255) NOT NULL,
  `tax_no` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `country_id` int(11) NOT NULL DEFAULT '235',
  `district_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `ward_id` int(11) NOT NULL,
  `facebook_id` int(11) DEFAULT NULL,
  `address_type` tinyint(4) DEFAULT '0',
  `image_url` varchar(255) DEFAULT NULL,
  `key_reset` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `address`, `phone`, `hand_phone`, `company`, `tax_no`, `username`, `password`, `type`, `created_at`, `updated_at`, `last_login`, `status`, `country_id`, `district_id`, `city_id`, `ward_id`, `facebook_id`, `address_type`, `image_url`, `key_reset`) VALUES
(1, 'Út Hoàng', 'hoangnhonline@gmail.com', 'savgads', '0917492306', '', '', '', '', '', 0, '2017-09-17 08:06:53', '2017-09-17 10:07:59', '0000-00-00 00:00:00', 1, 235, 486, 294, 10443, 2147483647, 1, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/19598946_1079663028832359_7932678815044683219_n.jpg?oh=0f710732fee83fc4473c292d0d5cc274&oe=5A4FFA74', NULL),
(2, 'dsgdgasdfg', 'aaa@aa.com', 'q3131241', '09876543', '', '', '', '', '$2y$10$ROjkz.FexLrgv5Pc1tfTsexbu1KfVB6O2YpUmUXVfU6mZVcZBGuAS', 0, '2017-09-17 08:39:15', '2017-09-17 08:43:09', '0000-00-00 00:00:00', 1, 235, 485, 294, 10433, NULL, 1, NULL, NULL),
(3, 'Mr Hoàng', '', '131314', '0917492306', '', '', '', '', '$2y$10$MuVZDC2NsmJVNkD4LE6huuvSsOWlRWMa0tjqF7cnrWA12fkm6h1Qa', 0, '2017-09-17 08:58:08', '2017-09-17 09:04:53', '0000-00-00 00:00:00', 1, 235, 496, 294, 10545, NULL, 1, NULL, NULL),
(4, 'Tran Tien', 'thmtien@yahoo.com', '1028/46/31 Tan Ky Tan Quy', '0949098118', '', '', '', '', '$2y$10$GfebJFuBboa7IHtmJ87Oa.ltzL7yY8zNM1fRz6x.ES9Jgs8Jd1lJO', 0, '2017-09-17 15:15:28', '2017-09-17 15:16:04', '0000-00-00 00:00:00', 1, 235, 496, 294, 10541, NULL, 1, NULL, NULL),
(23, 'Trần', 'thmtien@gmail.com', '1028 Tân Kỳ Tân Quý', '0995552456', '', '', '', '', '$2y$10$k0MPY0KHJWlsxrbobf235.nsINvtbKuTPpCIYHJe.HMsxS/tqppC2', 0, '2017-09-21 06:28:34', '2017-09-21 07:00:33', '0000-00-00 00:00:00', 1, 235, 496, 294, 10541, NULL, 1, NULL, NULL);

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
(19, '', '', '', '', 1, 1, '2017-10-09 11:02:31', '2017-10-09 11:02:31'),
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
(32, NULL, '', '', '', 1, 1, '2017-10-11 13:17:16', '2017-10-11 13:17:16');

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
(7, 'Thầy Tạ Anh Sơn', 'Thay Ta Anh Son', 'thay-ta-anh-son', '/public/uploads/images/giao-vien/thumb11_103910975-1507520387.jpg', 1, 1, NULL, '', 'Giới thiệu:<br />\r\n- Đạt giải nh&igrave; cuộc thi HSG cấp Quốc gia c&aacute;c năm lớp 11, 12<br />\r\n- Huy chương Bạc kỳ thi HSG To&aacute;n khu vực Ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh Dương năm 2000.<br />\r\n- Thầy gi&aacute;o tốt nghiệp loại giỏi lớp T&agrave;i năng thuộc ĐH B&aacute;ch Khoa H&agrave; Nội v&agrave; bảo vệ th&agrave;nh c&ocirc;ng luận &aacute;n Tiến sỹ To&aacute;n học tại Ph&aacute;p.<br />\r\n- Hiện tại thầy đang c&ocirc;ng t&aacute;c v&agrave; giảng dạy tại khoa To&aacute;n Đại học B&aacute;ch Khoa H&agrave; Nội.', 0, 7, 1, NULL, 1, 1, '2017-10-09 10:41:54', '2017-10-09 10:41:54'),
(8, 'Cô Nguyễn Thị Mai Hương', 'Co Nguyen Thi Mai Huong', 'co-nguyen-thi-mai-huong', '/public/uploads/images/giao-vien/thumb11_296108934-1507520664.jpg', 1, 5, 'Trường THCS Lê Quý Đôn, Hà Nội', '', 'Giới thiệu:&nbsp;<br />\r\n- L&agrave; gi&aacute;o vi&ecirc;n dạy giỏi cấp th&agrave;nh phố H&agrave; Nội<br />\r\n- Chiến sĩ thi đua năm 2012, 2013<br />\r\n- Giải nh&igrave; học sinh giỏi m&ocirc;n H&oacute;a học cấp tỉnh năm học 2006, giải khuyến kh&iacute;ch cấp Quốc gia m&ocirc;n h&oacute;a học năm 2006.', 0, 8, 1, NULL, 1, 1, '2017-10-09 10:44:28', '2017-10-09 10:44:28'),
(9, 'Thầy Chu Văn Biên', 'Thay Chu Van Bien', 'thay-chu-van-bien', '/public/uploads/images/giao-vien/thumb11_945307465-1507520699.jpg', 1, 2, 'ĐH Hồng Đức', '', 'Giới thiệu:&nbsp;- L&agrave; gi&aacute;o vi&ecirc;n giảng dạy trong chương tr&igrave;nh bổ trợ kiến thức Vật L&yacute; k&ecirc;nh VTV2 Đ&agrave;i truyền h&igrave;nh Việt Nam. -Hiện nay thầy c&oacute; hơn 20 năm kinh nghiệm luyện thi ĐH &ndash; CĐ đồng thời l&agrave; t&aacute;c giả của 20 đầu s&aacute;ch Luyện thi ĐH &ndash; CĐ nổi tiếng', 0, 9, 1, NULL, 1, 1, '2017-10-09 10:45:02', '2017-10-09 10:45:03'),
(10, 'Cô TS. Trần Thị Vân Anh ', 'Co TS. Tran Thi Van Anh ', 'co-ts-tran-thi-van-anh', '/public/uploads/images/giao-vien/thumb11_835101957-1507520754.jpg', 1, 9, 'Học viện Báo chí và Tuyên truyền', '', 'Giới thiệu:&nbsp;TS. Trần Thị V&acirc;n Anh đ&atilde; c&oacute; 10 năm kinh nghiệm dạy v&agrave; luyện thi v&agrave;o lớp 6, lớp 10 m&ocirc;n Ngữ văn. C&ocirc; đ&atilde; đ&agrave;o tạo được nhiều học sinh đỗ v&agrave;o trường chuy&ecirc;n, đạt điểm cao trong c&aacute;c kỳ thi tuyển sinh v&agrave;o lớp 6, lớp 10. Đồng thời c&ocirc; cũng l&agrave; người c&oacute; nhiều s&aacute;ng kiến kinh nghiệm được tặng thưởng của Sở Gi&aacute;o dục Đ&agrave;o tạo H&agrave; Nội về phương ph&aacute;p dạy học Ngữ văn.', 1, 10, 1, NULL, 1, 1, '2017-10-09 10:46:02', '2017-10-10 13:12:56'),
(11, 'Cô Cao Vân Oanh ', 'Co Cao Van Oanh ', 'co-cao-van-oanh', '/public/uploads/images/giao-vien/thumb11_770907017-1507520795.jpg', 1, 1, 'Trường Phổ thông chuyên Hà Nội - Amsterdam', '', 'Giới thiệu:&nbsp;Nhiều học sinh của c&ocirc; đ&atilde; đỗ cao v&agrave;o c&aacute;c trường THCS chất lượng cao trong th&agrave;nh phố H&agrave; Nội.', 1, 11, 1, NULL, 1, 1, '2017-10-09 10:46:39', '2017-10-10 13:12:52'),
(12, 'Thầy Nguyễn Mạnh Cường', 'Thay Nguyen Manh Cuong', 'thay-nguyen-manh-cuong', '/public/uploads/images/giao-vien/thumb11_958886737-1507520837.jpg', 1, 1, 'Trường THPT Chu Văn An (Hà Nội)', '', 'Giới thiệu:&nbsp;Thầy l&agrave; gi&aacute;o vi&ecirc;n đội tuyển Olympic To&aacute;n trường Đại học Thủy Lợi, đội tuyển học sinh giỏi To&aacute;n trường THPT Chu Văn An. Nhiều kinh nghiệm luyện thi Đại học m&ocirc;n To&aacute;n v&agrave; thi v&agrave;o lớp 10 (đặc biệt l&agrave; luyện thi v&agrave;o c&aacute;c trường THPT Chuy&ecirc;n).', 1, 12, 1, NULL, 1, 1, '2017-10-09 10:47:09', '2017-10-10 13:12:48'),
(13, 'Thầy Tăng Xuân Long ', 'Thay Tang Xuan Long ', 'thay-tang-xuan-long', '/public/uploads/images/giao-vien/thumb11_847294547-1507520930.jpg', 1, 3, 'Học viện kĩ thuật Quân sự, Hà Nội', '', 'Giới thiệu:&nbsp;Với tr&ecirc;n 10 năm kinh nghiệm giảng dạy v&agrave; luyện thi ĐH, luyện thi HSG v&agrave; thi Chuy&ecirc;n.Giảng dạy cho học sinh nắm chắc kiến thức cơ bản về l&yacute; thuyết, c&aacute;c dạng b&agrave;i tập cơ bản, tr&ecirc;n cơ sở đ&oacute; ph&aacute;t triển để l&agrave;m c&aacute;c b&agrave;i kh&oacute;, n&acirc;ng cao. N&ocirc;i dung giảng dạy lu&ocirc;n b&aacute;m s&aacute;t khung chương tr&igrave;nh thi của Bộ GD v&agrave; ĐT.', 1, 13, 1, NULL, 1, 1, '2017-10-09 10:49:03', '2017-10-10 13:12:44'),
(14, 'Cô Hoàng Kim Nhung', 'Co Hoang Kim Nhung', 'co-hoang-kim-nhung', '/public/uploads/images/giao-vien/thumb11_299557336-1507520996.jpg', 1, 3, 'Trường THCS Láng Thượng', '', 'Giới thiệu:&nbsp;33 năm kinh nghiệm giảng dạy v&agrave; bồi dưỡng đội tuyển học sinh giỏi; Giải nh&igrave; Gi&aacute;o vi&ecirc;n dạy giỏi m&ocirc;n H&oacute;a học khối THCS th&agrave;nh phố H&agrave; Nội năm 1994-1995; Gi&aacute;o vi&ecirc;n giỏi cấp th&agrave;nh phố nhiều năm liền; Nhiều học sinh đoạt giải Học sinh giỏi th&agrave;nh phố H&agrave; Nội m&ocirc;n H&oacute;a học', 1, 14, 1, NULL, 1, 1, '2017-10-09 10:50:00', '2017-10-10 13:12:40'),
(15, 'Cô Tô Nhi A', 'Co To Nhi A', 'co-to-nhi-a', '/public/uploads/images/giao-vien/936be8dc-c152-4169-89fa-44046e8546da-1507530572.jpg', 1, 10, '', '', '<p>Giảng vi&ecirc;n m&ocirc;n c&aacute;c m&ocirc;n Gi&aacute;o dục học đại cương, L&yacute; luận Gi&aacute;o dục, Tổ chức hoạt động ngo&agrave;i giờ l&ecirc;n lớp (Cao Đẳng Sư Phạm Trung Ương TP.HCM);</p>\r\n\r\n<p>- Giảng vi&ecirc;n m&ocirc;n Kỹ năng mềm (ĐH KT C&ocirc;ng Nghệ TP.HCM - Hutech, Nh&agrave; văn h&oacute;a Sinh Vi&ecirc;n, Nh&agrave; văn h&oacute;a Phụ Nữ);</p>\r\n\r\n<p>- Giảng vi&ecirc;n m&ocirc;n Kỹ năng giao tiếp truyền th&ocirc;ng (Hutech);</p>\r\n\r\n<p>- Giảng vi&ecirc;n m&ocirc;n T&acirc;m L&yacute; Học Đại Cương (ĐH Sư Phạm TP.HCM - Trường Cao Đẳng B&aacute;ch Việt);</p>\r\n\r\n<p>- T&acirc;m L&yacute; du kh&aacute;ch v&agrave; kỹ năng giao tiếp (Cao Đẳng Văn H&oacute;a - Nghệ Thuật - Du Lịch S&agrave;i G&ograve;n);</p>\r\n\r\n<p>- Kỹ năng thiết lập mối quan hệ (Trung cấp nghề Việt Giao);</p>\r\n\r\n<p>- Phương ph&aacute;p học đại học (ĐH Hoa Sen).</p>\r\n', 0, 21, 1, NULL, 1, 1, '2017-10-09 13:30:22', '2017-10-09 13:32:26'),
(16, 'Thầy TS. Nguyễn Hoàng Khắc Hiếu', 'Thay TS. Nguyen Hoang Khac Hieu', 'thay-ts-nguyen-hoang-khac-hieu', '/public/uploads/images/giao-vien/maxresdefault-1507531997.jpg', 1, 10, '', '', '<p>&nbsp;Kỷ lục gia Nguyễn Ho&agrave;ng Khắc Hiếu.</p>\r\n\r\n<p>- Giảng vi&ecirc;n khoa T&acirc;m l&yacute; Gi&aacute;o dục, trường Đại học Sư phạm Tp.HCM.</p>\r\n\r\n<p>- Ủy vi&ecirc;n Ban chấp h&agrave;nh Trung ương Hiệp hội Những người Lao động S&aacute;ng tạo Việt Nam</p>\r\n\r\n<p>- Cố vấn chuy&ecirc;n m&ocirc;n Trung t&acirc;m Đ&agrave;o tạo Bản lĩnh sống Sư Tử Trẻ.</p>\r\n\r\n<p>- Diễn giả c&aacute;c chuy&ecirc;n đề t&acirc;m l&yacute;</p>\r\n\r\n<p>- Chuy&ecirc;n gia huấn luyện Kỹ năng sống</p>\r\n\r\n<p>- Chuy&ecirc;n gia tư vấn, tham vấn, chăm s&oacute;c tinh thần</p>\r\n', 1, 24, 1, NULL, 1, 1, '2017-10-09 13:53:33', '2017-10-10 13:12:29');

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
(8, 'Giới thiệu', 'Gioi thieu', 'Giới thiệu', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'gioi-thieu', 1, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', '', 1, 1, '2017-08-29 00:00:00', '2017-10-11 11:01:16'),
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

INSERT INTO `quiz` (`id`, `name`, `alias`, `slug`, `description`, `content`, `image_url`, `is_hot`, `status`, `meta_id`, `cate_id`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'BÀI TEST IQ SỐ 1', 'BAI TEST IQ SO 1', 'bai-test-iq-so-1', '', NULL, '', 0, 1, 31, 1, 1, 1, 1, '2017-10-11 13:14:55', '2017-10-11 13:17:39'),
(2, 'BÀI TEST IQ SỐ 2', 'BAI TEST IQ SO 2', 'bai-test-iq-so-2', '', NULL, '', 0, 1, 32, 1, 2, 1, 1, '2017-10-11 13:17:16', '2017-10-11 13:17:33');

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
(13, '85647', 1, 1, 1),
(14, '86574', 1, 2, 0),
(15, '78654', 1, 3, 0),
(16, '76845', 1, 4, 0),
(17, 'A', 2, 1, 0),
(18, 'B', 2, 2, 0),
(19, 'C', 2, 3, 1),
(20, 'D', 2, 4, 0),
(21, 'Casey', 3, 1, 1),
(22, 'Stuart', 3, 2, 0),
(23, 'Ritchie', 3, 3, 0),
(24, 'Billie', 3, 4, 0),
(25, '1', 4, 1, 0),
(26, '2', 4, 2, 0),
(27, '3', 4, 3, 0),
(28, '4', 4, 4, 1),
(29, 'J', 5, 1, 0),
(30, 'H', 5, 2, 0),
(31, 'R', 5, 3, 0),
(32, 'D', 5, 4, 1),
(33, '20', 6, 1, 1),
(34, '18', 6, 2, 0),
(35, '19', 6, 3, 0),
(36, '23', 6, 4, 0),
(37, '22 tuổi', 7, 1, 0),
(38, '18 tuổi', 7, 2, 0),
(39, '20 tuổi', 7, 3, 0),
(40, '16 tuổi', 7, 4, 1),
(41, '9', 8, 1, 1),
(42, '6', 8, 2, 0),
(43, '8', 8, 3, 0),
(44, '7', 8, 4, 0),
(45, '3', 9, 1, 1),
(46, '4', 9, 2, 0),
(47, '2', 9, 3, 0),
(48, '5', 9, 4, 0),
(49, '34', 10, 1, 0),
(50, '24', 10, 2, 0),
(51, '25', 10, 3, 1),
(52, '29', 10, 4, 0),
(53, '4, 6, 1, 3, 5, 2 hoặc 2, 5, 3, 1, 6, 4.', 11, 1, 1),
(54, '4, 6, 3, 1, 5, 2 hoặc 2, 5, 3, 1, 6, 4.', 11, 2, 0),
(55, '4, 6, 1, 5, 3, 2 hoặc 2, 5, 3, 1, 6, 4.', 11, 3, 0),
(56, '4, 6, 1, 3, 5, 2 hoặc 2, 5, 3, 1, 4, 6.', 11, 4, 0),
(57, '+', 12, 1, 1),
(58, '-', 12, 2, 0),
(59, 'x', 12, 3, 0),
(60, '÷', 12, 4, 0),
(61, '+', 13, 1, 1),
(62, '-', 13, 2, 0),
(63, 'x', 13, 3, 0),
(64, '÷', 13, 4, 0),
(65, '20', 14, 1, 1),
(66, '18', 14, 2, 0),
(67, '19', 14, 3, 0),
(68, '23', 14, 4, 0),
(69, '34 VÀ 4', 15, 1, 0),
(70, '32 VÀ 4', 15, 2, 0),
(71, '31 VÀ 4', 15, 3, 1),
(72, '33 VÀ 4', 15, 4, 0),
(73, '60', 16, 1, 0),
(74, '70', 16, 2, 0),
(75, '64', 16, 3, 0),
(76, '72', 16, 4, 1),
(77, '+', 17, 1, 0),
(78, '-', 17, 2, 1),
(79, 'x', 17, 3, 0),
(80, '÷', 17, 4, 0),
(81, 'a', 18, 1, 0),
(82, 'b', 18, 2, 0),
(83, 'c', 18, 3, 1),
(84, 'd', 18, 4, 0),
(85, 'Hình a', 19, 1, 1),
(86, 'Hình b', 19, 2, 0),
(87, 'Hình c', 19, 3, 0),
(88, 'Hình d', 19, 4, 0),
(89, '6 dặm và 6 dặm', 20, 1, 0),
(90, '5 dặm và 5 dặm', 20, 2, 0),
(91, '10 dặm và 10 dặm', 20, 3, 1),
(92, '14 dặm và 14 dặm', 20, 4, 0),
(93, '3.5', 21, 1, 0),
(94, '3.6', 21, 2, 1),
(95, '3', 21, 3, 0),
(96, '3.3', 21, 4, 0),
(97, '6', 22, 1, 0),
(98, '7', 22, 2, 0),
(99, '8', 22, 3, 0),
(100, '9', 22, 4, 1),
(101, '20 phút', 23, 1, 0),
(102, '22 phút', 23, 2, 1),
(103, '24 phút', 23, 3, 0),
(104, '18 phút', 23, 4, 0);

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
  `display_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `quiz_id`, `content`, `image_url`, `no_answer`, `display_order`) VALUES
(1, 1, 'Câu hỏi có 1 phương án đúng', '/public/uploads/images/cau-hoi/iq/161550_72-1507704039.jpg', 4, NULL),
(2, 1, 'Hình nào giống với hình bên trái dưới đây?', '/public/uploads/images/cau-hoi/iq/163110_16-1507704916.jpg', 4, NULL),
(3, 1, 'Casey, Stuart, Ritchie, Billie và Colin đều có bàn học riêng ở trường. Casey và Colin có máy vi tính trên bàn, trong khi những người khác có máy tính. Ritchie và Casey có một sổ tay giống như một bảng hướng dẫn. Những người khác chỉ có bảng hướng dẫn. Bàn của Casey và Billie làm bằng gỗ. Bàn của những người khác làm bằng kim loại. Vậy ai là người có 1 chiếc máy vi tính trên bàn gỗ? (Câu hỏi có 1 phương án đúng)', '', 4, NULL),
(4, 1, 'Câu hỏi có 1 phương án đúng', '/public/uploads/images/cau-hoi/iq/083306_91-1507704960.jpg', 4, NULL),
(5, 1, 'Tìm chữ cái có thể thay vào ô có dấu hỏi chấm. ( Có thể tham khảo bảng chữ cái cuối cùng)', '/public/uploads/images/cau-hoi/iq/081236_lettersequencekho60cau16-1507704990.png', 4, NULL),
(6, 1, 'Số nào có thể thay vào chỗ có dấu hỏi chấm?( Câu hỏi có 1 phương án đúng)', '/public/uploads/images/cau-hoi/iq/153419_32-1507705010.jpg', 4, NULL),
(7, 1, 'Tuấn 12 tuổi và có số tuổi bằng 3 lần em mình.Hỏi lúc Tuấn có số tuổi gấp 2 lần số tuổi em mình thì Tuấn bao nhiêu tuổi? ĐA:', '', 4, NULL),
(8, 1, 'Tìm số thích hợp có thể thay dấu hỏi chấm.', '/public/uploads/images/cau-hoi/iq/095654_tuluankho100cau89-1507705099.png', 4, NULL),
(9, 1, 'Trong một gia đình có sáu thành viên A, B, C, D, E và F. A và B là một cặp vợ chồng, A là thành viên nam. D là con trai duy nhất của C. C là anh trai của A. E là em gái của D. B là con dâu của F. F có chồng đã chết. Có bao nhiêu thành viên nam trong gia đình? (Câu hỏi có 1 phương án đúng)', '', 4, NULL),
(10, 1, 'Cho dãy số: 0 3 7 12 18 ? Số nào có thể thay vào chỗ có dấu hỏi chấm? (Câu hỏi có 1 phương án đúng)', '', 4, NULL),
(11, 1, 'Điền các số từ 1 đến 6 vào các hình tròn ở trên sao cho: Tổng các số 4 và 5 và tất cả các số ở giữa bằng 19; Tổng các số 6 và 3 và tất cả các số ở giữa bằng 10; Tổng các số 2 và 1 và tất cả các số ở giữa bằng 11; Tổng các số 4 và 3 và tất cả các số ở giữa bằng 14.', '/public/uploads/images/cau-hoi/iq/234505_numbersequencekho82-1507705147.png', 4, NULL),
(12, 1, 'Hãy điền phép tính thích hợp vào ô trống để giá trị phép tính theo chiều dọc và chiều ngang là bằng nhau.', '/public/uploads/images/cau-hoi/iq/092524_28-1507705177.jpg', 4, NULL),
(13, 1, 'Hãy điền phép tính thích hợp vào ô trống để giá trị phép tính theo chiều dọc và chiều ngang là bằng nhau.', '/public/uploads/images/cau-hoi/iq/091811_3-1507705201.jpg', 4, NULL),
(14, 1, 'Số nào có thể thay vào chỗ có dấu hỏi chấm?( Câu hỏi có 1 phương án đúng)', '/public/uploads/images/cau-hoi/iq/152404_15-1507705217.jpg', 4, NULL),
(15, 1, 'Tìm số thích hợp có thể điền vào chỗ dấu chấm hỏi trong hình dưới. (Thứ tự các số từ trái sang phải)', '/public/uploads/images/cau-hoi/iq/233936_numbersequencekho74-1507705241.png', 4, NULL),
(16, 1, 'Cho dãy số: 2 8 18 32 50 ? Số nào có thể thay vào chỗ có dấu hỏi chấm? (Câu hỏi có 1 phương án đúng)', '', 4, NULL),
(17, 1, 'Hãy điền phép tính thích hợp vào ô trống để giá trị phép tính theo chiều dọc và chiều ngang là bằng nhau.', '/public/uploads/images/cau-hoi/iq/092238_17-1507705269.jpg', 4, NULL),
(18, 1, 'Tìm cặp số có mối liên hệ với một trong những cặp số đã cho( Câu hỏi có 1 phương án đúng)', '/public/uploads/images/cau-hoi/iq/092654_37-1507705287.jpg', 4, NULL),
(19, 1, 'Câu hỏi có 1 phương án đúng', '/public/uploads/images/cau-hoi/iq/090000_165-1507705300.jpg', 4, NULL),
(20, 1, 'Hai người ban đầu cùng đứng một chỗ, sau đó đi về hai hướng ngược nhau. Cả hai người đi bộ 6 dặm, sau đó rẽ phải và đi tiếp 8 dặm nữa. Hòi bây giờ họ cách điểm xuất phát bao xa? (Câu hỏi có 1 phương án đúng)', '', 4, NULL),
(21, 1, 'Cho dãy số: 5,2 - 4,8 - 4,4 - 4 - ...Số nào sẽ là số tiếp theo trong dãy số trên? (Câu hỏi có 1 phương án đúng)', '', 4, NULL),
(22, 1, 'Tìm số thích hợp có thể thay dấu hỏi chấm.', '/public/uploads/images/cau-hoi/iq/100345_tuluankho100cau98-1507705399.png', 4, NULL),
(23, 1, 'Trước nửa đêm là bao nhiêu phút nếu trước đó 32 phút thời gian này gấp 3 lần số phút sau 22 giờ?', '', 4, NULL);

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
(35, 5, 1, 7, 2);

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
(2, 'site_title', 'ONLINE STUDY', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(3, 'site_description', 'ONLINE STUDY', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(4, 'site_keywords', 'ONLINE STUDY', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(5, 'admin_email', 'tungocsang88@gmail.com', '2016-07-27 14:37:52', '2017-10-10 13:22:08'),
(22, 'mail_server', 'mail.example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(23, 'mail_login_name', 'login@example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(24, 'mail_password', 'password', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(105, 'site_name', 'houseland.com.vn', '2016-07-27 14:37:52', '2017-10-10 13:22:08'),
(113, 'google_analystic', '<!-- Global Site Tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-88738631-22\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments)};\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-88738631-22\');\r\n</script>', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(114, 'facebook_appid', '', '2016-07-27 14:37:52', '2017-10-10 13:22:08'),
(115, 'google_fanpage', 'https://plus.google.com/u/0/+Thi%E1%BA%BFtk%E1%BA%BFnh%C3%A0%C4%91%E1%BA%B9pHouseland', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(116, 'facebook_fanpage', 'https://www.facebook.com/tuvanthietkexaydungnha/', '2016-07-27 14:37:52', '2017-10-10 13:22:08'),
(117, 'twitter_fanpage', 'https://twitter.com/houseland21', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(130, 'logo', '/public/uploads/images/logo.png', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(131, 'favicon', '2017/08/29/favicon-1504021257.ico', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(141, 'banner', '/public/uploads/images/logo.png', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(142, 'custom_text', '', '2016-07-27 14:37:52', '2017-10-10 13:22:09'),
(143, 'email_cc', '', '2016-11-11 00:00:00', '2017-08-29 13:06:32'),
(144, 'thong_bao_chung', '\n', '2017-05-11 00:00:00', '2017-08-07 11:20:56'),
(145, 'cty_info', '', '0000-00-00 00:00:00', '2017-08-29 13:06:32'),
(146, 'hotline', '(08) 35 603 247 - 0909 787 111', '2017-07-27 00:00:00', '2017-10-10 13:22:08'),
(163, 'so_nam', '10', '2016-07-27 14:37:52', '2017-10-10 13:22:08'),
(164, 'so_kien_truc_su', '60', '2016-07-27 14:37:52', '2017-10-10 13:22:08'),
(165, 'so_cong_nhan', '900', '2016-07-27 14:37:52', '2017-10-10 13:22:08'),
(166, 'so_cong_trinh', '800', '2016-07-27 14:37:52', '2017-10-10 13:22:08'),
(167, 'so_tin_lien_quan', '10', '2016-11-11 00:00:00', '2017-10-10 13:22:08'),
(168, 'gioi_thieu_chung', '', '2017-05-11 00:00:00', '2017-10-10 13:22:09'),
(169, 'gioi_thieu_tin_tuc', '', '0000-00-00 00:00:00', '2017-10-10 13:22:09'),
(170, 'email_header', 'houseland.com.vn@gmail.com', '2017-07-27 00:00:00', '2017-10-10 13:22:08'),
(171, 'su_lua_chon_dung_dan', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(172, 'chi_nhanh_phia_nam', '<p><strong>Đại diện chi nhánh phía Nam:</strong></p>\r\n\r\n<p>Địa chỉ: 166 Nguyễn Hoàng, phường An Phú, quận 2</p>\r\n\r\n<p>Hotline: (08) 35 00 32 47 - 0909 787 111</p>\r\n\r\n<p>Email: <a href=\"mailto:#\">houseland.com.vn@gmail.com</a></p>\r\n', '2017-08-29 00:00:00', '2017-10-10 13:22:09'),
(173, 'chi_nhanh_phia_bac', '<p><strong>Đại diện chi nhánh phía Bắc:</strong></p>\r\n\r\n<p>Địa chỉ: 166 Nguyễn Hoàng, phường An Phú, quận 2</p>\r\n\r\n<p>Hotline: (08) 35 00 32 47 - 0909 787 111</p>\r\n\r\n<p>Email: <a href=\"mailto:#\">houseland.com.vn@gmail.com</a></p>\r\n', '2017-08-29 00:00:00', '2017-10-10 13:22:09'),
(174, 'articles_per_page', '5', '2017-08-29 00:00:00', '2017-10-10 13:22:08'),
(175, 'product_related', '4', '2017-08-29 00:00:00', '2017-10-10 13:22:08'),
(176, 'mau_nen_menu', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(177, 'mau_nen_footer', '#0f1416', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(178, 'mau_nen_search', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(179, 'mau_nen_copyright', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(180, 'mau_nen_block', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(181, 'mau_nut_dang_ky', '#fb7c28', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(182, 'mau_nut_top', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(183, 'mau_menu_hover', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(184, 'icon_nam_hinh_thanh', '/public/uploads/images/banner-3-min-1506858353.png', '2017-08-29 00:00:00', '2017-10-10 13:22:09'),
(185, 'icon_kien_truc_su', '/public/uploads/images/banner-6-min-1506858372.png', '2017-08-29 00:00:00', '2017-10-10 13:22:09'),
(186, 'icon_cong_nhan', '/public/uploads/images/banner-15-min-1506858518.png', '2017-08-29 00:00:00', '2017-10-10 13:22:09'),
(187, 'icon_cong_trinh', '/public/uploads/images/banner-13-min-1506858549.png', '2017-08-29 00:00:00', '2017-10-10 13:22:09'),
(188, 'icon_tieu_de', '/public/uploads/images/banner-2-min-1506858286.png', '2017-08-29 00:00:00', '2017-10-10 13:22:09'),
(189, 'product_widget', '5', '0000-00-00 00:00:00', '2017-10-10 13:22:08'),
(190, 'article_related', '4', '2017-09-15 00:00:00', '2017-10-10 13:22:08'),
(191, 'mau_nen_header', '#ffffff', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(192, 'mau_header_title', '#000000', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(193, 'mau_header_value', '#000000', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(194, 'mau_header_icon', '#ff6600', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(195, 'mau_nen_header_top', '#000000', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(196, 'mau_chu_header_top', '#ffffff', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(197, 'mau_chu_dao', '#ff6600', '0000-00-00 00:00:00', '2017-10-10 13:22:09'),
(198, 'hover_parent', '#ff781e', '0000-00-00 00:00:00', '2017-10-10 13:22:09'),
(199, 'menu_border', '#cc5608', '0000-00-00 00:00:00', '2017-10-10 13:22:09'),
(200, 'icon_mui_ten', '/public/uploads/images/banner-1-min-1506858314.png', '0000-00-00 00:00:00', '2017-10-10 13:22:09'),
(201, 'hot_homepage', '5', '0000-00-00 00:00:00', '2017-10-10 13:22:08'),
(202, 'product_per_page', '9', '0000-00-00 00:00:00', '2017-10-10 13:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `display_order`, `status`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Toán học', 1, 1, 1, 1, '2017-10-09 10:21:03', '2017-10-09 10:21:03'),
(2, 'Vật lý', 2, 1, 1, 1, '2017-10-09 10:21:09', '2017-10-09 10:21:09'),
(3, 'Hóa học', 3, 1, 1, 1, '2017-10-09 10:21:17', '2017-10-09 10:21:17'),
(4, 'Anh văn', 4, 1, 1, 1, '2017-10-09 10:21:23', '2017-10-09 10:21:23'),
(5, 'Sinh học', 5, 1, 1, 1, '2017-10-09 10:21:33', '2017-10-09 10:21:33'),
(6, 'Địa lý', 6, 1, 1, 1, '2017-10-09 10:21:37', '2017-10-09 10:21:37'),
(7, 'Lịch sử', 7, 1, 1, 1, '2017-10-09 10:21:43', '2017-10-09 10:21:43'),
(8, 'Văn học', 8, 1, 1, 1, '2017-10-09 10:21:52', '2017-10-09 10:21:52'),
(9, 'Ngữ văn', 9, 1, 1, 1, '2017-10-09 10:45:25', '2017-10-09 10:45:25'),
(10, 'Tâm lý học', 10, 1, 1, 1, '2017-10-09 13:30:11', '2017-10-09 13:30:11');

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
  ADD KEY `full_name` (`full_name`),
  ADD KEY `type` (`type`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `ward_id` (`ward_id`),
  ADD KEY `city_id` (`city_id`),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courses_lession`
--
ALTER TABLE `courses_lession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `courses_part`
--
ALTER TABLE `courses_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `quiz_cate`
--
ALTER TABLE `quiz_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
