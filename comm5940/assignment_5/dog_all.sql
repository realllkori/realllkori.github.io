-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2020 at 07:10 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignmet_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `dog_all`
--

CREATE TABLE `dog_all` (
  `DogType` varchar(10) NOT NULL,
  `image_link` varchar(103) DEFAULT NULL,
  `size` varchar(3) DEFAULT NULL,
  `function` varchar(8) DEFAULT NULL,
  `specialty` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dog_all`
--

INSERT INTO `dog_all` (`DogType`, `image_link`, `size`, `function`, `specialty`) VALUES
('中國冠毛犬', 'https://dl.airtable.com/.attachments/3576a419c7d34b0bd82d4c0dca7cde63/201f3e9d/u2282493825794358149fm5', '小型', '玩具狗', '不愛叫, 友善'),
('中國沙皮犬', 'https://dl.airtable.com/.attachments/a7834a40ffbb80eef507e7afcd292cce/52b08017/u515571275136587921fm5', '中型', '家庭犬', '粘人, 會看家'),
('伊比贊獵犬', 'https://dl.airtable.com/.attachments/22581a817aff573303b93aeb9b3036bc/4e29652f/u711857886412619504fm5', '大型', '狩獵犬', '聰明, 友善, 粘人'),
('伯恩山犬', 'https://dl.airtable.com/.attachments/90c124b2ee88ff8b50928e878c0e92ee/9ecbefd8/u2257322229976022740fm5', '大型', '工作犬', '不愛叫'),
('傑克羅素梗', 'https://dl.airtable.com/.attachments/4d73d7c4d3e448e5d2a7b425ea644078/2e0492d6/u1918904107153654932fm5', '小型', '梗類犬', '聰明, 粘人, 友善'),
('冰島牧羊犬', 'https://dl.airtable.com/.attachments/b737c54ca508c170441bfaa662508744/8f641c2d/u1828410985493937485fm5', '中型', '牧羊犬', '友善'),
('凱利藍梗', 'https://dl.airtable.com/.attachments/3ca2961d96512ea50bb1581d53a40258/a90d0e18/u76981908885607228fm5', '中型', '梗類犬', '不掉毛, 不愛叫'),
('凱斯梗', 'https://dl.airtable.com/.attachments/59d1fd9253058a2d9888d99194df6042/c85fa893/u2354839272621776008fm5', '超大型', '梗類犬', '不愛叫'),
('切薩皮克海灣尋回犬', 'https://dl.airtable.com/.attachments/3aa2a042cc657911b99208e3ce371ad0/96747c39/u2014779128526044223fm5', '大型', '槍獵犬', '不愛叫, 友善, 耐熱, 易訓練'),
('剛毛獵狐梗', 'https://dl.airtable.com/.attachments/336ecd114c8c76947aa6d98065f601e7/d9c7a4f1/u1403019557598925940fm5', '小型', '梗類犬', '聰明, 友善'),
('匈牙利牧羊犬', 'https://dl.airtable.com/.attachments/3528dbf3a3f4c56ff6e23109fe8e8e41/07df4382/u2242154067717361411fm5', '大型', '工作犬', '不愛叫, 會看家'),
('北京犬', 'https://dl.airtable.com/.attachments/b51d62c227ffe4a31abb5330c95063fc/6fd9b1fc/u1920670735744256156fm5', '小型', '玩具犬', '聰明, 友善'),
('博伊金獵犬', 'https://dl.airtable.com/.attachments/8d2da2b34f6b47c898d318878c6c5b97/f46c4956/u20214773371039756913fm5', '中型', '槍獵犬', '友善, 聰明'),
('博得獵狐犬', 'https://dl.airtable.com/.attachments/2a2023f805c54f1bd9c43aa2ddf60c7e/38690e0d/u20105908171093462108fm5', '小型', '梗類犬', '不掉毛, 不愛叫'),
('博美犬', 'https://dl.airtable.com/.attachments/8f26352d2a568f8cbc2ace8f1fe1e487/68e35875/u2029921186158604549fm5', '超小型', '玩具犬', '活潑, 警惕, 好奇'),
('卡斯羅', 'https://dl.airtable.com/.attachments/ab58a18cfca8d38e7945c590a6a61704/cd8c57c1/u1785085109127233019fm5', '大型', '工作犬', '耐熱'),
('卡迪根威爾士柯基犬', 'https://dl.airtable.com/.attachments/6eafe9fa4b7924d4290737ad1743607d/7ebfa456/u1510885910240986520fm5', '小型', '牧羊犬', '友善, 忠誠'),
('卷毛尋回犬', 'https://dl.airtable.com/.attachments/69fe06cc05805be9717a8feb58158796/7a0023b6/u1939100684917394432fm5', '大型', '槍獵犬', '友善, 易訓練'),
('卷毛比雄犬', 'https://dl.airtable.com/.attachments/1b596eafa6074daf381c6cc2541bf54f/a6bd5bf0/u2171062080496211314fm5', '小型', '家庭犬', '不掉毛, 不愛叫'),
('古代英國牧羊犬', 'https://dl.airtable.com/.attachments/94a8c2df38bfdaf7eaac31db2630f10a/abb4d74c/u20049254711196004308fm5', '中型', '牧羊犬', '粘人, 不掉毛, 不愛叫'),
('史畢諾犬', 'https://dl.airtable.com/.attachments/25f216b7bcb797d6ec2ffc83d5f6e699/cd092c39/u1604099356371279932fm5', '大型', '槍獵犬', '聽話'),
('吉娃娃', 'https://dl.airtable.com/.attachments/3c70c29a7f278a124e541c22242d7451/a6d37f50/u4161600784249346239fm5', '超小型', '玩具犬', '會看家, 耐熱'),
('哈士奇', 'https://dl.airtable.com/.attachments/048525de32d7868a2a2ed86bb311cd68/7ca565fd/u2300875363445064071fm5', '中型', '工作犬', '友善'),
('哈瓦那犬', 'https://dl.airtable.com/.attachments/7444e34abc5e64aa938836e368497bce/6e704b14/u1840761816447898441fm5', '小型', '玩具犬', '活潑, 聰明, 易訓練, 友善'),
('喜樂蒂牧羊犬', 'https://dl.airtable.com/.attachments/0fb607e256002a5f8e331c6c63847195/0ff83125/u1798578619534917662fm5', '中型', '牧羊犬', '聰明, 不愛叫, 會看家, 易訓練'),
('墨西哥無毛犬', 'https://dl.airtable.com/.attachments/6e5224a533844c83fd4a0fff7c8d8d1b/6daee298/u1993241054519372056fm5', '中型', '家庭犬', '活潑, 友善, 警惕'),
('大丹犬', 'https://dl.airtable.com/.attachments/f5e4f44fd397065ecd7fb91845c05e46/fdd7bbb4/u1995132213601620123fm5', '超大型', '工作犬', '不愛叫, 友善'),
('大瑞士山地犬', 'https://dl.airtable.com/.attachments/ddfb765b5933cae7514e85d47ef9b853/0fe1e782/u2126055670701489619fm5', '超大型', '工作犬', '不掉毛'),
('大白熊犬', 'https://dl.airtable.com/.attachments/96051a06364597fe97a03653075187b2/64654a67/u21025785041136252409fm5', '超大型', '工作犬', '不掉毛, 不愛叫, 會看家'),
('大麥町犬', 'https://dl.airtable.com/.attachments/ab8c9cc5bdbaca92aaf361c74fc5c0d2/b0769aac/u1943371376478460723fm5', '中型', '家庭犬', '易訓練'),
('奇努克犬', 'https://dl.airtable.com/.attachments/d0d1ef6702afedbc3e0dc7a10e82c4a2/e733cc3f/u23523935031325817842fm5', '大型', '工作犬', '友善'),
('威爾士梗', 'https://dl.airtable.com/.attachments/43b3532bbdea073fe913d0d42704d1f9/a80781bd/u2060405814972497729fm5', '小型', '梗類犬', '友善, 警惕, 聰明, 好奇, 聽話'),
('威爾士跳獵犬', 'https://dl.airtable.com/.attachments/e70cf6ec341cbcb41cda0ebb6c411869/f70fb2e6/u1823838251365326372fm5', '中型', '槍獵犬', '不愛叫'),
('威瑪犬', 'https://dl.airtable.com/.attachments/6d8bb7bba609bf3b1a17fd679b8261d2/48df2ebe/u2200891225647137615fm5', '大型', '槍獵犬', '聰明, 易訓練, 活潑, 耐熱, 友善'),
('安納托利亞牧羊犬', 'https://dl.airtable.com/.attachments/f0f6bcb756bbad3da182c757182a5c2c/2e681a9f/u1668128240208195347fm5', '超大型', '工作犬', '友善, 耐熱, 聰明, 忠誠'),
('尋血獵犬', 'https://dl.airtable.com/.attachments/01a3a3f0898d7d337b6cdd96d2ec8fae/39aa6fc4/u1805624111426400140fm5', '大型', '狩獵犬', '不掉毛, 不愛叫, 友善'),
('小型葡萄牙波登可犬', 'https://dl.airtable.com/.attachments/e4c171ce15883dc1ec50f6e1203d2c3d/5493d658/u22367269031297002161fm5', '小型', '狩獵犬', '聰明, 活潑, 耐熱, 易訓練'),
('小型雪納瑞犬', 'https://dl.airtable.com/.attachments/c907f3f945dd0aa91fe68f9b49e504ac/600ec059/u1581004036339027218fm5', '小型', '梗類犬', '聰明, 不掉毛, 不愛叫'),
('小型鬥牛梗', 'https://dl.airtable.com/.attachments/27f39c087fa55dea03ad1e3d72264f6a/bfc52da5/u2005761516959942203fm5', '小型', '梗類犬', '不愛叫'),
('山地犬', 'https://dl.airtable.com/.attachments/68baba04877bcf019420da1f1538662d/606668f2/u1689205697492387653fm5', '中型', '牧羊犬', '短尾/無尾'),
('巨型雪納瑞犬', 'https://dl.airtable.com/.attachments/c7a8c47b7d9ebb94bb2012cc0826a297/17e5e4f7/u1997402157466171528fm5', '大型', '工作犬', '不愛叫, 會看家'),
('巴仙吉犬', 'https://dl.airtable.com/.attachments/95f7badd8165c8f07200160da818cd19/2fba346d/u1642707514167767606fm5', '中型', '狩獵犬', '不愛叫'),
('巴吉度犬', 'https://dl.airtable.com/.attachments/105316c300cf2af4135058c12d7576d1/7ad54879/u1511818455218306731fm5', '小型', '狩獵犬', '不愛叫'),
('巴哥犬', 'https://dl.airtable.com/.attachments/0d691f00a7f7348a5a2242190bc77f8c/22916cdf/u2203179441686428929fm5', '小型', '家庭犬', '不掉毛'),
('布列塔尼犬', 'https://dl.airtable.com/.attachments/86806e2017c52746decf5119bc83a985/599218d6/u1571537420898878059fm5', '中型', '槍獵犬', '聰明, 友善'),
('布雷獵犬', 'https://dl.airtable.com/.attachments/293adbcdf6de48bd01a6178cf3fce137/6f726962/u1976267226711525229fm5', '大型', '牧羊犬', '不愛叫, 會看家'),
('布魯克浣熊獵犬', 'https://dl.airtable.com/.attachments/b017ba0901ce5324967b1477e829d120/1cee306c/u2062393668327721364fm5', '大型', '狩獵犬', '聰明'),
('布魯塞爾格裏芬犬', 'https://dl.airtable.com/.attachments/9674d735d68a07ebc190d2bbba5856e3/01cfc43a/u169558272629699195fm5', '小型', '玩具犬', '粘人'),
('帕爾森羅塞爾梗', 'https://dl.airtable.com/.attachments/1790b8d82faeb8b7dea589645952761c/b98788e3/u1968858176529097473fm5', '小型', '梗類犬', '聰明, 粘人, 活潑, 警惕'),
('庫瓦茲犬', 'https://dl.airtable.com/.attachments/f19487643c34c9a5b51b2f0d2728b18d/73625a53/u24542693171224649392fm5', '超大型', '工作犬', '聰明, 友善'),
('弗萊特尋回犬', 'https://dl.airtable.com/.attachments/b3dbd11e78eac70323f2ddde6318bd95/b592411d/u1728725156245903019fm5', '大型', '槍獵犬', '聰明, 不愛叫, 易訓練'),
('彭布羅克威爾士柯基犬', 'https://dl.airtable.com/.attachments/6d0a91cfa0e5e2a856bc2806cdb42ba3/ef10a1c7/u1663445875290726112fm5', '小型', '牧羊犬', '聰明, 吃苦耐勞'),
('德國牧羊犬', 'https://dl.airtable.com/.attachments/7c6f4b7cb0afa5911e9e7c3f02839c42/7bd6f5a2/u21696583901178081336fm5', '大型', '牧羊犬', '聰明, 易訓練'),
('德國短毛波音達', 'https://dl.airtable.com/.attachments/bc0a79af4bfeece7a054e7b5e9273bb8/328b7041/u1888922083585268057fm5', '大型', '槍獵犬', '聰明'),
('德國硬毛波音達', 'https://dl.airtable.com/.attachments/df8beca0339d7ba3d64ee80fe1eb02a5/f04f4c51/u2073107806447048124fm5', '大型', '槍獵犬', '不愛叫'),
('德國賓莎犬', 'https://dl.airtable.com/.attachments/32320d7c08328787fb50c946d1270059/315c5a43/u7007158573693416376fm5', '中型', '工作犬', '聰明, 會看家'),
('惠比特犬', 'https://dl.airtable.com/.attachments/26138f869e7c3e761d3ea91da849f382/d4146e5c/u1891082833412187221fm5', '中型', '狩獵犬', '不愛叫'),
('愛爾蘭峽谷梗', 'https://dl.airtable.com/.attachments/27a1221ab5d3ee7301077d3b5f930a14/dbc17a28/u1930169461979000531fm5', '小型', '梗類犬', '聰明, 忠誠, 友善'),
('愛爾蘭梗', 'https://dl.airtable.com/.attachments/1287d31e48fa81219878d15eb22b48fe/4eebaf74/u21934722371075619716fm5', '中型', '梗類犬', '不愛叫, 會看家'),
('愛爾蘭水獵犬', 'https://dl.airtable.com/.attachments/3bcd41d49d506ed05c0b153489c5ce93/271d0ef3/u1737554132630087286fm5', '大型', '槍獵犬', '不愛叫'),
('愛爾蘭獵狼犬', 'https://dl.airtable.com/.attachments/fdf8bbd2ca7b08bb9d55faf02146aea7/8cf20ac4/u1694804343325786490fm5', '超大型', '狩獵犬', '不愛叫'),
('愛爾蘭紅白雪達犬', 'https://dl.airtable.com/.attachments/d63cc4dbf0d0bcd14119dded0e2a6ab8/b1c16961/u21239699311249614517fm5', '大型', '槍獵犬', '活潑, 友善'),
('愛爾蘭軟毛梗', 'https://dl.airtable.com/.attachments/094963facc481b82c6fff248bcc363cf/e90aa9bb/u2055914364857457140fm5', '中型', '梗類犬', '警惕'),
('愛爾蘭雪達犬', 'https://dl.airtable.com/.attachments/b7036946c797c1ceaeb149e1bf6c10c7/8925912b/u1986233445832373609fm5', '大型', '槍獵犬', '友善'),
('戈登雪達犬', 'https://dl.airtable.com/.attachments/b40c14181cf078229e06f799a3354b5f/6a3f91d4/u1990475578939244546fm5', '大型', '槍獵犬', '不掉毛'),
('拉布拉多尋回犬', 'https://dl.airtable.com/.attachments/85c9190f49ca0d253476379e10496da2/b9f12085/u1867305213522151695fm5', '中型', '槍獵犬', '聰明, 不愛叫, 友善, 易訓練'),
('拉薩犬', 'https://dl.airtable.com/.attachments/fadb38f052b4ce05f082be24fc316464/05823fe0/u155436155935822447fm5', '小型', '家庭犬', '會看家, 耐熱'),
('拳獅犬', 'https://dl.airtable.com/.attachments/33e6944d5010185f933d80199c7d2883/11db272a/u12155152344067754273fm5', '大型', '工作犬', '不掉毛'),
('挪威倫德獵犬', 'https://dl.airtable.com/.attachments/a9e12617516ef72259081f940de65f54/bd26f507/u2251154054662446146fm5', '超大型', '家庭犬', '不愛叫, 不掉毛, 耐熱, 活潑'),
('挪威布哈德犬', 'https://dl.airtable.com/.attachments/0f9322b6056f6cfe5211751a4eca6203/d1456b5e/u1757931655483435249fm5', '中型', '牧羊犬', '活潑, 友善, 忠誠, 聰明, 會看家'),
('挪威梗', 'https://dl.airtable.com/.attachments/3b933fcbaaa7230482c4e6739cab4ae3/e31d428b/u1977835422978969536fm5', '小型', '梗類犬', '不愛叫'),
('挪威獵鹿犬', 'https://dl.airtable.com/.attachments/b84ee6a930bc049e62b2ddfdf98cf838/83090c2b/u1903024546395634218fm5', '中型', '狩獵犬', '友善, 聰明, 易訓練'),
('捕鼠梗', 'https://dl.airtable.com/.attachments/53bbc48438df810081549a1fd6b9e9f8/168932dd/u2396743708662775936fm5', '中型', '梗類犬', '愛叫'),
('捷克梗', 'https://dl.airtable.com/.attachments/2eabacaf207f75642807b9a770bae76b/645e7e95/u184555682825873933fm5', '小型', '梗類犬', '友善'),
('斯塔福郡鬥牛梗', 'https://dl.airtable.com/.attachments/95ddf6df34551bfa58d5c22f14cd7e86/8f6c687b/u2305849779579901568fm5', '中型', '梗類犬', '不掉毛, 不愛叫'),
('新斯科舍獵鴨尋獵犬', 'https://dl.airtable.com/.attachments/8ecfd43632bd3a5a7a92293bfab4820d/d9784a89/u1842460374712175843fm5', '中型', '槍獵犬', '活潑, 易訓練, 聽話, 聰明'),
('日本忡', 'https://dl.airtable.com/.attachments/4a5ec849c29402aa52068d642e245d06/6398b90b/u2208239410859041218fm5', '小型', '玩具犬', '不愛叫'),
('普羅特獵犬', 'https://dl.airtable.com/.attachments/a4d9a504d5132d89cf9a19d02c3060d0/0fcb3a43/u1854661841238021435fm5', '大型', '狩獵犬', '聰明, 警惕, 友善'),
('杜賓犬', 'https://dl.airtable.com/.attachments/3c628f9ada17bf1d968721dcd00fea1e/47a3abef/u620185774165030302fm5', '超大型', '工作犬', '聰明, 會看家, 易訓練'),
('松獅', 'https://dl.airtable.com/.attachments/da07f759de9ee2d69d5fdc3a392e5f74/522de344/u9421200034005302423fm5', '中型', '家庭犬', '不愛叫, 會看家'),
('柯利犬', 'https://dl.airtable.com/.attachments/02dc510f8b8a9022799c6b0059312798/037fde38/u25020046431158696502fm5', '大型', '牧羊犬', '聰明, 友善'),
('柴犬', 'https://dl.airtable.com/.attachments/8beb1176e0518b6f94524b7c8c450276/314f0f05/u1067412999107277101fm5', '中型', '家庭犬', '不愛叫, 耐熱'),
('格雷伊獵犬', 'https://dl.airtable.com/.attachments/b3282e298c3ea30c5a3f95c1d8bfe68c/148a679b/u1622253515300607452fm5', '超大型', '狩獵犬', '不掉毛'),
('標準型雪納瑞犬', 'https://dl.airtable.com/.attachments/3ce0f426692460113e349a9f145686be/c7f8bce4/u22660504511108746436fm5', '中型', '工作犬', '聰明'),
('樹叢浣熊獵犬', 'https://dl.airtable.com/.attachments/5c0334b1a0c88297abf544672979fd26/f328a13e/u8914523293809749002fm5', '大型', '狩獵犬', '易訓練, 友善, 聰明'),
('機器犬', NULL, '大型', '牧羊犬', '粘人, 會看家'),
('機器狗', NULL, '超小型', '功能犬', '掃地'),
('比利時牧羊犬', 'https://dl.airtable.com/.attachments/84efcf60737ac439b695f67472e79dda/7b1142a4/u18514252901159094009fm5', '大型', '牧羊犬', '聰明, 不愛叫, 易訓練'),
('比利時特伏丹犬', 'https://dl.airtable.com/.attachments/bc58101ca69229cbc8337a1f3d696ba4/95f5a2dd/u2383591009552069184fm5', '大型', '牧羊犬', '聰明, 不愛叫, 易訓練'),
('比利時馬林諾斯犬', 'https://dl.airtable.com/.attachments/d7b9040ca40025dc2bbc1b0ef2d27be1/e2b1c52e/u2140664409803065958fm5', '大型', '牧羊犬', '聰明, 易訓練'),
('比利牛斯牧羊犬', 'https://dl.airtable.com/.attachments/16924d1f14f00d24a703b2c77f188481/5bd2695a/u21392800141003400607fm5', '中型', '牧羊犬', '聰明, 忠誠, 會看家, 活潑, 易訓練, 吃苦耐勞, 警惕, 友善'),
('比格獵犬', 'https://dl.airtable.com/.attachments/35cac44e1c0dd02f4b9094d4a921d59c/c53bae04/u1794638012351517914fm5', '小型', '狩獵犬', '不愛叫, 友善'),
('法國狼犬', 'https://dl.airtable.com/.attachments/89b33600504835ffb0a6b53476656e31/db4faaa8/u1691211494274363081fm5', '大型', '牧羊犬', '聰明, 忠誠, 警惕, 粘人'),
('法國鬥牛犬', 'https://dl.airtable.com/.attachments/b17d1552e546818308d3165305e945c1/4317b97a/u16212056014231440712fm5', '中型', '家庭犬', '不愛叫'),
('法老王獵犬', 'https://dl.airtable.com/.attachments/4e73dbc0bf8eb6f52a3f9b9b6aa64f30/de9f424d/u1742836627352313558fm5', '大型', '狩獵犬', '不掉毛, 不愛叫, 耐熱'),
('波利犬', 'https://dl.airtable.com/.attachments/2fa5b3c31154e4b97fea20934cc8469b/8d195573/u1373568475600393472fm5', '中型', '牧羊犬', '不掉毛, 不愛叫'),
('波士頓梗', 'https://dl.airtable.com/.attachments/de26191e24134cf5e80234303e8b7b6c/5c18caa5/u25262142041336328310fm5', '中型', '家庭犬', '聰明, 友善'),
('波爾多犬', 'https://dl.airtable.com/.attachments/fd4f196cc134df85569b3873cbd8a1fd/455cb532/u1860031294359607068fm5', '大型', '工作犬', '警惕, 友善'),
('波蘭低地牧羊犬', 'https://dl.airtable.com/.attachments/4237bf2bf76a87b09882af9cb0a23c8f/75724f48/u2337479175624242617fm5', '中型', '牧羊犬', '不愛叫'),
('波蘭德斯布比野犬', 'https://dl.airtable.com/.attachments/deff26be2460d1aa843506da71822366/071ba9c8/u2168774635684318184fm5', '大型', '牧羊犬', '不愛叫'),
('波音達', 'https://dl.airtable.com/.attachments/e5fb9861462f09b72fc99a833c556e10/fb333247/u64048183572467456fm5', '超大型', '槍獵犬', '不掉毛, 不愛叫'),
('湖畔梗', 'https://dl.airtable.com/.attachments/1f7abbb3e92d1d69906d2ec4668714fd/9b9b0704/u64407591042787078fm5', '小型', '梗類犬', '不愛叫, 會看家'),
('澳大利亞梗', 'https://dl.airtable.com/.attachments/453fc8a3edccf7c8d65afcb82e861f2e/cd8145a8/u22608915071233384633fm5', '小型', '梗類犬', '不愛叫, 耐熱'),
('澳大利亞牧牛犬', 'https://dl.airtable.com/.attachments/f9e96f113c9fc37867076a5975aa427e/344a609b/u2367924413566410597fm5', '中型', '牧羊犬', '聰明, 易訓練'),
('澳大利亞牧羊犬', 'https://dl.airtable.com/.attachments/89af4230892706b5a2e0c65d31d9fe09/06e6451b/u2202193419428160295fm5', '中型', '牧羊犬', '不愛叫'),
('猴頭梗', 'https://dl.airtable.com/.attachments/18258da6dc07513bc0fafad2f801731a/edd489cd/u2129145754341890744fm5', '小型', '玩具犬', '不掉毛, 不愛叫'),
('獵兔犬', 'https://dl.airtable.com/.attachments/f3203e1a3db68efab87500bb4f1169c9/8da0db68/u1956995265506888786fm5', '中型', '狩獵犬', '活潑, 友善'),
('獵水獺犬', 'https://dl.airtable.com/.attachments/093ef6a372b6719bc969bc25c1125a97/831b0987/u1791714841299697630fm5', '大型', '狩獵犬', '粘人, 友善'),
('玩具曼徹斯特犬', 'https://dl.airtable.com/.attachments/8463f4d027401b6ef2bd7850db935854/dbd106ff/u1943754301495104261fm5', '小型', '玩具犬', '不愛叫, 會看家, 耐熱'),
('玩具獵狐梗', 'https://dl.airtable.com/.attachments/41bfbe81db6a43459e8481f58bc6a53d/5470e81e/u824651646114625014fm5', '小型', '梗類犬', '聰明, 粘人, 友善'),
('瑞典柯基犬', 'https://dl.airtable.com/.attachments/24ff2036569f9fea2b0bc98b3d0bcd55/092d9573/u2126856259608128962fm5', '小型', '牧羊犬', '聰明'),
('田野小獵犬', 'https://dl.airtable.com/.attachments/8e9aa75e176776bf35fe4404daaae2de/c8002e62/u22446831951236464999fm5', '中型', '槍獵犬', '不掉毛, 不愛叫'),
('短毛獵狐梗', 'https://dl.airtable.com/.attachments/32c418de4dbe6532e65625f6a49d3448/0eaaa949/u2034250824983043118fm5', '小型', '梗類犬', '不掉毛'),
('短腳長身梗', 'https://dl.airtable.com/.attachments/490d15627a700b323ec77439bc024eb4/c2ad7ee5/u22066528231235689525fm5', '小型', '梗類犬', '友善, 會看家, 聰明'),
('硬毛指示格裏芬犬', 'https://dl.airtable.com/.attachments/298c2e0502a587c865446935ca6044f6/9c8b9232/u22800359381114001359fm5', '大型', '槍獵犬', '不愛叫'),
('秋田犬', 'https://dl.airtable.com/.attachments/ae7df9a001dd83717b5c2aa50a0e8c57/e9efda5a/u5980695253705173246fm5', '超大型', '工作犬', '不愛叫, 會看家'),
('粗毛柯利犬', 'https://dl.airtable.com/.attachments/b34d18445cd17ba6cfe28f711da9cd99/a1f56779/u2106834369530869425fm5', '中型', '牧羊犬', '聰明, 粘人, 友善, 易訓練'),
('約克夏梗', 'https://dl.airtable.com/.attachments/0368640462b1c468cfe081901f63f816/2101b35e/u1876203052395878551fm5', '超小型', '玩具犬', '不掉毛, 耐熱'),
('紅骨獵浣熊犬', 'https://dl.airtable.com/.attachments/ffc1e93865bde67aaba5c37a3c8767ed/b531c98c/u165437074271297074fm5', '大型', '狩獵犬', '友善'),
('紐芬蘭犬', 'https://dl.airtable.com/.attachments/f72518a42ba56b638a39eaee57833170/3198afd9/u13667730494123697663fm5', '超大型', '工作犬', '粘人, 不愛叫, 友善'),
('絲毛梗', 'https://dl.airtable.com/.attachments/6899af582ba5f48efe38dd7b3b3eb093/6a60014f/u23542517051148921344fm5', '小型', '玩具犬', '不掉毛, 不愛叫, 耐熱'),
('維希拉獵犬', 'https://dl.airtable.com/.attachments/b6b58640e1320e75649303f3f5a429e0/b5617b2e/u8325492553837391444fm5', '大型', '槍獵犬', '耐熱'),
('羅威納犬', 'https://dl.airtable.com/.attachments/c597971fa4caa75e762b95ab1443b70e/45b93e1f/u22278286941273977616fm5', '大型', '工作犬', '聰明, 不愛叫, 會看家'),
('羅得西亞脊背犬', 'https://dl.airtable.com/.attachments/9ddad226523f38becbef6a23f703b9ba/87a1bc95/u22028832681144017013fm5', '大型', '狩獵犬', '不愛叫, 會看家'),
('羅秦犬', 'https://dl.airtable.com/.attachments/aaf96ddba1b9278f6baef315b043d15b/c542a26f/u2190152482302503096fm5', '小型', '家庭犬', '粘人, 會看家'),
('美國可卡犬', 'https://dl.airtable.com/.attachments/02d391a2ff445fc7ac5abed039ebd614/719aee9f/u539145094127345307fm5', '小型', '槍獵犬', '聰明, 不掉毛, 友善'),
('美國愛斯基摩犬', 'https://dl.airtable.com/.attachments/aac2a60eab70da37d8b0dffefe068400/08b0e807/u1715945531548831254fm5', '中型', '家庭犬', '耐熱'),
('美國斯塔福郡梗', 'https://dl.airtable.com/.attachments/0fdade6d17daf0d64e29f37512b2d8b5/757eb97c/u22043315131005833192fm5', '中型', '梗類犬', '活潑, 易訓練'),
('美國水獵犬', 'https://dl.airtable.com/.attachments/601ab3fc2e21ae47798ac9b8c50715ee/dde1bd7d/u1664261706180756645fm5', '中型', '槍獵犬', '不愛叫'),
('美國獵狐犬', 'https://dl.airtable.com/.attachments/b91583a554164f5b6e9970ab233daab7/96a71c7b/u746667753258117162fm5', '大型', '狩獵犬', '不愛叫'),
('美國英國獵浣熊犬', 'https://dl.airtable.com/.attachments/30a7f02ad63bc56dbe2a22bf5a89bb0d/d9798912/u1700179568451780168fm5', '大型', '狩獵犬', '友善'),
('義大利灰狗', 'https://dl.airtable.com/.attachments/f5bc3ec33ffa82f25e28f3e341b55ced/69a41b2d/u2009379220550263340fm5', '小型', '玩具犬', '不愛叫'),
('聖伯納犬', 'https://dl.airtable.com/.attachments/e20fc1e2aa573c40ef4da741c9bcffb6/fbc72ac9/u1797044018357854437fm5', '大型', '工作犬', '粘人, 不掉毛, 不愛叫'),
('臘腸犬', 'https://dl.airtable.com/.attachments/bb4b3aff315a611ec8b135bbb3b24446/f10b9517/u18493273024248698017fm5', '中型', '狩獵犬', '會看家'),
('芬蘭拉普獵犬', 'https://dl.airtable.com/.attachments/f2ef732c25cc21b5d27b5a4d049927f7/dc807542/u2152011301917697701fm5', '中型', '牧羊犬', '會看家, 友善, 聰明, 愛叫, 忠誠'),
('芬蘭波美拉尼亞絲毛狗', 'https://dl.airtable.com/.attachments/96a813715a20056900887dbed07f24dc/ff04ff58/u21843968801019641144fm5', '中型', '家庭犬', '忠誠, 愛叫, 活潑, 會看家, 粘人, 警惕'),
('英國可卡犬', 'https://dl.airtable.com/.attachments/97d1eefbe65d90db2dd3cccf21c3a184/a5383663/u1985772057239341773fm5', '中型', '槍獵犬', '聰明, 不掉毛, 友善'),
('英國獵狐犬', 'https://dl.airtable.com/.attachments/7c2522f7219274338db4f3c701cb94e1/2a0e0570/u1793878097987971413fm5', '大型', '狩獵犬', '不愛叫'),
('英國玩具犬', 'https://dl.airtable.com/.attachments/33982fcbffdff00368b908367bab66f1/34602881/u1934161036691773032fm5', '小型', '玩具犬', '聰明, 活潑, 聽話'),
('英國跳獵犬', 'https://dl.airtable.com/.attachments/35c0c8e7921085dd3ee6cef6ef6f680c/1e239e12/u1916059878266482363fm5', '中型', '槍獵犬', '聰明, 易訓練'),
('英國鬥牛犬', 'https://dl.airtable.com/.attachments/306fd5f7c209aa011dbd2c53632853e9/dea5a004/u21012594881054091876fm5', '中型', '家庭犬', '耐熱'),
('英格蘭雪達犬', 'https://dl.airtable.com/.attachments/5a8875105e38ce34e4c1a1f4d90b2102/80d5fe32/u2554383533622622468fm5', '大型', '槍獵犬', '友善, 忠誠, 易訓練'),
('荷蘭毛獅犬', 'https://dl.airtable.com/.attachments/425c171a05a13b6295c2c98ef7e66635/3f89325b/u2009850201603409364fm5', '中型', '家庭犬', '聰明, 不愛叫, 會看家'),
('萬能梗', 'https://dl.airtable.com/.attachments/3adb415d7517d0b3ea7b4ea35e1722d4/a83b73a4/u696520409179513420fm5', '中型', '梗類犬', '不愛叫'),
('葡萄牙水犬', 'https://dl.airtable.com/.attachments/a56067a25d0921b947767798d4e49484/92f55b7f/u1491886508123068581fm5', '中型', '工作犬', '忠誠, 聰明'),
('薩摩耶犬', 'https://dl.airtable.com/.attachments/74b27eef47871e6f36875d010c9a3203/e77d6739/u2165241247947729812fm5', '中型', '工作犬', '不掉毛, 友善'),
('薩路基獵犬', 'https://dl.airtable.com/.attachments/629c84cefeb03964b48efcb7d443d1f0/3bdb509b/u22154080681122655369fm5', '超大型', '狩獵犬', '不掉毛, 不愛叫, 會看家'),
('藏獒', 'https://dl.airtable.com/.attachments/ead9465ca0cb976f5651872fef567823/0be4feaf/u1794064296746211315fm5', '大型', '工作犬', '不掉毛, 不愛叫'),
('蘇俄獵狼犬', 'https://dl.airtable.com/.attachments/024fbc868e584a1f3f036b74836be4b6/10050480/u2329826432772061664fm5', '超大型', '狩獵犬', '友善, 耐熱'),
('蘇塞克斯獵犬', 'https://dl.airtable.com/.attachments/f5e72239f3cc2ee0c8dcc11b4a2161a6/fdab1852/u25626752801420232047fm5', '小型', '槍獵犬', '易訓練'),
('蘇格蘭梗', 'https://dl.airtable.com/.attachments/a11051fa519233dc6799ae89f4073477/f22b1386/u1752872558485178626fm5', '小型', '梗類犬', '不掉毛'),
('蘇格蘭獵鹿犬', 'https://dl.airtable.com/.attachments/7e9a7352d8f154db286b9a019d5558a5/717960f7/u4698626863517731497fm5', '超大型', '狩獵犬', '會看家'),
('蘭波格犬', 'https://dl.airtable.com/.attachments/f8c3e501b32025172bf0a4119453a32c/04cdb4fe/u14616244134163696592fm5', '超大型', '工作犬', '聰明, 友善, 會看家'),
('蝴蝶犬', 'https://dl.airtable.com/.attachments/9829b364655e000eaed4df536c11b7bc/7fa7a648/u2038406380317017081fm5', '小型', '玩具犬', '聰明, 不掉毛, 不愛叫, 耐熱, 易訓練'),
('西帕基犬', 'https://dl.airtable.com/.attachments/12b595334302f6cfc6b224181782cb02/a4ac5c20/u2063829094861333472fm5', '小型', '家庭犬', '聰明'),
('西施犬', 'https://dl.airtable.com/.attachments/6dc5d0c8bf89a021040554f80b702e58/199812be/u2165927228548828044fm5', '小型', '玩具犬', '粘人, 友善, 會看家, 聰明'),
('西班牙小獵犬', 'https://dl.airtable.com/.attachments/1ef74479cf21d6ce2c2d622f5bee67cd/b8135d05/u1953655524423594358fm5', '中型', '槍獵犬', '不愛叫'),
('西藏梗', 'https://dl.airtable.com/.attachments/3735fce7b4a2cedb867d8b2dd2119d98/83d76437/u2157243723593537572fm5', '中型', '家庭犬', '不愛叫'),
('西藏獵犬', 'https://dl.airtable.com/.attachments/1593094b35943abdff2acff464434407/cf8edbe7/u20954389621192138642fm5', '小型', '家庭犬', '不愛叫, 會看家'),
('西高地白梗', 'https://dl.airtable.com/.attachments/47f67ca3d5f4b85df38b9c1804d390da/fd93661a/u663646823257272054fm5', '小型', '梗類犬', '不掉毛'),
('諾福克梗', 'https://dl.airtable.com/.attachments/1b7168e0adf1d96729e71cd0a186798a/692bf17c/u1787623236424237963fm5', '小型', '梗類犬', '不掉毛, 友善, 會看家'),
('貝靈頓梗', 'https://dl.airtable.com/.attachments/cb94027c3df991d9b9672de43e1ca873/63f7101f/u1843158914665029288fm5', '中型', '梗類犬', '不掉毛, 不愛叫'),
('貴賓犬', 'https://dl.airtable.com/.attachments/8e981abae145421c969a6993c755fc7d/5023a966/u2152435263329091142fm5', '小型', '家庭犬, 玩具犬', '聰明, 不掉毛, 耐熱, 易訓練'),
('迦南犬', 'https://dl.airtable.com/.attachments/b0376ec838d02d8eaf45fbf3169ac4d6/b570638a/u1746653481260603831fm5', '大型', '牧羊犬', '粘人, 會看家'),
('迷你杜賓', 'https://dl.airtable.com/.attachments/0bd6cb6c9528421bddc13c3d00882777/9eebf5a5/u1816395469193641591fm5', '小型', '玩具犬', '不愛叫, 會看家, 易訓練'),
('迷你貝吉格裡芬凡丁犬', 'https://dl.airtable.com/.attachments/7305fb127bfbc95b4752699c3f5e7761/8e659456/u1923371332990962128fm5', '小型', '狩獵犬', '粘人, 不掉毛, 友善'),
('邊境牧羊犬', 'https://dl.airtable.com/.attachments/a847fe06c2c64043534c510dde8eff36/49313954/u18201547011076679668fm5', '中型', '牧羊犬', '聰明, 易訓練'),
('那不勒斯獒', 'https://dl.airtable.com/.attachments/70a9cc24e79e6bda967d6a98640893ae/c9bae46e/u20045837111016295501fm5', '超大型', '工作犬', '友善, 聽話, 兇悍好鬥'),
('金毛尋回犬', 'https://dl.airtable.com/.attachments/eb681fb3ed7aec02078415ef0a492e16/18abbfea/u1538951973627565780fm5', '大型', '槍獵犬', '聰明, 不愛叫, 友善, 易訓練'),
('錫利哈姆梗', 'https://dl.airtable.com/.attachments/a319c72b873c947292e2708e7c715934/177014fb/u1813332923164485430fm5', '小型', '梗類犬', '不愛叫'),
('阿富汗獵犬', 'https://dl.airtable.com/.attachments/b00dcc590384e4b1fadaec78bfb317a7/8860d764/u1750517539423265606fm5', '大型', '狩獵犬', '不愛叫, 會看家'),
('阿拉斯加雪橇犬', 'https://dl.airtable.com/.attachments/9f83436b7480f9c83a7484a3a10bcb51/491da6fc/u2284174980259589504fm5', '大型', '工作犬', '不愛叫'),
('馬士提夫獒犬', 'https://dl.airtable.com/.attachments/a15520b1d335a4acceb2a6de6867730c/f474f316/u1763015690361252998fm5', '超大型', '工作犬', '不愛叫'),
('馬爾濟斯犬', 'https://dl.airtable.com/.attachments/59b6c0d7059b141553da84a8a15b7542/f8bc84b3/u1426763083628786910fm5', '超小型', '玩具犬', '會看家, 耐熱'),
('騎士查理王小獵犬', 'https://dl.airtable.com/.attachments/d3615d7133ea8176d74f8b629c0c1724/796a266e/u1918402777520664393fm5', '小型', '玩具犬', '友善'),
('鬥牛梗', 'https://dl.airtable.com/.attachments/c5af0102f6052813d8839595a57442ff/cb78c2b9/u2107302067321987429fm5', '中型', '梗類犬', '忠誠, 兇悍好鬥'),
('鬥牛獒犬', 'https://dl.airtable.com/.attachments/dfd5816862e08fb14e64c9830c1568c0/c0fe1c7f/u1895984823312884046fm5', '大型', '工作犬', '會看家'),
('黑俄羅斯梗', 'https://dl.airtable.com/.attachments/ae42d63587f05cdf5bfb081feda99dd1/08b646e1/u2202214312469993448fm5', '超大型', '工作犬', '聰明'),
('黑褐獵浣熊犬', 'https://dl.airtable.com/.attachments/6dc5ef64973c5c94977551243b1f3b3e/9db6b2ec/u1927659805577504848fm5', '大型', '狩獵犬', '會看家');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dog_all`
--
ALTER TABLE `dog_all`
  ADD PRIMARY KEY (`DogType`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
