-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 02 Mai 2016 à 06:29
-- Version du serveur :  5.6.24
-- Version de PHP :  5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `news_publishing_portail`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `content`, `seen`, `user_id`, `post_id`) VALUES
(1, '2016-05-01 14:44:43', '2016-05-01 14:44:43', '<p>\nLorem ipsum aliquam taciti habitant auctor integer sem at nam massa himenaeos, netus vel dapibus nibh malesuada leo fusce tortor sociosqu semper facilisis, semper class tempus faucibus tristique duis eros cubilia quisque habitasse. \nAliquam fringilla orci non vel laoreet dolor enim justo, facilisis neque accumsan in ad venenatis hac per dictumst, nulla ligula donec mollis massa porttitor ullamcorper. \nRisus eu platea fringilla habitasse suscipit pellentesque donec est habitant, vehicula tempor ultrices placerat sociosqu ultrices consectetur ullamcorper tincidunt, quisque tellus ante nostra euismod nec suspendisse sem. \nCurabitur elit malesuada lacus viverra sagittis sit ornare orci augue nullam adipiscing, pulvinar libero aliquam vestibulum platea cursus pellentesque leo dui lectus. \n</p>\n<p>\nCurabitur euismod ad erat curae non elit ultrices placerat netus metus feugiat non, conubia fusce porttitor sociosqu diam commodo metus in himenaeos vitae aptent consequat luctus, purus eleifend enim sollicitudin eleifend porta malesuada ac class conubia condimentum. \nMauris facilisis conubia quis scelerisque lacinia tempus nullam felis fusce ac, potenti netus ornare semper molestie iaculis fermentum ornare curabitur, tincidunt imperdiet scelerisque imperdiet euismod scelerisque torquent curae rhoncus. \nSollicitudin tortor placerat aptent hac nec posuere suscipit sed tortor, neque urna hendrerit vehicula duis litora tristique congue nec, auctor felis libero ornare habitasse nec elit felis. \n</p>', 0, 2, 1),
(2, '2016-05-01 14:44:43', '2016-05-01 14:44:43', '<p>\nLorem ipsum ut accumsan inceptos cubilia quis mattis faucibus, sem non odio fringilla class aliquam metus ipsum, lorem luctus pharetra dictum vehicula tempus in. \nVenenatis gravida ut gravida proin orci quis sed platea mi, quisque hendrerit semper hendrerit facilisis ante sapien faucibus, ligula commodo vestibulum rutrum pretium varius sem aliquet himenaeos, dolor cursus nunc habitasse aliquam ut curabitur. \nIpsum luctus ut rutrum odio condimentum donec suscipit molestie est, etiam sit rutrum dui nostra sem aliquet. \nConubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus risus tortor, non mauris turpis eget integer nibh dolor commodo, venenatis ut molestie semper adipiscing amet cras class. \n</p>\n<p>\nDonec sapien malesuada auctor sapien arcu inceptos aenean consequat metus litora mattis vivamus feugiat arcu adipiscing mauris primis ante, ullamcorper ad nisi lobortis arcu per orci malesuada blandit metus tortor urna turpis consectetur porttitor egestas. \nSed eleifend eget tincidunt pharetra varius tincidunt morbi malesuada elementum mi, torquent mollis eu lobortis curae purus amet vivamus amet. \nNulla torquent nibh eu diam aliquam pretium donec aliquam, tempus lacus tempus feugiat lectus cras non, velit mollis sit et integer egestas habitant. \nAuctor integer sem at nam massa himenaeos netus, vel dapibus nibh malesuada leo fusce tortor, sociosqu semper facilisis semper class tempus. \n</p>', 0, 2, 2),
(3, '2016-05-01 14:44:44', '2016-05-01 14:44:44', '<p>\nLorem ipsum neque tristique duis eros cubilia quisque habitasse aliquam fringilla, orci non vel laoreet dolor enim justo facilisis neque, accumsan in ad venenatis hac per dictumst nulla ligula. \nDonec mollis massa porttitor ullamcorper risus eu platea fringilla, habitasse suscipit pellentesque donec est habitant vehicula tempor ultrices, placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque. \nTellus ante nostra euismod nec suspendisse sem curabitur, elit malesuada lacus viverra sagittis sit, ornare orci augue nullam adipiscing pulvinar. \nLibero aliquam vestibulum platea cursus pellentesque leo dui lectus curabitur euismod, ad erat curae non elit ultrices placerat netus. \n</p>\n<p>\nMetus feugiat non conubia fusce porttitor sociosqu diam commodo metus in himenaeos vitae, aptent consequat luctus purus eleifend enim sollicitudin eleifend porta malesuada. \nAc class conubia condimentum mauris facilisis conubia quis scelerisque, lacinia tempus nullam felis fusce ac potenti netus ornare, semper molestie iaculis fermentum ornare curabitur tincidunt. \nImperdiet scelerisque imperdiet euismod scelerisque torquent curae rhoncus sollicitudin tortor placerat aptent, hac nec posuere suscipit sed tortor neque urna hendrerit. \nVehicula duis litora tristique congue nec auctor felis libero, ornare habitasse nec elit felis inceptos tellus, inceptos cubilia quis mattis faucibus sem non. \n</p>\n<p>\nOdio fringilla class aliquam metus ipsum, lorem luctus pharetra dictum vehicula, tempus in venenatis gravida. \n</p>', 0, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_21_105844_create_roles_table', 1),
('2014_10_21_110325_create_foreign_keys', 1),
('2014_10_24_205441_create_contact_table', 1),
('2014_10_26_172107_create_posts_table', 1),
('2014_10_26_172631_create_tags_table', 1),
('2014_10_26_172904_create_post_tag_table', 1),
('2014_10_26_222018_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `slug`, `summary`, `content`, `seen`, `active`, `user_id`) VALUES
(1, '2016-05-01 14:44:43', '2016-05-01 14:44:43', 'Post 1', 'post-1', '<img alt="" src="/filemanager/userfiles/user2/mega-champignon.png" style="float:left; height:128px; width:128px" />', '<p>\nLorem ipsum tempus venenatis gravida ut gravida proin, orci quis sed platea mi quisque hendrerit, semper hendrerit facilisis ante sapien faucibus. \nLigula commodo vestibulum rutrum pretium varius sem aliquet himenaeos dolor cursus nunc, habitasse aliquam ut curabitur ipsum luctus ut rutrum odio condimentum donec suscipit, molestie est etiam sit rutrum dui nostra sem aliquet conubia. \nNullam sollicitudin rhoncus venenatis vivamus rhoncus netus risus tortor non mauris turpis, eget integer nibh dolor commodo venenatis ut molestie semper adipiscing, amet cras class donec sapien malesuada auctor sapien arcu inceptos. \nAenean consequat metus litora mattis vivamus feugiat arcu adipiscing mauris, primis ante ullamcorper ad nisi lobortis arcu per, orci malesuada blandit metus tortor urna turpis consectetur. \n</p>\n<p>\nPorttitor egestas sed eleifend eget tincidunt pharetra varius tincidunt morbi malesuada elementum, mi torquent mollis eu lobortis curae purus amet vivamus amet. \nNulla torquent nibh eu diam aliquam pretium donec, aliquam tempus lacus tempus feugiat lectus cras, non velit mollis sit et integer. \nEgestas habitant auctor integer sem at nam massa himenaeos netus, vel dapibus nibh malesuada leo fusce tortor sociosqu, semper facilisis semper class tempus faucibus tristique duis. \nEros cubilia quisque habitasse aliquam fringilla orci non, vel laoreet dolor enim justo facilisis, neque accumsan in ad venenatis hac. \n</p>\n<p>\nPer dictumst nulla ligula donec mollis massa porttitor ullamcorper, risus eu platea fringilla habitasse suscipit pellentesque, donec est habitant vehicula tempor ultrices placerat. \nSociosqu ultrices consectetur ullamcorper tincidunt quisque tellus ante nostra euismod nec suspendisse sem, curabitur elit malesuada lacus viverra sagittis sit ornare orci augue nullam. \nAdipiscing pulvinar libero aliquam vestibulum platea cursus pellentesque leo dui lectus curabitur, euismod ad erat curae non elit ultrices placerat netus metus. \nFeugiat non conubia fusce porttitor sociosqu diam commodo metus in himenaeos vitae aptent, consequat luctus purus eleifend enim sollicitudin eleifend porta malesuada ac class, conubia condimentum mauris facilisis conubia quis scelerisque lacinia tempus nullam felis. \n</p>\n<p>\nFusce ac potenti netus ornare semper molestie iaculis fermentum, ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod, scelerisque torquent curae rhoncus sollicitudin tortor placerat. \nAptent hac nec posuere suscipit sed tortor neque urna, hendrerit vehicula duis litora tristique congue. \nNec auctor felis libero ornare habitasse nec elit felis inceptos, tellus inceptos cubilia quis mattis faucibus sem non, odio fringilla class aliquam metus ipsum lorem luctus. \nPharetra dictum vehicula tempus in venenatis gravida ut gravida proin, orci quis sed platea mi quisque hendrerit semper hendrerit, facilisis ante sapien faucibus ligula commodo vestibulum rutrum. \n</p>\n<p>\nPretium varius sem aliquet himenaeos dolor cursus nunc habitasse, aliquam ut curabitur ipsum luctus ut rutrum odio, condimentum donec suscipit molestie est etiam sit. \nRutrum dui nostra sem aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus, netus risus tortor non mauris turpis eget integer nibh. \nDolor commodo venenatis ut molestie semper adipiscing amet cras class donec sapien malesuada, auctor sapien arcu inceptos aenean consequat metus litora mattis vivamus. \nFeugiat arcu adipiscing mauris primis ante ullamcorper ad nisi lobortis, arcu per orci malesuada blandit metus tortor urna, turpis consectetur porttitor egestas sed eleifend eget tincidunt. \n</p>\n<p>\nPharetra varius tincidunt morbi malesuada elementum, mi torquent mollis. \n</p>', 0, 1, 1),
(2, '2016-05-01 14:44:43', '2016-05-01 14:44:43', 'Post 2', 'post-2', '<img alt="" src="/filemanager/userfiles/user2/goomba.png" style="float:left; height:128px; width:128px" />', '<p>Lorem ipsum convallis ac curae non elit ultrices placerat netus metus feugiat, non conubia fusce porttitor sociosqu diam commodo metus in himenaeos, vitae aptent consequat luctus purus eleifend enim sollicitudin eleifend porta. Malesuada ac class conubia condimentum mauris facilisis conubia quis scelerisque lacinia, tempus nullam felis fusce ac potenti netus ornare semper. Molestie iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque, imperdiet euismod scelerisque torquent curae rhoncus, sollicitudin tortor placerat aptent hac nec. Posuere suscipit sed tortor neque urna hendrerit vehicula duis litora tristique congue nec auctor felis libero, ornare habitasse nec elit felis inceptos tellus inceptos cubilia quis mattis faucibus sem non.</p>\r\n\r\n<p>Odio fringilla class aliquam metus ipsum lorem luctus pharetra dictum, vehicula tempus in venenatis gravida ut gravida proin orci, quis sed platea mi quisque hendrerit semper hendrerit. Facilisis ante sapien faucibus ligula commodo vestibulum rutrum pretium, varius sem aliquet himenaeos dolor cursus nunc habitasse, aliquam ut curabitur ipsum luctus ut rutrum. Odio condimentum donec suscipit molestie est etiam sit rutrum dui nostra, sem aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus, risus tortor non mauris turpis eget integer nibh dolor. Commodo venenatis ut molestie semper adipiscing amet cras, class donec sapien malesuada auctor sapien arcu inceptos, aenean consequat metus litora mattis vivamus.</p>\r\n\r\n<pre>\r\n<code class="language-php">protected function getUserByRecaller($recaller)\r\n{\r\n	if ($this-&gt;validRecaller($recaller) &amp;&amp; ! $this-&gt;tokenRetrievalAttempted)\r\n	{\r\n		$this-&gt;tokenRetrievalAttempted = true;\r\n\r\n		list($id, $token) = explode("|", $recaller, 2);\r\n\r\n		$this-&gt;viaRemember = ! is_null($user = $this-&gt;provider-&gt;retrieveByToken($id, $token));\r\n\r\n		return $user;\r\n	}\r\n}</code></pre>\r\n\r\n<p>Feugiat arcu adipiscing mauris primis ante ullamcorper ad nisi, lobortis arcu per orci malesuada blandit metus tortor, urna turpis consectetur porttitor egestas sed eleifend. Eget tincidunt pharetra varius tincidunt morbi malesuada elementum mi torquent mollis, eu lobortis curae purus amet vivamus amet nulla torquent, nibh eu diam aliquam pretium donec aliquam tempus lacus. Tempus feugiat lectus cras non velit mollis sit et integer, egestas habitant auctor integer sem at nam massa himenaeos, netus vel dapibus nibh malesuada leo fusce tortor. Sociosqu semper facilisis semper class tempus faucibus tristique duis eros, cubilia quisque habitasse aliquam fringilla orci non vel, laoreet dolor enim justo facilisis neque accumsan in.</p>\r\n\r\n<p>Ad venenatis hac per dictumst nulla ligula donec, mollis massa porttitor ullamcorper risus eu platea, fringilla habitasse suscipit pellentesque donec est. Habitant vehicula tempor ultrices placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque tellus, ante nostra euismod nec suspendisse sem curabitur elit malesuada lacus. Viverra sagittis sit ornare orci augue nullam adipiscing pulvinar libero aliquam vestibulum platea cursus pellentesque leo dui lectus, curabitur euismod ad erat curae non elit ultrices placerat netus metus feugiat non conubia fusce porttitor. Sociosqu diam commodo metus in himenaeos vitae aptent consequat luctus purus eleifend enim sollicitudin eleifend, porta malesuada ac class conubia condimentum mauris facilisis conubia quis scelerisque lacinia.</p>\r\n\r\n<p>Tempus nullam felis fusce ac potenti netus ornare semper molestie iaculis, fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod. Scelerisque torquent curae rhoncus sollicitudin tortor placerat aptent hac, nec posuere suscipit sed tortor neque urna hendrerit, vehicula duis litora tristique congue nec auctor. Felis libero ornare habitasse nec elit felis, inceptos tellus inceptos cubilia quis mattis, faucibus sem non odio fringilla. Class aliquam metus ipsum lorem luctus pharetra dictum vehicula, tempus in venenatis gravida ut gravida proin orci, quis sed platea mi quisque hendrerit semper.</p>\r\n', 0, 1, 2),
(3, '2016-05-01 14:44:43', '2016-05-01 14:44:43', 'Post 3', 'post-3', '<img alt="" src="/filemanager/userfiles/user2/rouge-shell.png" style="float:left; height:128px; width:128px" />', '<p>\nLorem ipsum quam ultrices consectetur ullamcorper tincidunt quisque, tellus ante nostra euismod nec suspendisse sem, curabitur elit malesuada lacus viverra sagittis. \nSit ornare orci augue nullam adipiscing pulvinar libero, aliquam vestibulum platea cursus pellentesque leo dui, lectus curabitur euismod ad erat curae. \nNon elit ultrices placerat netus metus feugiat non conubia, fusce porttitor sociosqu diam commodo metus in himenaeos, vitae aptent consequat luctus purus eleifend enim. \nSollicitudin eleifend porta malesuada ac class conubia condimentum mauris facilisis, conubia quis scelerisque lacinia tempus nullam felis fusce ac potenti, netus ornare semper molestie iaculis fermentum ornare curabitur. \n</p>\n<p>\nTincidunt imperdiet scelerisque imperdiet euismod scelerisque torquent curae, rhoncus sollicitudin tortor placerat aptent hac nec, posuere suscipit sed tortor neque urna. \nHendrerit vehicula duis litora tristique congue nec auctor felis libero ornare, habitasse nec elit felis inceptos tellus inceptos cubilia quis mattis faucibus, sem non odio fringilla class aliquam metus ipsum lorem. \nLuctus pharetra dictum vehicula tempus in venenatis gravida ut gravida proin orci quis, sed platea mi quisque hendrerit semper hendrerit facilisis ante sapien faucibus. \nLigula commodo vestibulum rutrum pretium varius sem aliquet himenaeos dolor, cursus nunc habitasse aliquam ut curabitur ipsum luctus, ut rutrum odio condimentum donec suscipit molestie est. \n</p>\n<p>\nEtiam sit rutrum dui nostra sem aliquet conubia nullam sollicitudin rhoncus, venenatis vivamus rhoncus netus risus tortor non mauris turpis, eget integer nibh dolor commodo venenatis ut molestie semper. \nAdipiscing amet cras class donec sapien malesuada auctor sapien arcu inceptos, aenean consequat metus litora mattis vivamus feugiat arcu adipiscing, mauris primis ante ullamcorper ad nisi lobortis arcu per. \nOrci malesuada blandit metus tortor urna turpis consectetur, porttitor egestas sed eleifend eget tincidunt pharetra, varius tincidunt morbi malesuada elementum mi. \nTorquent mollis eu lobortis curae purus amet vivamus amet nulla torquent nibh eu diam aliquam, pretium donec aliquam tempus lacus tempus feugiat lectus cras non velit mollis. \n</p>\n<p>\nSit et integer egestas habitant auctor integer sem, at nam massa himenaeos netus vel dapibus, nibh malesuada leo fusce tortor sociosqu. \nSemper facilisis semper class tempus faucibus tristique duis eros cubilia quisque, habitasse aliquam fringilla orci non vel laoreet dolor enim justo facilisis, neque accumsan in ad venenatis hac per dictumst nulla. \nLigula donec mollis massa porttitor ullamcorper risus eu, platea fringilla habitasse suscipit pellentesque donec est habitant, vehicula tempor ultrices placerat sociosqu ultrices. \nConsectetur ullamcorper tincidunt quisque tellus ante, nostra euismod nec suspendisse sem, curabitur elit malesuada lacus. \n</p>\n<p>\nViverra sagittis sit ornare orci augue nullam adipiscing pulvinar libero, aliquam vestibulum platea cursus pellentesque leo dui lectus curabitur, euismod ad erat curae non elit ultrices placerat. \nNetus metus feugiat non conubia fusce porttitor sociosqu diam, commodo metus in himenaeos vitae aptent consequat luctus, purus eleifend enim sollicitudin eleifend porta malesuada. \nAc class conubia condimentum mauris facilisis conubia quis scelerisque, lacinia tempus nullam felis fusce ac potenti netus ornare, semper molestie iaculis fermentum ornare curabitur tincidunt. \nImperdiet scelerisque imperdiet euismod scelerisque torquent curae rhoncus sollicitudin, tortor placerat aptent hac nec posuere suscipit, sed tortor neque urna hendrerit vehicula duis. \n</p>\n<p>\nLitora tristique congue nec auctor felis, libero ornare habitasse nec. \n</p>', 0, 1, 2),
(4, '2016-05-01 14:44:43', '2016-05-01 14:44:43', 'Post 4', 'post-4', '<img alt="" src="/filemanager/userfiles/user2/rouge-shyguy.png" style="float:left; height:128px; width:128px" />', '<p>\nLorem ipsum scelerisque himenaeos dolor cursus nunc habitasse aliquam ut curabitur, ipsum luctus ut rutrum odio condimentum donec suscipit molestie est, etiam sit rutrum dui nostra sem aliquet conubia nullam. \nSollicitudin rhoncus venenatis vivamus rhoncus netus risus tortor non mauris, turpis eget integer nibh dolor commodo venenatis ut molestie, semper adipiscing amet cras class donec sapien malesuada. \nAuctor sapien arcu inceptos aenean consequat metus litora mattis vivamus feugiat arcu, adipiscing mauris primis ante ullamcorper ad nisi lobortis arcu per, orci malesuada blandit metus tortor urna turpis consectetur porttitor egestas. \n</p>\n<p>\nSed eleifend eget tincidunt pharetra varius tincidunt morbi malesuada elementum mi torquent mollis eu, lobortis curae purus amet vivamus amet nulla torquent nibh eu diam aliquam. \nPretium donec aliquam tempus lacus tempus feugiat, lectus cras non velit mollis sit et, integer egestas habitant auctor integer. \nSem at nam massa himenaeos netus vel dapibus nibh malesuada leo, fusce tortor sociosqu semper facilisis semper class tempus faucibus tristique duis, eros cubilia quisque habitasse aliquam fringilla orci non vel. \nLaoreet dolor enim justo facilisis neque accumsan in ad venenatis hac per, dictumst nulla ligula donec mollis massa porttitor ullamcorper risus eu platea, fringilla habitasse suscipit pellentesque donec est habitant vehicula tempor ultrices. \n</p>\n<p>\nPlacerat sociosqu ultrices consectetur ullamcorper tincidunt quisque tellus ante nostra euismod, nec suspendisse sem curabitur elit malesuada lacus viverra sagittis sit, ornare orci augue nullam adipiscing pulvinar libero aliquam vestibulum. \nPlatea cursus pellentesque leo dui lectus curabitur euismod, ad erat curae non elit ultrices placerat netus, metus feugiat non conubia fusce porttitor. \nSociosqu diam commodo metus in himenaeos vitae aptent consequat luctus purus, eleifend enim sollicitudin eleifend porta malesuada ac class conubia condimentum, mauris facilisis conubia quis scelerisque lacinia tempus nullam felis. \nFusce ac potenti netus ornare semper molestie iaculis fermentum ornare curabitur tincidunt imperdiet, scelerisque imperdiet euismod scelerisque torquent curae rhoncus sollicitudin tortor placerat aptent. \n</p>\n<p>\nHac nec posuere suscipit sed tortor neque urna hendrerit vehicula duis, litora tristique congue nec auctor felis libero ornare habitasse nec, elit felis inceptos tellus inceptos cubilia quis mattis faucibus. \nSem non odio fringilla class aliquam metus ipsum lorem, luctus pharetra dictum vehicula tempus in. \nVenenatis gravida ut gravida proin orci quis sed platea mi quisque hendrerit, semper hendrerit facilisis ante sapien faucibus ligula commodo vestibulum rutrum pretium, varius sem aliquet himenaeos dolor cursus nunc habitasse aliquam ut. \nCurabitur ipsum luctus ut rutrum odio condimentum donec suscipit molestie est etiam, sit rutrum dui nostra sem aliquet conubia nullam sollicitudin rhoncus venenatis, vivamus rhoncus netus risus tortor non mauris turpis eget integer. \n</p>\n<p>\nNibh dolor commodo venenatis ut molestie semper adipiscing amet cras class donec, sapien malesuada auctor sapien arcu inceptos aenean consequat metus litora, mattis vivamus feugiat arcu adipiscing mauris primis ante ullamcorper ad. \nNisi lobortis arcu per orci malesuada blandit metus tortor urna, turpis consectetur porttitor egestas sed eleifend eget tincidunt pharetra varius, tincidunt morbi malesuada elementum mi torquent mollis eu. \nLobortis curae purus amet vivamus amet nulla torquent nibh, eu diam aliquam pretium donec aliquam tempus lacus tempus, feugiat lectus cras non velit mollis sit. \n</p>', 0, 1, 2),
(13, '2016-05-01 18:41:40', '2016-05-01 18:41:40', 'Mon beau bébé', '-', '<img alt="" src="/filemanager/userfiles/hMGf8xFd1g.jpg" style="float:left; height:128px; width:128px" />', 'Mon bébé chérie.', 0, 1, 5),
(14, '2016-05-01 23:29:59', '2016-05-01 23:29:59', 'News1', '-', '<img alt="" src="/filemanager/userfiles/7Fw05tjJ4B.png" style="float:left; height:128px; width:128px" />', 'The World Wide Web Consortium (W3C) was founded by Tim Berners-Lee after he left the European Organization for Nuclear Research (CERN) in October, 1994. It was founded at the Massachusetts Institute of Technology Laboratory for Computer Science (MIT/LCS) with support from the European Commission and the Defense Advanced Research Projects Agency (DARPA),[3] which had pioneered the Internet and its predecessor ARPANET.\r\n\r\nThe organization tries to foster compatibility and agreement among industry members in the adoption of new standards defined by the W3C. Incompatible versions of HTML are offered by different vendors, causing inconsistency in how web pages are displayed. The consortium tries to get all those vendors to implement a set of core principles and components which are chosen by the consortium.', 0, 1, 5),
(15, '2016-05-01 23:30:34', '2016-05-01 23:30:34', 'New2', '-', '<img alt="" src="/filemanager/userfiles/CXf3eFtCgx.png" style="float:left; height:128px; width:128px" />', 't was originally intended that CERN host the European branch of W3C; however, CERN wished to focus on particle physics, not information technology. In April 1995, the French Institute for Research in Computer Science and Automation (INRIA) became the European host of W3C, with Keio University becoming the Japanese branch in September 1996. Starting in 1997, W3C created regional offices around the world. As of September 2009, it had eighteen World Offices covering Australia, the Benelux countries (Netherlands, Luxembourg, and Belgium), Brazil, China, Finland, Germany, Austria, Greece, Hong Kong, Hungary, India, Israel, Italy, South Korea, Morocco, South Africa, Spain, Sweden, and the United Kingdom and Ireland.[4]\r\n\r\nIn October 2012, W3C convened a community of major web players and publishers to establish a MediaWiki wiki that seeks to document open web standards called the WebPlatform and WebPlatform Docs.', 0, 1, 5),
(16, '2016-05-01 23:31:06', '2016-05-01 23:31:06', 'News3', '-', '<img alt="" src="/filemanager/userfiles/eXXdFCvwxq.png" style="float:left; height:128px; width:128px" />', 'Sometimes, when a specification becomes too large, it is split into independent modules which can mature at their own pace. Subsequent editions of a module or specification are known as levels and are denoted by the first integer in the title (e.g. CSS3 = Level 3). Subsequent revisions on each level are denoted by an integer following a decimal point (e.g. CSS2.1 = Revision 1).\r\n\r\nThe W3C standard formation process is defined within the W3C process document, outlining four maturity levels through which each new standard or recommendation must progress', 0, 1, 5),
(17, '2016-05-01 23:32:22', '2016-05-01 23:32:22', 'News5', '-', '<img alt="" src="/filemanager/userfiles/R4iupTPq0n.png" style="float:left; height:128px; width:128px" />', 'A candidate recommendation is a version of a standard that is more mature than the WD. At this point, the group responsible for the standard is satisfied that the standard meets its goal. The purpose of the CR is to elicit aid from the development community as to how implementable the standard is.[5]\r\n\r\nThe standard document may change further, but at this point, significant features are mostly decided. The design of those features can still change due to feedback from implementors.[5]\r\n\r\nProposed recommendation (PR)[edit]\r\nA proposed recommendation is the version of a standard that has passed the prior two levels. The users of the standard provide input. At this stage, the document is submitted to the W3C Advisory Council for final approval.[5]', 0, 1, 5),
(18, '2016-05-01 23:33:09', '2016-05-01 23:33:09', 'News6', '-', '<img alt="" src="/filemanager/userfiles/q8M9NgF0q9.png" style="float:left; height:128px; width:128px" />', 'This is the most mature stage of development. At this point, the standard has undergone extensive review and testing, under both theoretical and practical conditions. The standard is now endorsed by the W3C, indicating its readiness for deployment to the public, and encouraging more widespread support among implementors and authors.[5]\r\n\r\nRecommendations can sometimes be implemented incorrectly, partially, or not at all, but many standards define two or more levels of conformance that developers must follow if they wish to label their product as W3C-compliant.[5]\r\n\r\nLater revisions[edit]\r\nA recommendation may be updated or extended by separately-published, non-technical errata or editor drafts until sufficient substantial edits accumulate for producing a new edition or level of the recommendation. Additionally, the W3C publishes various kinds of informative notes which are to be used as references.[5]', 0, 1, 5),
(19, '2016-05-01 23:35:18', '2016-05-01 23:35:18', 'news7', '-', '<img alt="" src="/filemanager/userfiles/9k57gcpL4q.png" style="float:left; height:128px; width:128px" />', 'The Consortium is jointly administered by the MIT Computer Science and Artificial Intelligence Laboratory (CSAIL, located in Stata Center[6]) in the USA, the European Research Consortium for Informatics and Mathematics (ERCIM) (in Sophia Antipolis, France), Keio University (in Japan) and Beihang University (in China).[7] The W3C also has World Offices in sixteen regions around the world. The W3C Offices work with their regional web communities to promote W3C technologies in local languages, broaden the W3C''s geographical base and encourage international participation in W3C Activities.[citation needed]\r\n\r\nThe W3C has a staff team of 70–80 worldwide as of 2015.[8] W3C is run by a management team which allocates resources and designs strategy, led by CEO Jeffrey Jaffe (as of March 2010),[9] former CTO of Novell. It also includes an advisory board which supports in strategy and legal matters and helps resolve conflicts.[10] The majority of standardization work is done by external experts in the W3C''s various working groups.', 0, 1, 5),
(20, '2016-05-01 23:35:51', '2016-05-01 23:35:51', 'News8', '-', '<img alt="" src="/filemanager/userfiles/rfD71fyxRb.png" style="float:left; height:128px; width:128px" />', 'The Consortium is governed by its membership. The list of members is available to the public.[2] Members include businesses, nonprofit organizations, universities, governmental entities, and individuals.[11]\r\n\r\nMembership requirements are transparent except for one requirement: An application for membership must be reviewed and approved by the W3C. Many guidelines and requirements are stated in detail, but there is no final guideline about the process or standards by which membership might be finally approved or denied.[12]\r\n\r\nThe cost of membership is given on a sliding scale, depending on the character of the organization applying and the country in which it is located.[13] Countries are categorized by the World Bank''s most recent grouping by GNI ("Gross National Income") per capita', 0, 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `post_tag`
--

CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 2),
(8, 3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2016-05-01 14:44:40', '2016-05-01 14:44:40'),
(2, 'Redactor', 'redac', '2016-05-01 14:44:40', '2016-05-01 14:44:40'),
(3, 'User', 'user', '2016-05-01 14:44:40', '2016-05-01 14:44:40');

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `tag`) VALUES
(1, '2016-05-01 14:44:42', '2016-05-01 14:44:42', 'Tag1'),
(2, '2016-05-01 14:44:42', '2016-05-01 14:44:42', 'Tag2'),
(3, '2016-05-01 14:44:42', '2016-05-01 14:44:42', 'Tag3'),
(4, '2016-05-01 14:44:42', '2016-05-01 14:44:42', 'Tag4');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role_id`, `seen`, `valid`, `confirmed`, `confirmation_code`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'GreatAdmin', 'admin@la.fr', '$2y$10$Y9Hmznang1Do3u.6ziLiBO.h..4k.RPxcHL.5caEU7k5j9BMFBBvW', 1, 1, 0, 1, NULL, '2016-05-01 14:44:41', '2016-05-01 14:44:41', NULL),
(2, 'GreatRedactor', 'redac@la.fr', '$2y$10$YRp6IBMPQ850/AupIYKv9unoV5Aqua3b/774C1t0hyK.3onjn5yve', 2, 1, 1, 1, NULL, '2016-05-01 14:44:41', '2016-05-01 14:44:41', NULL),
(3, 'Walker', 'walker@la.fr', '$2y$10$dgmsLGcbOjByR.sPO3KonOkpPyc.xeea45eQIRnJUksLXw5XYCqt2', 3, 0, 0, 1, NULL, '2016-05-01 14:44:41', '2016-05-01 14:44:41', NULL),
(4, 'Slacker', 'slacker@la.fr', '$2y$10$Gay7Stg/5Oj/Ebuh8JxiJuy0WxcVBxizhL/pGfPuQOxZPyAkmIokK', 3, 0, 0, 1, NULL, '2016-05-01 14:44:42', '2016-05-01 14:44:42', NULL),
(5, '', 'jskameni1@gmail.com', '$2y$10$fnnYxEfUrh7.UJ9/qjBaR.cyP2ptt9Bb8skWB6tKjmg5ywlP6YYRW', 2, 0, 0, 1, 'PIxYfUlkYTyB8OiSbUpZ3VQOHWhhxT', '2016-05-01 15:06:55', '2016-05-02 00:11:00', 'R05zRTzDuPXrmIzedQu7BjhDONptvMQhUplXuVuNyS1rYyqntxAzaCf0tsF8'),
(15, '', 'jskameni@gmail.com', '$2y$10$Wq/ZgMoNDMMelSTYPFeCgudhtOAPl31wOHqWz5JubWJPazDZQHJA2', 2, 0, 0, 1, 'W7b7seAIW0j8l1bt8ttMky5LGsByIz', '2016-05-02 02:43:03', '2016-05-02 02:44:52', 'fOBAONC2uhHC3jMXQW2sBebHprvpNL8VQ9FvOGxn2N2l2wZy0B3iaV4uuJCl');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`), ADD KEY `comments_user_id_foreign` (`user_id`), ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`), ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Index pour la table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`), ADD KEY `post_tag_post_id_foreign` (`post_id`), ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `tags_tag_unique` (`tag`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `post_tag`
--
ALTER TABLE `post_tag`
ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
