-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 04 déc. 2023 à 09:46
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `monprojet_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Abonné');

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add image post', 7, 'add_imagepost'),
(26, 'Can change image post', 7, 'change_imagepost'),
(27, 'Can delete image post', 7, 'delete_imagepost'),
(28, 'Can view image post', 7, 'view_imagepost'),
(29, 'Can add follow', 8, 'add_follow'),
(30, 'Can change follow', 8, 'change_follow'),
(31, 'Can delete follow', 8, 'delete_follow'),
(32, 'Can view follow', 8, 'view_follow'),
(33, 'Can add contact', 9, 'add_contact'),
(34, 'Can change contact', 9, 'change_contact'),
(35, 'Can delete contact', 9, 'delete_contact'),
(36, 'Can view contact', 9, 'view_contact');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(9, 'monapp', 'contact'),
(6, 'monapp', 'customuser'),
(8, 'monapp', 'follow'),
(7, 'monapp', 'imagepost'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-27 21:28:26.915363'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-11-27 21:28:27.042912'),
(3, 'auth', '0001_initial', '2023-11-27 21:28:27.611155'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-11-27 21:28:27.776237'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-11-27 21:28:27.793125'),
(6, 'auth', '0004_alter_user_username_opts', '2023-11-27 21:28:27.811213'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-11-27 21:28:27.826563'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-11-27 21:28:27.832279'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-11-27 21:28:27.844762'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-11-27 21:28:27.856532'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-11-27 21:28:27.868079'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-11-27 21:28:27.894907'),
(13, 'auth', '0011_update_proxy_permissions', '2023-11-27 21:28:27.906385'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-11-27 21:28:27.917771'),
(15, 'monapp', '0001_initial', '2023-11-27 21:28:28.776295'),
(16, 'admin', '0001_initial', '2023-11-27 21:28:29.044620'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-11-27 21:28:29.064754'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-27 21:28:29.082579'),
(19, 'sessions', '0001_initial', '2023-11-27 21:28:29.155175'),
(20, 'monapp', '0002_alter_imagepost_image', '2023-11-29 00:14:02.704094'),
(21, 'monapp', '0003_follow', '2023-11-30 17:03:49.034162'),
(22, 'monapp', '0004_contact', '2023-12-01 17:05:28.812900');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0fm7d3uuo2von2yataxsfyrje3tu5mj7', 'e30:1r7kW4:a6tTjankMf1J5f1W0bN8IuOzQZQ33gx9qx3Mz8oU0tc', '2023-12-11 22:55:48.786988'),
('0gadscrsme2i0mvc4ko6c4nubu2x1xsd', 'e30:1r7kVT:6Y08DJjegWalX-0ulQNkP0sSmM1GRReUvd3gdbo-YH8', '2023-12-11 22:55:11.136194'),
('hkyamyn5e12hyr7ab7llnbbtzpp2gfs6', '.eJxVjMEOwiAQRP-FsyEIYV08evcbyC4LUjU0Ke2p8d9tkx70OPPezKoiLXONS89THERdlVen344pvXLbgTypPUadxjZPA-td0Qft-j5Kft8O9--gUq_b2hqfqVwcELMLBhjNlh0LgBTERD54Q4KUSyEhBwmhYLAWzwmCkPp8AQpcOQE:1r9t9X:m-JJGjGrd8uWXzVSNiPdejhqsfIh9G2qYfCIwcsk1ZY', '2023-12-04 20:33:23.909564'),
('hyl2chbvho1xcxxobafp5u68jzp0q1nq', 'e30:1r7jAz:gZtbyzqYW--9n8hzg2AEyzDdrGpfUsv8ruGlrioVFS8', '2023-12-11 21:29:57.687272'),
('jl8ar2u9g7donquotzydgawkvf2vn1vo', 'e30:1r7kWj:ZOjhLeLw8glpnOd7OqYKH0SzaD_8muszKKy5UA-04Kc', '2023-12-11 22:56:29.143900'),
('u0rmermwwp1hggwp2izjnq7oeayvc9pu', '.eJxVjMsOwiAQRf-FtSEC5VGX7vsNZAZmpGogKe3K-O_apAvd3nPOfYkI21ri1mmJcxYX4cTpd0NID6o7yHeotyZTq-syo9wVedAup5bpeT3cv4MCvXzrwQyKvWV0yqNyBB6T18jWMAEbcuekEzP6jNpbxyFkjYbUMPKIQaN4fwAA3jjS:1r9ulD:STeq0fGrvmI0onnyqoQx4gt1W7b37iMIS0F9kRQwYPI', '2023-12-04 22:16:23.391612'),
('z8rl387q7pwi9b6d4cul9r6jm6e86n7d', '.eJxVjMEOwiAQRP-FsyFLtxTw6L3fQLYsSNVAUtqT8d9tkx70NMm8N_MWnrY1-63Fxc8srgLF5bebKDxjOQA_qNyrDLWsyzzJQ5EnbXKsHF-30_07yNTyvtbOaARF0CU9ADI6VsDWRgWkXNCOLDvuCBLoPSP0ZlCYrIq9QxOC-HwBtEM24Q:1rA407:QBgHGsn4K2oES8FSYkirFPRD1O930kZCYHEoaLS6xnU', '2023-12-05 08:08:23.824259');

-- --------------------------------------------------------

--
-- Structure de la table `monapp_contact`
--

CREATE TABLE `monapp_contact` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `monapp_customuser`
--

CREATE TABLE `monapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(10) NOT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `monapp_customuser`
--

INSERT INTO `monapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `role`, `birth_date`) VALUES
(1, 'pbkdf2_sha256$600000$gliyWwco8BbvstFOlIQBPY$Snca0R/vl4nUoo2zY7BoW5WsCDOOV6bKUu0zBfluz/o=', '2023-12-03 22:03:19.881020', 0, 'ana', 'ANANI', 'MAWU', 'ala@yahoo.fr', 0, 1, '2023-11-27 21:29:56.783074', 'subscriber', '1988-03-03'),
(2, 'pbkdf2_sha256$600000$98ZR1DYahl3g8NxiEfGmzB$ad7HCBQuFBMzPOH7k0yuNa6an9dcL23wIgqGlGi6w1Y=', '2023-12-03 19:39:07.597935', 0, 'anascovitch', 'anascolm', 'kvk', 'anani@yahoo.fr', 0, 1, '2023-11-27 21:45:55.600447', 'subscriber', '1988-01-01'),
(3, 'pbkdf2_sha256$600000$r93j9Kgz5ZQPztriAo3G3E$wK5LmC5D8b7EyZ72mmyBpaDEGRMwnK39VI5WTJV/EDU=', '2023-12-04 08:08:23.810887', 1, 'root', '', '', 'anasco88@gmail.com', 1, 1, '2023-11-29 19:38:35.076989', 'subscriber', NULL),
(4, 'pbkdf2_sha256$600000$h2hcGrwO1xe3HeSR6jWl77$8K64DJJyw1CpwzDHz+cV4Cz2i64+67i6IPMVRnQ1tfI=', '2023-12-03 19:02:24.068295', 0, 'maella', '', '', '', 0, 1, '2023-12-03 18:21:33.541825', 'subscriber', '1988-01-01'),
(5, 'pbkdf2_sha256$600000$bQ8RW24k8faVF1QKlo59iv$mtUyLkKPUCMEB2fO+dCrE7//xVyRqP1sIHOz3H1NYJA=', '2023-12-04 08:11:59.357337', 0, 'joanna', '', '', '', 0, 1, '2023-12-03 20:01:30.100732', 'creator', '1988-01-01'),
(6, 'pbkdf2_sha256$600000$edbkacuP7X4wmwBb7zjc6k$+qEVZdOH//ZXKYKlg/M5SXtIZJ7HGuzXuXnaODtReO4=', '2023-12-04 08:12:11.449458', 0, 'ariella', '', '', '', 0, 1, '2023-12-03 20:05:45.109787', 'subscriber', '1988-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `monapp_customuser_groups`
--

CREATE TABLE `monapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `monapp_customuser_groups`
--

INSERT INTO `monapp_customuser_groups` (`id`, `customuser_id`, `group_id`) VALUES
(1, 2, 1),
(2, 4, 1),
(3, 5, 1),
(4, 6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `monapp_customuser_user_permissions`
--

CREATE TABLE `monapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `monapp_follow`
--

CREATE TABLE `monapp_follow` (
  `id` bigint(20) NOT NULL,
  `date_followed` datetime(6) NOT NULL,
  `followed_id` bigint(20) NOT NULL,
  `follower_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `monapp_follow`
--

INSERT INTO `monapp_follow` (`id`, `date_followed`, `followed_id`, `follower_id`) VALUES
(1, '2023-12-03 22:16:42.522853', 5, 6),
(2, '2023-12-03 22:27:40.958623', 2, 6),
(3, '2023-12-03 22:39:24.209839', 1, 6),
(4, '2023-12-03 23:08:41.331727', 2, 5),
(5, '2023-12-04 08:07:47.059123', 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `monapp_imagepost`
--

CREATE TABLE `monapp_imagepost` (
  `id` bigint(20) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `date_creation` datetime(6) NOT NULL,
  `auteur_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `monapp_imagepost`
--

INSERT INTO `monapp_imagepost` (`id`, `titre`, `description`, `image`, `date_creation`, `auteur_id`) VALUES
(6, '1', '&&&', 'images/images4_gGyytRT.jpeg', '2023-11-29 23:38:28.358611', 1),
(7, '2', 'LETS GO', 'images/3_7WO1KhS.jpeg', '2023-11-29 23:38:54.046742', 1),
(8, 'alapgg', 'amusons nous', 'images/Sans_titre_dpROeGC.jpeg', '2023-11-29 23:40:08.070279', 2),
(9, '4', 'amour dans le bateau', 'images/Sans_titre2.jpeg', '2023-11-29 23:40:43.031271', 2),
(10, 'journal', 'NEWS reel', 'images/templatemo_img_2.jpg', '2023-12-03 21:39:23.074956', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_monapp_customuser_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `monapp_contact`
--
ALTER TABLE `monapp_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `monapp_customuser`
--
ALTER TABLE `monapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `monapp_customuser_groups`
--
ALTER TABLE `monapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `monapp_customuser_groups_customuser_id_group_id_1cd74d06_uniq` (`customuser_id`,`group_id`),
  ADD KEY `monapp_customuser_groups_group_id_94664b07_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `monapp_customuser_user_permissions`
--
ALTER TABLE `monapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `monapp_customuser_user_p_customuser_id_permission_35dead43_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `monapp_customuser_us_permission_id_330cc36b_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `monapp_follow`
--
ALTER TABLE `monapp_follow`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `monapp_follow_follower_id_followed_id_582060fc_uniq` (`follower_id`,`followed_id`),
  ADD KEY `monapp_follow_followed_id_f9dab1f8_fk_monapp_customuser_id` (`followed_id`);

--
-- Index pour la table `monapp_imagepost`
--
ALTER TABLE `monapp_imagepost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monapp_imagepost_auteur_id_448ecd82_fk_monapp_customuser_id` (`auteur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `monapp_contact`
--
ALTER TABLE `monapp_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `monapp_customuser`
--
ALTER TABLE `monapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `monapp_customuser_groups`
--
ALTER TABLE `monapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `monapp_customuser_user_permissions`
--
ALTER TABLE `monapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `monapp_follow`
--
ALTER TABLE `monapp_follow`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `monapp_imagepost`
--
ALTER TABLE `monapp_imagepost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_monapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `monapp_customuser` (`id`);

--
-- Contraintes pour la table `monapp_customuser_groups`
--
ALTER TABLE `monapp_customuser_groups`
  ADD CONSTRAINT `monapp_customuser_gr_customuser_id_d7e43e41_fk_monapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `monapp_customuser` (`id`),
  ADD CONSTRAINT `monapp_customuser_groups_group_id_94664b07_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `monapp_customuser_user_permissions`
--
ALTER TABLE `monapp_customuser_user_permissions`
  ADD CONSTRAINT `monapp_customuser_us_customuser_id_cc331cd5_fk_monapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `monapp_customuser` (`id`),
  ADD CONSTRAINT `monapp_customuser_us_permission_id_330cc36b_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Contraintes pour la table `monapp_follow`
--
ALTER TABLE `monapp_follow`
  ADD CONSTRAINT `monapp_follow_followed_id_f9dab1f8_fk_monapp_customuser_id` FOREIGN KEY (`followed_id`) REFERENCES `monapp_customuser` (`id`),
  ADD CONSTRAINT `monapp_follow_follower_id_5838e331_fk_monapp_customuser_id` FOREIGN KEY (`follower_id`) REFERENCES `monapp_customuser` (`id`);

--
-- Contraintes pour la table `monapp_imagepost`
--
ALTER TABLE `monapp_imagepost`
  ADD CONSTRAINT `monapp_imagepost_auteur_id_448ecd82_fk_monapp_customuser_id` FOREIGN KEY (`auteur_id`) REFERENCES `monapp_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
