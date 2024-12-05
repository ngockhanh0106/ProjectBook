-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2024 at 02:18 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websach`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint NOT NULL,
  `biography` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `biography`, `name`) VALUES
(1, '', 'Nhiều tác giả'),
(2, '', 'Nguyễn Quang Đông'),
(3, '', 'Thiên Kim'),
(4, '', 'Thomas Harris'),
(5, '', 'Vũ Hữu Tiệp'),
(6, 'Mike George - diễn giả người Anh nổi tiếng, người giảng dạy tại hơn 30 quốc gia, tác giả 8 cuốn sách bán chạy được dịch ra gần 30 ngôn ngữ.  Mike George hiện sống tại London và phụ trách quản lý biên tập cho tạp chí Heart & Soul. Trước khi làm nghề viết sách và diễn thuyết, Mike George còn là doanh nhân thành đạt. Trong 20 năm qua, ông đi nhiều nơi để dạy về nghệ thuật thiền và giúp đỡ nhiều người trong lĩnh vực phát triển tinh thần. Những tựa sách của ông được dịch sang tiếng Việt gồm: Tư duy tích cực, Từ giận dữ đến bình an, 7 AHA - Khơi sáng Tinh thần và giải tỏa stress.', ' Mike George'),
(7, '', 'Lê Hoàng San'),
(8, 'Nam Cao (20/10/1915 – 28/11/1951) là một nhà văn và cũng là một chiến sĩ, liệt sĩ người Việt Nam. Ông là nhà văn hiện thực lớn (trước Cách mạng Tháng Tám), một nhà báo kháng chiến (sau Cách mạng), một trong những nhà văn tiêu biểu nhất thế kỷ 20. Ông có nhiều đóng góp quan trọng đối với việc hoàn thiện phong cách truyện ngắn và tiểu thuyết Việt Nam ở nửa đầu thế kỷ 20. Năm 1966, ông được truy tặng giải thưởng Hồ Chí Minh về Văn học nghệ thuật. Nam Cao đã từng phải chật vật kiếm sống bằng nhiều nghề để có thể nuôi dưỡng ước mơ văn chương của chính mình. Thành công đến với ông vào năm 1941 khi tập truyện đầu tay \"Đôi lứa xứng đôi\" được đón nhận như một hiện tượng. Với 15 năm cầm bút, ông đã để lại một văn nghiệp đồ sộ với 2 tiểu thuyết, 50 truyện ngắn, bút ký…, trong đó có những tác phẩm tiêu biểu ghi dấu ấn sâu đậm trong tâm trí đọc giả nhiều thế hệ như Chí Phèo, Lão Hạc, Đời thừa, Bài học quét nhà, Giăng sáng, Trẻ con không được ăn thịt chó, Đôi mắt, Nhìn người ta sung sướng, Sống mòn, Những chuyện không muốn viết, Những trẻ khốn nạn, Truyện người hàng xóm,…', 'Nam Cao'),
(9, 'Tác giả hai bộ truyện Nhật ký phá án và Những vụ án kỳ bí.', 'Diên Bắc Lão Cửu');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint NOT NULL,
  `average_rating` double NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `publication_date` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `publisher_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `average_rating`, `description`, `image`, `price`, `publication_date`, `quantity`, `title`, `category_id`, `publisher_id`) VALUES
(1, 0, '<div class=\"box_chhr\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><h3 class=\"pd-b-10\" style=\"padding: 0px 0px 10px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(51, 51, 51); font-size: 1.2em;\">Danh sách chương</h3><div class=\"line mg-b-10\" style=\"padding: 0px; margin: 0px 0px 10px; border-bottom: 1px solid rgb(213, 213, 213);\"></div><div class=\"item_ch_mora \" style=\"padding: 0px; margin: 0px;\"><div class=\"item_ch\" style=\"padding: 0px; margin: 0px;\"><a target=\"_blank\" href=\"https://nhasachmienphi.com/doc-online/cong-nghe-blockchain-167458\" style=\"padding: 0px; margin: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; color: rgb(51, 122, 183);\">Blockchain Là Gì?</a></div><hr style=\"padding: 0px; margin: 10px 0px; border-top-color: rgb(238, 238, 238);\"></div><div class=\"item_ch_mora \" style=\"padding: 0px; margin: 0px;\"><div class=\"item_ch\" style=\"padding: 0px; margin: 0px;\"><a target=\"_blank\" href=\"https://nhasachmienphi.com/doc-online/cong-nghe-blockchain-167459\" style=\"padding: 0px; margin: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; color: rgb(51, 122, 183);\">Blockchain Làm Việc Như Thế Nào?</a></div><hr style=\"padding: 0px; margin: 10px 0px; border-top-color: rgb(238, 238, 238);\"></div><div class=\"item_ch_mora \" style=\"padding: 0px; margin: 0px;\"><div class=\"item_ch\" style=\"padding: 0px; margin: 0px;\"><a target=\"_blank\" href=\"https://nhasachmienphi.com/doc-online/cong-nghe-blockchain-167460\" style=\"padding: 0px; margin: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; color: rgb(51, 122, 183);\">Bitcoin Là Gì?</a></div><hr style=\"padding: 0px; margin: 10px 0px; border-top-color: rgb(238, 238, 238);\"></div><div class=\"item_ch_mora \" style=\"padding: 0px; margin: 0px;\"><div class=\"item_ch\" style=\"padding: 0px; margin: 0px;\"><a target=\"_blank\" href=\"https://nhasachmienphi.com/doc-online/cong-nghe-blockchain-167461\" style=\"padding: 0px; margin: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; color: rgb(51, 122, 183);\">Những Đặc Điểm Chính Của Blockchain</a></div><hr style=\"padding: 0px; margin: 10px 0px; border-top-color: rgb(238, 238, 238);\"></div><div class=\"item_ch_mora \" style=\"padding: 0px; margin: 0px;\"><div class=\"item_ch\" style=\"padding: 0px; margin: 0px;\"><a target=\"_blank\" href=\"https://nhasachmienphi.com/doc-online/cong-nghe-blockchain-167462\" style=\"padding: 0px; margin: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; color: rgb(51, 122, 183);\">Blockchain Có Thể Dùng Ở Đâu?</a></div><hr style=\"padding: 0px; margin: 10px 0px; border-top-color: rgb(238, 238, 238);\"></div><div class=\"item_ch_mora \" style=\"padding: 0px; margin: 0px;\"><div class=\"item_ch\" style=\"padding: 0px; margin: 0px;\"><a target=\"_blank\" href=\"https://nhasachmienphi.com/doc-online/cong-nghe-blockchain-167463\" style=\"padding: 0px; margin: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; color: rgb(51, 122, 183);\">Những Bất Lợi Khi Sử Dụng Blockchain</a></div><hr style=\"padding: 0px; margin: 10px 0px; border-top-color: rgb(238, 238, 238);\"></div><div class=\"item_ch_mora \" style=\"padding: 0px; margin: 0px;\"><div class=\"item_ch\" style=\"padding: 0px; margin: 0px;\"><a target=\"_blank\" href=\"https://nhasachmienphi.com/doc-online/cong-nghe-blockchain-167464\" style=\"padding: 0px; margin: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; color: rgb(51, 122, 183);\">Blockchain Và Internet</a></div><hr style=\"padding: 0px; margin: 10px 0px; border-top-color: rgb(238, 238, 238);\"></div><div class=\"item_ch_mora \" style=\"padding: 0px; margin: 0px;\"><div class=\"item_ch\" style=\"padding: 0px; margin: 0px;\"><a target=\"_blank\" href=\"https://nhasachmienphi.com/doc-online/cong-nghe-blockchain-167465\" style=\"padding: 0px; margin: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; color: rgb(51, 122, 183);\">Liệu Lịch Sử Có Lặp Lại?</a></div><hr style=\"padding: 0px; margin: 10px 0px; border-top-color: rgb(238, 238, 238);\"></div></div><div class=\"content_p content_p_al\" style=\"padding: 0px; margin: 0px; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><div class=\"gioi_thieu_sach text-justify\" style=\"padding: 0px; margin: 0px; max-width: 100%;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; max-width: 100%;\">Blockchain là chủ đề đang vô cùng nóng trên toàn cầu hiện nay. Nó cùng với&nbsp;Bitcoin&nbsp;và tiền kỹ thuật số trở thành đề tài bàn luận trên rất nhiều mặt báo và trong những cuộc trò chuyện của mọi người. Tuy nhiên, khi nói về blockchain vẫn còn nhiều tranh cãi. Có người lo lắng rằng Bitcoin có thể chỉ là bong bóng, nhiều người cho rằng công nghệ phía sau nó là một sự đột phá, và công nghệ ấy sẽ tiếp tục con đường của mình cho đến khi được chấp nhận và tích hợp với Internet.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; max-width: 100%;\">Thậm chí, Jamie Dimon, CEO của JP Morgan, người đã gay gắt phản đối Bitcoin và gây ra nhiều lo lắng cho cộng đồng tiền kỹ thuật số cũng đã đồng ý rằng, công nghệ DLT (công nghệ sổ cái phân tán –&nbsp;distributed ledger technology) có tiềm năng rất lớn để thay đổi ngành tài chính và các ngành khác. Hơn nữa, JP Morgan cùng với nhiều ngân hàng đã tiến hành kiểm tra blockchain cho những trường hợp sử dụng khác nhau trong thực tế.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; max-width: 100%;\">Vậy thì Blockchain thực chất là gì? Nó có thể ứng dụng vào những lĩnh vực nào trong cuộc sống và tại sao nó lại được quan tâm như vậy?</p></div></div>', 'nhasachmienphi-cong-nghe-blockchain.jpg', 100000, '2023-11-10', 100, 'Sách Công nghệ Blockchain', 1, 1),
(2, 0, '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><em style=\"padding: 0px; margin: 0px; max-width: 100%;\"><span style=\"padding: 0px; margin: 0px; font-weight: 700; max-width: 100%;\">Bộ Sách Giáo Khoa lớp 11</span></em></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><em style=\"padding: 0px; margin: 0px; max-width: 100%;\"><span style=\"padding: 0px; margin: 0px; font-weight: 700; max-width: 100%;\">Bộ sách lớp 11</span></em>&nbsp;này gồm có</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">– CÔNG NGHỆ LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– ĐẠI SỐ LỚP 11 – NÂNG CAO<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– ĐẠI SỐ VÀ GIẢI TÍCH LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– ĐỊA LÝ LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– ĐỊA LÝ LỚP 11 – NÂNG CAO<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– GIÁO DỤC CÔNG DÂN LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– GIÁO DỤC QUỐC PHÒNG LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– HÌNH HỌC LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– HÌNH HỌC LỚP 11 NÂNG CAO<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– HÓA HỌC LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– HÓA HỌC LỚP 11 NÂNG CAO<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– LỊCH SỬ LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– LỊCH SỬ LỚP 11 NÂNG CAO<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– NGỮ VĂN LỚP 11 – TẬP 1<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– NGỮ VĂN LỚP 11 – TẬP 2<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– NGỮ VĂN LỚP 11 NÂNG CAO – TẬP 1<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– NGỮ VĂN LỚP 11 NÂNG CAO – TẬP 2<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– SINH HỌC LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– SINH HỌC LỚP 11 NÂNG CAO<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– TIN HỌC LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– VẬT LÝ LỚP 11<br style=\"padding: 0px; margin: 0px; max-width: 100%;\">– VẬT LÝ LỚP 11 NÂNG CAO</p>', 'bo-sach-giao-khoa-lop-11.jpg', 300000, '2023-11-14', 100, 'Bộ Sách Giáo Khoa lớp 11', 4, 1),
(3, 0, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Thực ra, các món chay không chỉ ngon miệng, cung cấp đủ chất dinh dưỡng mà còn dễ thực hiện. “Những món ăn chay nổi tiếng” là cẩm nang ẩm thực chay hoàn hảo, nó hấp dẫn ngay cả những người ăn mặn đã từng cho rằng ăn chay là thiếu dinh dưỡng. Cuốn sách hướng dẫn bạn làm các món chay từ khai vị đến tráng miệng. Bạn hãy thử chọn một thực đơn cho bữa ăn gia đình mà bạn ưa thích. Sự ngạc nhiên và ngon miệng của mọi người chắc chắn sẽ dành cho bạn. Rồi bạn sẽ làm cho họ “ghiền” ăn chay bởi tài chế biến của bạn qua các món chay nổi tiếng này!&nbsp;</span><br></p>', 'nhasachmienphi-nhung-mon-an-chay-noi-tieng.jpg', 25000, '2023-11-09', 100, 'Những Món Ăn Chay Nổi Tiếng', 2, 1),
(4, 0, '<p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-family: Roboto, sans-serif, sans-serif; font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; text-align: justify;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 14px;\">“Ở thành phố này ẩn chứa một bí mật, đó là tất cả mọi người đều dùng sự bận rộn của mình để che giấu nỗi cô đơn.”</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-family: Roboto, sans-serif, sans-serif; font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; text-align: justify;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 14px;\">Đã bao giờ bạn tự hỏi bản thân mình rằng “Liệu mình có thuộc về thành phố này?” vì nơi đây thì rộng lớn còn chính mình thì quá nhỏ bé, chênh vênh. Và rồi khoảnh khắc ấy bạn nhận ra mình phải trưởng thành lúc nào không hay, chỉ là bấy lâu nay bạn vẫn miệt mài vùi mình trong công việc để gạt bỏ nỗi sợ một mình, vật lộn với những dòng suy nghĩ miên man rằng mình không thuộc về thế giới hiện tại, rằng mình là một “ngôi sao đơn độc”.</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-family: Roboto, sans-serif, sans-serif; font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; text-align: justify;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 14px;\">Có lẽ ai trong chúng ta cũng đã từng trải qua những cảm xúc như thế, cảm thấy bản thân vô hình trong biển người mênh mông. Ngay khi hòa mình vào đám đông, giữa con phố hàng nghìn người qua lại, hay khi màn đêm buông xuống ở một thành phố không ngủ, sự cô độc ấy vẫn gào thét bên trong tâm trí bạn, như một hố đen lớn nuốt chửng những hoài bão, khát vọng mà bạn luôn ấp ủ.</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-family: Roboto, sans-serif, sans-serif; font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; text-align: justify;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 14px;\">Lật mở từng trang sách của&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-weight: bold;\">“Điều còn lại giữa chúng ta”</strong>, bạn sẽ bắt gặp hình ảnh chính mình đâu đó qua những lá thư của hai nhân vật giấu tên - đôi bạn trẻ giấu nhẹm tình cảm thanh thuần dành cho nhau vì cả hai đều đang bôn ba nơi đất khách quê người để thực hiện bao khát vọng. Bản thân họ đôi khi cũng lạc lõng giữa nơi mình sinh sống, sợ rằng vị trí của mình trong lòng của đối phương cũng giống khoảng cách về địa lý, ngày một trật nhịp với đối phương.</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-family: Roboto, sans-serif, sans-serif; font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; text-align: justify;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 14px;\">Khép lại&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-weight: bold;\">“Điều còn lại giữa chúng ta’”</strong>&nbsp;được chắp bút bởi tác giả An. và Jun, bạn sẽ nhận ra rằng, suy cho cùng, sự cô đơn là một phần tất yếu của hành trình trưởng thành. Dẫu trên hành trình ấy có biến cố, có bao khó khăn, âu cũng chỉ là thử thách để bạn ngày càng mạnh mẽ hơn. Và đôi khi sự cô đơn là thứ cần phải có, vì bởi đó là khoảng lặng để chúng ta nhìn và tìm lại chính mình.</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-family: Roboto, sans-serif, sans-serif; font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; text-align: justify;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 14px;\">“Mong rằng bạn đủ mạnh mẽ để níu giữ những điều quan trọng, và đủ quyết tâm để bỏ đi những thứ vốn dĩ chưa từng thuộc về mình”.</span></p>', 'dieu-con-lai-giua-chung-ta.jpg', 93000, '2023-11-01', 100, 'Điều Còn Lại Giữa Chúng Ta', 8, 1),
(5, 0, '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Những cuộc phỏng vấn ở xà lim với kẻ ăn thịt người ham thích trò đùa trí tuệ, những tiết lộ nửa chừng hắn chỉ dành cho kẻ nào thông minh, những cái nhìn xuyên thấu thân phận và suy tư của cô mà đôi khi cô muốn lảng tránh... Clarice Starling đã dấn thân vào cuộc điều tra án giết người lột da hàng loạt như thế, để rồi trong tiếng bức bối của chiếc đồng hồ đếm ngược về cái chết, cô phải vật lộn để chấm dứt tiếng kêu bao lâu nay vẫn đeo đẳng giấc mơ mình: tiếng kêu của bầy cừu sắp bị đem đi giết thịt.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\"><em style=\"border: 0px; font-size: 14px; margin: 0px; padding: 0px; font-family: RobotoSlab; color: rgb(85, 85, 85); line-height: 1.714;\">Sự im lặng của bầy cừu</em>&nbsp;hội tụ đầy đủ những yếu tố làm nên một cuốn tiểu thuyết trinh thám kinh dị xuất sắc nhất: không một dấu vết lúng túng trong những chi tiết thuộc lĩnh vực chuyên môn, với các tình tiết giật gân, cái chết luôn lơ lửng, với cuộc so găng của những bộ óc lớn mà không có chỗ cho kẻ ngu ngốc để cuộc chơi trí tuệ trở nên dễ dàng. Bồi đắp vào cốt truyện lôi cuốn đó là cơ hội được trải nghiệm trong trí não của cả kẻ gây tội lẫn kẻ thi hành công lý, khi mỗi bên phải vật vã trong ngục tù của đau đớn để tìm kiếm, khẩn thiết và liên tục, một sự lắng dịu cho tâm hồn.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\"><strong style=\"font-weight: bold; border: 0px; font-size: 14px; margin: 0px; padding: 0px; font-family: RobotoSlab; color: rgb(85, 85, 85); line-height: 1.714;\">Nhận định</strong></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">“...xây dựng tình tiết đẹp với lối viết thông tuệ. Không tác phẩm kinh dị nào vượt được cuốn này.”</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\"><em style=\"border: 0px; font-size: 14px; margin: 0px; padding: 0px; font-family: RobotoSlab; color: rgb(85, 85, 85); line-height: 1.714;\">- Clive Barker</em></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">“Một cuốn sách giáo khoa đúng nghĩa về nghệ thuật viết truyện kinh dị, một kiệt tác chứa xung lực đưa nó lao vụt lên đỉnh cao không một khiếm khuyết... Harris đơn giản chính là tiểu thuyết gia kinh dị xuất sắc nhất thời nay.”</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">-&nbsp;<em style=\"border: 0px; font-size: 14px; margin: 0px; padding: 0px; font-family: RobotoSlab; color: rgb(85, 85, 85); line-height: 1.714;\">The Washington Post</em></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">“Tiết điệu dồn dập... đánh thức sự tò mò... lôi cuốn.”</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\"><em style=\"border: 0px; font-size: 14px; margin: 0px; padding: 0px; font-family: RobotoSlab; color: rgb(85, 85, 85); line-height: 1.714;\">- Chicago Tribune</em></p>', 'suimlangbaycuu.jpg', 100000, '2023-11-14', 100, 'Sự Im Lặng Của Bầy Cừu (Tái Bản 2022)', 3, 2),
(6, 0, '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Những năm gần đây, AI – Artificial Intelligence (Trí Tuệ Nhân Tạo), và cụ thể hơn là Machine Learning (Học Máy hoặc Máy Học) nổi lên như một bằng chứng của cuộc cách mạng công nghiệp lần thứ tư (1 – động cơ hơi nước, 2 – năng lượng điện, 3 – công nghệ thông tin). Trí Tuệ Nhân Tạo đang len lỏi vào mọi lĩnh vực trong đời sống mà có thể chúng ta không nhận ra. Xe tự hành của Google và Tesla, hệ thống tự tag khuôn mặt trong ảnh của Facebook, trợ lý ảo Siri của Apple, hệ thống gợi ý sản phẩm của Amazon, hệ thống gợi ý phim của Netflix, máy chơi cờ vây AlphaGo của Google DeepMind, …, chỉ là một vài trong vô vàn những ứng dụng của AI/Machine Learning.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Machine Learning là một tập con của AI. Theo định nghĩa của Wikipedia,&nbsp;<em style=\"padding: 0px; margin: 0px; max-width: 100%;\">Machine learning is the subfield of computer science that “gives computers the ability to learn without being explicitly programmed”</em>. Nói đơn giản, Machine Learning là một lĩnh vực nhỏ của Khoa Học Máy Tính, nó có khả năng tự học hỏi dựa trên dữ liệu đưa vào mà không cần phải được lập trình cụ thể. Bạn Nguyễn Xuân Khánh tại đại học Maryland đang viết một cuốn sách về Machine Learning bằng tiếng Việt khá thú vị, các bạn có thể tham khảo bài&nbsp;Machine Learning là gì?.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Những năm gần đây, khi mà khả năng tính toán của các máy tính được nâng lên một tầm cao mới và lượng dữ liệu khổng lồ được thu thập bởi các hãng công nghệ lớn, Machine Learning đã tiến thêm một bước dài và một lĩnh vực mới được ra đời gọi là Deep Learning (Học Sâu –&nbsp;<em style=\"padding: 0px; margin: 0px; max-width: 100%;\">thực sự tôi không muốn dịch từ này ra tiếng Việt</em>). Deep Learning đã giúp máy tính thực thi những việc tưởng chừng như không thể vào 10 năm trước: phân loại cả ngàn vật thể khác nhau trong các bức ảnh, tự tạo chú thích cho ảnh, bắt chước giọng nói và chữ viết của con người, giao tiếp với con người, hay thậm chí cả sáng tác văn hay âm nhạc&nbsp;</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"padding: 0px; margin: 0px; font-weight: 700; max-width: 100%;\">Toàn bộ thông tin bài viết và tài nguyên được tác giả&nbsp;Vũ Hữu Tiệp&nbsp;viết.</span></p>', 'nhasachmienphi-machine-learning-co-ban.jpg', 100000, '2023-12-05', 100, 'Machine Learning Cơ Bản', 1, 1),
(7, 0, '<p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder; word-break: break-word !important;\">Dưới Ánh Sáng Của Thiền</span>&nbsp;của tác giả&nbsp;<span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder; word-break: break-word !important;\">Mike George</span>&nbsp;được soạn thảo và trình bày dưới dạng một khóa học thiền với mục đích giúp bạn dễ dàng đạt được trải nghiệm bình an, hạnh phúc như mong muốn.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Thiền định là con đường dẫn đến sự thông thái, giúp khám phá vẻ đẹp của tâm hồn; từ đó khơi dậy nguồn sức mạnh nội tâm và nhận thức rõ mục đích sống thật sự. Trong bầu không khí thế giới ngày càng nặng nề như hiện nay, khi mà stress đã trở thành \"căn bệnh thời thượng\" thì thiền chính là cách rèn luyện tâm trí nhẹ nhàng bằng nghệ thuật tập trung, cho ta cơ hội lắng sâu vào suối nguồn bình yên nội tâm mà vẫn có thể tập trung hoàn thành tốt công việc thường nhật.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Thực hành thiền mở mắt theo phương pháp thiền Raja Yoga sẽ giúp bạn dễ dàng tạo trạng thái ý thức đúng trong khi vẫn nhận thức về sự việc diễn ra xung quanh; vẫn giữ được bình an nội tâm trong khi mọi người xung quanh đang hoảng loạn, sợ hãi; cho ta khả năng nhìn rõ đâu là sự thật và đâu là giả dối; đồng thời giúp ta đưa ra những quyết định đúng, không bị ảnh hưởng từ người khác hoặc từ những cảm xúc \"phá bĩnh\" của chính mình.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Cuốn sách này thực sự đem đến những khoảng lặng bình yên trong cuộc sống hiện đại ngày nay. Một cuốn sách dành để đọc và suy ngẫm vào một buổi chiều yên ả hay một buổi tối tĩnh lặng. Chắc chắn bạn sẽ không muốn giữ những điều tuyệt vời cuốn sách truyền đạt cho riêng mình, mà sẽ háo hức sẻ chia chúng với bạn bè, người thân. Đúng như cái tên của nó, cuốn sách nhẹ nhàng và đơn giản, nhưng cũng vô cùng tinh tế và sâu sắc, cho chúng ta thấy được nhiều điều thú vị về \"thiền\", những lợi ích nó mang lại và sự tương quan của nó với cuộc sống. Cách dẫn dắt và gợi mở của cuốn sách rất tài tình, hợp lý, hẳn sẽ mang lại nhiều giây phút tuyệt vời cho mỗi người đọc.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Waka trân trọng giới thiệu đến bạn cuốn sách&nbsp;<span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder; word-break: break-word !important;\">“</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder; word-break: break-word !important;\">Dưới Ánh Sáng Của Thiền”!</span></font></span></p>', '10915.jpg', 10000, '2024-01-05', 2003, 'Dưới ánh sáng của thiền', 10, 5),
(8, 0, '<p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Ai mà không có một thời thanh xuân vật vã, ở đó có những mất mát và êm đềm, dù đau đớn đấy nhưng tựa như một giấc mơ đẹp chẳng bao giờ muốn tỉnh. Ai chưa trải qua tuổi trẻ thì thấy rằng nỗi buồn đó thật mênh mông, ai đã từng kinh qua rồi lại thấy nhẹ nhàng hết sức.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Cuộc đời thì ngắn nỗi nhớ lại dài, những vỡ vụn đã qua ai sẽ cùng em hàn gắn, những chông chênh giữa xoay vần cuộc sống ai sẽ là điểm tựa cùng em bước tiếp, những nặng nợ ở đời rồi ai chia sẻ với em.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Những mảnh ký ức mòn cũ của năm ấy, tôi đã chôn chặt, giống như khi người ta giấu kín một mảnh tâm thư viết cho chính mình vào ngăn kéo, khóa lại rồi ném chìa khóa đi như một cách để giấu nhẹm và lãng quên vội vàng. Tôi không thích đào bới quá khứ nhưng thời gian qua đi, tim tôi đã dọn lại và vá lành, tôi muốn gợi lại những bao la trong lòng mà với tôi còn đó những khoảng trống chưa thể gọi thành tên.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Cuốn sách này như một món quà tôi dành tặng cho thanh xuân của mình, tặng cho ai đang từng ngày vật lộn với nỗi đau và xước xát, cho ai đã từng thất bại, cho cả nỗi nhớ chung của tất cả chúng ta – những người đã và đang trưởng thành.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Rồi một buổi sáng nào đó, ở góc ban công cũ kỹ, nhớ lại quá khứ đã nhuốm màu, đưa tay lên ngực chợt thấy bình yên chẳng muộn phiền.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Người đi rồi chẳng mong họ quay lại, chuyện qua rồi đã thành chuyện cũ. Cuộc đời không dài nhưng thanh xuân có hạn, chi bằng cứ an nhiên mà sống rồi cuộc đời theo đó mà vui.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Những mảnh vá sẽ làm nên một trái tim hoàn hảo nhưng cũng đừng găm thêm những vỡ vụn, vết đau có thể lành nhưng dễ dàng nứt toác nếu ta thờ ơ với nó.</font></span></p>', '47119.png', 30000, '2024-01-05', 188, 'Chúng mình sẽ hạnh phúc, chỉ là không cùng nhau', 11, 6);
INSERT INTO `books` (`id`, `average_rating`, `description`, `image`, `price`, `publication_date`, `quantity`, `title`, `category_id`, `publisher_id`) VALUES
(9, 0, '<p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><font style=\"background-color: rgb(255, 255, 255);\" color=\"#000000\">Nam Cao (1915 hoặc 1917 – 28 tháng 11 năm 1951) là một nhà văn và cũng là một chiến sĩ, liệt sĩ. Nam Cao có nhiều đóng góp quan trọng đối với việc hoàn thiện phong cách truyện ngắn và tiểu thuyết Việt Nam ở nửa đầu thế kỷ 20. Ông mất rất sớm, ngay trong những ngày kháng chiến chống Pháp, lúc tài năng văn chương đang ở vào độ chín muồi.</font></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><font style=\"background-color: rgb(255, 255, 255);\" color=\"#000000\">Theo nhà văn Nguyễn Thế Vinh, từ những tấn bi kịch của người nông dân và trí thức trong xã hội cũ, chúng ta thấy Nam Cao quan tâm sâu sắc tới hai vấn đề lớn của con người là quyền được sống lương thiện và điều kiện để phát huy tài năng để sống một cuộc sống có ích, có ý nghĩa. Những cuộc đời như Chí Phèo, Lão Hạc, thầy giáo Thứ... mỗi người một tính cách, một số phận, một diện mạo riêng, nhưng tất cả đều là những con người vốn lương thiện, họ muốn làm người lương thiện, khát khao vươn tới hạnh phúc. Nững tác phẩm đầy sức khám phá và sáng tạo của Nam Cao là thông điệp thể hiện khát vọng cháy bỏng của những con người chân chất lam lũ về một ngày mai tốt đẹp hơn, nhất định sẽ trở thành hiện thực, và sự thật đã trở thành hiện thực.</font></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><font style=\"background-color: rgb(255, 255, 255);\" color=\"#000000\">Mời các bạn đón đọc&nbsp;<span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder; word-break: break-word !important;\">Tuyển tập Nam Cao - Tập 3</span>.</font></p>', '36419.jpg', 80000, '2024-01-05', 86, 'Tuyển tập Nam Cao - Tập 3', 11, 7),
(10, 0, '<p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Bạn có thể tưởng tượng được nỗi sợ khi coi giết người là nghệ thuật, là niềm vui không?</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Những tội ác đẫm máu tươi dưới ngòi bút của tác giả không chỉ đơn giản như vẻ bề ngoài.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Bạn có thể tưởng tượng một tên đồ tể trốn khỏi vòng pháp luật sống ngay bên cạnh bạn, còn làm bạn với bạn đáng sợ đến mức nào không? Đừng hỏi nguyên nhân, có lẽ đêm khuya khi mở mắt ra, đã có kẻ vung búa đập vào đầu bạn. Đừng yêu cầu giải thích, có lẽ bạn chỉ rẽ vào một ngõ nhỏ thôi, đã có bóng đen dùng dây thừng siết chặt cổ bạn, hoặc đổ axit vào cổ họng bạn rồi.</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Tám vụ án kỳ bí tác giả đã đích thân trải qua và kể lại cho chúng ta không chỉ là những vụ án đẫm máu nhất, mà xét về mức độ giảo hoạt của tội phạm, sự tàn nhẫn của thủ đoạn, đam mê xử lý thi thể kỳ quái, sự kỳ lạ của cả vụ án cùng câu chuyện đằng sau nó đều khiến bạn phải thét lên sợ hãi. Những câu chuyện này, kể ra chưa chắc bạn đã tin, nhưng tất cả mọi thứ kỳ quái ấy đều thật sự tồn tại. Bắt đầu từ thời khắc này, hãy theo chân nhân vật chính bước vào thế giới đáng sợ của hung thủ, tìm kiếm tội ác và sự tàn nhẫn mà bạn sẽ chẳng thể tưởng tượng được…</font></span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-family: &quot;Netflix Sans&quot;; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; text-align: justify; word-break: break-word !important;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Waka trân trọng giới thiệu tác phẩm trinh thám, kinh dị&nbsp;<span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder; word-break: break-word !important;\">Những vụ án kỳ bí</span>&nbsp;của tác giả&nbsp;<span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder; word-break: break-word !important;\">Diên Bắc Lão Cửu</span>.</font></span></p>', '47113.png', 25000, '2024-01-04', 100, 'Những vụ án kỳ bí', 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `books_authors`
--

CREATE TABLE `books_authors` (
  `book_id` bigint NOT NULL,
  `author_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books_authors`
--

INSERT INTO `books_authors` (`book_id`, `author_id`) VALUES
(2, 1),
(4, 1),
(2, 2),
(4, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `book_images`
--

CREATE TABLE `book_images` (
  `id` bigint NOT NULL,
  `book_id` bigint DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book_images`
--

INSERT INTO `book_images` (`id`, `book_id`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(4, 4, 'dieu-con-lai-giua-chung-ta.jpg', 'dieu-con-lai-giua-chung-ta-mockup.jpg', 'dieu-con-lai-giua-chung-ta-mockup-02.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint NOT NULL,
  `price` double NOT NULL,
  `quantity` int DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `price`, `quantity`, `book_id`, `user_id`) VALUES
(43, 100000, 2, 1, 3),
(44, 100000, 1, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `description`, `name`) VALUES
(1, '', 'Công nghệ thông tin'),
(2, '', 'Ẩm thực - Nấu ăn'),
(3, '', 'Hồi Ký - Tuỳ Bút'),
(4, '', 'Tài Liệu Học Tập'),
(5, '', 'Kiếm Hiệp - Tiên Hiệp'),
(6, '', 'Tâm Lý - Kỹ Năng Sống'),
(8, '', 'Truyện ngắn '),
(10, '', 'Tâm linh phương Đông'),
(11, '', 'Truyện'),
(12, '', 'Trinh thám - Kinh dị');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint NOT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `total_amount` double NOT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `status`, `total_amount`, `user_id`) VALUES
(21, '2023-12-28 14:40:37.972000', 5, 400000, 3),
(22, '2024-01-05 06:49:22.144000', 5, 30000, 5),
(33, '2024-01-05 07:45:11.084000', 1, 227205, 5);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint NOT NULL,
  `price` double NOT NULL,
  `quantity` int DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `price`, `quantity`, `book_id`, `order_id`) VALUES
(29, 100000, 1, 6, 21),
(30, 100000, 3, 1, 21),
(31, 30000, 1, 8, 22),
(38, 25000, 1, 10, 33),
(39, 80000, 2, 9, 33);

-- --------------------------------------------------------

--
-- Table structure for table `persistent_logins`
--

CREATE TABLE `persistent_logins` (
  `series` varchar(255) NOT NULL,
  `last_used` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `persistent_logins`
--

INSERT INTO `persistent_logins` (`series`, `last_used`, `token`, `username`) VALUES
('GcEqwnE70nmZxL9qnqOu1w==', '2024-01-05 14:44:35.511000', '/xo3vpXgv4tX7r3tcswA7A==', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `location`, `name`, `website`) VALUES
(1, '', 'Kim Đồng', ''),
(2, '', 'Nxb Hội Nhà Văn', ''),
(5, '', 'NXB Hồng Đức', ''),
(6, '', 'NXB Lao Động', ''),
(7, '', 'Đang cập nhật', ''),
(8, '', 'NXB Thông Tin Và Truyền Thông', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `comment`, `rating`, `status`, `book_id`, `user_id`, `admin_id`, `reply`, `created_at`, `update_at`) VALUES
(1, 'Sản phẩm tốt quá iuiu\r\n', 3, 1, 1, 5, 5, 'Cảm ơn bạn đã mua hàng', '2023-11-29 00:00:00.000000', '2023-11-29 14:49:23.234000'),
(11, 'Còn sách này không bạn', 5, 1, 2, 5, 5, 'Còn nhiều bạn nhé Bạn ấn vào Mua đi thank you ', '2023-11-29 14:49:58.557000', '2023-11-29 14:50:37.331000'),
(12, 'Sách không hay ', 1, 1, 2, 5, 5, 'Cảm ơn bạn đã đánh giá', '2023-11-29 14:51:27.428000', '2023-11-29 14:51:46.280000');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'USER'),
(3, 'USER_SOCIAL'),
(5, 'EMPLOYEE');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `more_info` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `address`, `phone`, `user_id`, `more_info`) VALUES
(1, 'thuy ung', '1231231231', 5, ''),
(12, 'Hòa Bình Thường Tín Hà Nội', '+844865399169', NULL, 'ádasdasdasd'),
(13, 'Hòa Bình Thường Tín Hà Nội', '+844865399169', 2, 'ádasdasdasd'),
(14, 'thuy ung', '+84865399169', 3, 'nhanh nhé'),
(15, 'Hòa Bình Thường Tín Hà Nội', '+844865399169', 7, 'Nhớ gửi sớm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `address`, `email`, `fullname`, `password`, `phone`) VALUES
(2, 'thuy ung 123', 'minorbirth96495@karenkey.com', 'Nguyễn Quang Đông', NULL, '+844865399169'),
(3, 'thuy ung', 'nguyenquangdong192@gmail.com', 'Tay Dong', '$2a$10$6GJXrVYKrazM62.aGo61oO.XGRO6Zgpt2E9Bl6pI/wbHWJqg4/5ja', '+84865399169'),
(4, NULL, 'dongtay819@gmail.com', 'Đông Nguyễn Quang', NULL, NULL),
(5, 'thuy ung', 'admin@gmail.com', 'dongit dong', '$2a$10$VyiwG.BK94qj0z7a/X9sY.nWdwisFlR1Vs5BKns2WXWpbOFzbm0yK', '1231231231'),
(7, 'thuy ung', '63cntt.nqdong@aptech.vn', 'Dong Nguyen Quang', NULL, '+84865399169'),
(10, NULL, 'dongtay8129@gmail.com', 'Tay Dong', '$2a$10$k7ejXzN6GOyG2uXFsrLGx.USqTuAwS4vSY5jgQ8RuvUNNIE/kija6', NULL),
(11, NULL, 'dongtay8119@gmail.com', 'Tay Dong', '$2a$10$jt/zgR3qXHbm2H/uHVROfusu1XZkpLRM3SzE1SBYz05Kaw8o0YpLq', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(5, 1),
(10, 2),
(11, 2),
(7, 3),
(3, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKleqa3hhc0uhfvurq6mil47xk0` (`category_id`),
  ADD KEY `FKayy5edfrqnegqj3882nce6qo8` (`publisher_id`);

--
-- Indexes for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD PRIMARY KEY (`book_id`,`author_id`),
  ADD KEY `FK3qua08pjd1ca1fe2x5cgohuu5` (`author_id`);

--
-- Indexes for table `book_images`
--
ALTER TABLE `book_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcnpy06tjmrsjisjf2bqpuvvbl` (`book_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1oy8oyhoej8p1v2ii97d29x15` (`book_id`),
  ADD KEY `FKpay9408fi1tlnkqv3fhetr6hy` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKi4ptndslo2pyfp9r1x0eulh9g` (`book_id`),
  ADD KEY `FKbioxgbv59vetrxe0ejfubep1w` (`order_id`);

--
-- Indexes for table `persistent_logins`
--
ALTER TABLE `persistent_logins`
  ADD PRIMARY KEY (`series`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6a9k6xvev80se5rreqvuqr7f9` (`book_id`),
  ADD KEY `FKsdlcf7wf8l1k0m00gik0m6b1m` (`user_id`),
  ADD KEY `FK5mykw8ddeujut4h923t2xm2bd` (`admin_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKekycabtcfkysajgjr249gcg9m` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKrhfovtciq1l558cw6udg0h0d3` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_images`
--
ALTER TABLE `book_images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `FKayy5edfrqnegqj3882nce6qo8` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`),
  ADD CONSTRAINT `FKleqa3hhc0uhfvurq6mil47xk0` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `FK1b933slgixbjdslgwu888m34v` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `FK3qua08pjd1ca1fe2x5cgohuu5` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`);

--
-- Constraints for table `book_images`
--
ALTER TABLE `book_images`
  ADD CONSTRAINT `FKcnpy06tjmrsjisjf2bqpuvvbl` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FK1oy8oyhoej8p1v2ii97d29x15` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `FKpay9408fi1tlnkqv3fhetr6hy` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `FKbioxgbv59vetrxe0ejfubep1w` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FKi4ptndslo2pyfp9r1x0eulh9g` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK5mykw8ddeujut4h923t2xm2bd` FOREIGN KEY (`admin_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK6a9k6xvev80se5rreqvuqr7f9` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `FKsdlcf7wf8l1k0m00gik0m6b1m` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD CONSTRAINT `FKekycabtcfkysajgjr249gcg9m` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKrhfovtciq1l558cw6udg0h0d3` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
