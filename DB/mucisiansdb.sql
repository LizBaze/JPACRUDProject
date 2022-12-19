-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema musiciansdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `musiciansdb` ;

-- -----------------------------------------------------
-- Schema musiciansdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `musiciansdb` DEFAULT CHARACTER SET utf8 ;
USE `musiciansdb` ;

-- -----------------------------------------------------
-- Table `musician`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `musician` ;

CREATE TABLE IF NOT EXISTS `musician` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `genre` VARCHAR(100) NULL,
  `home` VARCHAR(45) NULL,
  `image_url` VARCHAR(2000) NULL,
  `active` TINYINT NULL,
  `about` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS musiciansuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'musiciansuser'@'localhost' IDENTIFIED BY 'musiciansuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'musiciansuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `musician`
-- -----------------------------------------------------
START TRANSACTION;
USE `musiciansdb`;
INSERT INTO `musician` (`id`, `name`, `genre`, `home`, `image_url`, `active`, `about`) VALUES (1, 'Watsky', 'Hip Hop', 'Santa Cruz, California', 'http://riffmagazine.com/wp-content/uploads/2018/10/37925413_503863453406903_8236608205451427840_n.jpg', 1, 'George Virden Watsky (born September 15, 1986), better known mononymously as Watsky, is an American rapper, singer, musician, songwriter, record producer, poet, author, and illustrator.\nWatsky broke out as a rapper with his viral video \"Pale kid raps fast\" in 2011, which featured his trademark chopping style. He has released six studio albums: Watsky (2009), Cardboard Castles (2013), All You Can Do (2014), x Infinity (2016), Complaint (2019), and Placement (2020). He performs live shows with a backing band called Créme Fraîche. He is also known for his appearances in episodes of Epic Rap Battles of History, and as an author following the publication of How to Ruin Everything in 2016.');
INSERT INTO `musician` (`id`, `name`, `genre`, `home`, `image_url`, `active`, `about`) VALUES (2, 'Glass Animals', 'Indie', 'Oxford, England', 'https://thissongissick.com/wp-content/uploads/2021/07/190287868_328250315429877_1688845532463169437_n-750x417.jpg', 1, 'Glass Animals are an English indie rock band formed in Oxford in 2010. Founded and led by singer, songwriter, and producer Dave Bayley, the group also features his childhood friends Joe Seaward, Ed Irwin-Singer and Drew MacFarlane. Bayley wrote and produced all three Glass Animals albums. Bayley spent his childhood in Massachusetts and Texas before relocating to Oxford, where he met the other band members at school. Their first album, Zaba (2014), spawned the single \"Gooey\", which was eventually certified platinum in the United States. Their second full album, How to Be a Human Being, received positive reviews and won in two categories at the 2018 MPG Awards for UK Album of the Year and Self Producing Artist of the Year, as well as a spot on the Mercury Prize shortlist. The third, Dreamland, peaked at number two on the UK Albums Chart and number seven on the US Billboard 200.');
INSERT INTO `musician` (`id`, `name`, `genre`, `home`, `image_url`, `active`, `about`) VALUES (3, 'Arlo Parks', 'Indie Pop', 'London, England', 'https://acltv.com/wp-content/uploads/2022/04/002_ACLArloParks041122byScottNewton_SNP2502.jpg', 1, 'Anaïs Oluwatoyin Estelle Marinho (born 9 August 2000), known professionally as Arlo Parks, is a British singer and songwriter. Her debut studio album, Collapsed in Sunbeams, was released in 2021 to critical acclaim and peaked at number three on the UK Albums Chart. It earned her nominations for Album of the Year, Best New Artist and Best British Female Solo Artist at the 2021 Brit Awards. It won the 2021 Hyundai Mercury Prize for Best Album.');
INSERT INTO `musician` (`id`, `name`, `genre`, `home`, `image_url`, `active`, `about`) VALUES (4, 'Taylor Swift', 'Pop', 'West Reading, Pennsylvania', 'https://variety.com/wp-content/uploads/2020/01/taylor-swift-variety-cover-5-16x9-1000.jpg?w=681&h=383&crop=1&resize=681%2C383', 1, 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. Her discography spans multiple genres, and her narrative songwriting—often inspired by her personal life—has received critical praise and media coverage. Born in West Reading, Pennsylvania, Swift moved to Nashville at age 14 to become a country artist. She signed a songwriting deal with Sony/ATV Music Publishing in 2004 and a recording contract with Big Machine Records in 2005. Her 2006 self-titled debut album made her the first female country singer to write or co-write a U.S. platinum-certified album entirely.');
INSERT INTO `musician` (`id`, `name`, `genre`, `home`, `image_url`, `active`, `about`) VALUES (5, 'Slothrust', 'Alt Rock', 'Boston, MA', 'https://static.stereogum.com/uploads/2018/08/Slothrust-Film-36-1535589580-scaled.jpg', 1, 'Slothrust (pronounced sloth-rust, IPA: [\'slɔθ.rʌst])  is an American alternative rock band from Boston, Massachusetts, formed in 2010. Slothrust consists of Leah Wellbaum (vocals, guitar) and Will Gorin (drums). Wellbaum and Gorin first began collaborating as students at Sarah Lawrence College. After performing in various school groups, the two joined to create music with a \"heavier\" sound. \nThe name Slothrust came together as a combination of Wellbaum\'s former project \"Slothbox\" and \"rust\" to signify time passing. ');
INSERT INTO `musician` (`id`, `name`, `genre`, `home`, `image_url`, `active`, `about`) VALUES (6, 'CHVRCHES', 'Pop', 'Glasgow, Scotland', 'https://img.apmcdn.org/4ab176e6b8cfe4e86fd5ad0bfdf480d0da86870b/uncropped/dded9f-20150921-chvrches.jpg', 1, 'Chvrches (stylised CHVRCHΞS and pronounced \"Churches\") are a Scottish pop band from Glasgow, formed in September 2011. The band consists of Lauren Mayberry, Iain Cook, Martin Doherty and, unofficially since 2018, Jonny Scott. Mostly deriving from the synth-pop genre, Chvrches also incorporate indietronica, indie pop, and electronic dance into their sound.');
INSERT INTO `musician` (`id`, `name`, `genre`, `home`, `image_url`, `active`, `about`) VALUES (7, 'Avenged Sevenfold', 'Heavy Metal', 'Huntington Beach, California', 'https://upload.wikimedia.org/wikipedia/commons/c/ca/Avenged_Sevenfold_2.jpg', 1, 'Avenged Sevenfold (abbreviated as A7X) is an American heavy metal band from Huntington Beach, California, formed in 1999. The band\'s current lineup consists of lead vocalist M. Shadows, rhythm guitarist and backing vocalist Zacky Vengeance, lead guitarist and backing vocalist Synyster Gates, bassist and backing vocalist Johnny Christ, and drummer Brooks Wackerman.');
INSERT INTO `musician` (`id`, `name`, `genre`, `home`, `image_url`, `active`, `about`) VALUES (8, 'Metallica', 'Heavy Metal', 'Los Angeles, California', 'https://3.bp.blogspot.com/-TDESeZg1WqE/XC5hnfkorII/AAAAAAAAxVA/pYHzKgXv9J8JP-fqj3DBxQN8Un4i7XjJgCLcBGAs/s1600/Metallica.Pittsburgh.James.1018-18.jpg', 1, 'Metallica is an American heavy metal band. The band was formed in 1981 in Los Angeles by vocalist/guitarist James Hetfield and drummer Lars Ulrich, and has been based in San Francisco for most of its career. The band\'s fast tempos, instrumentals and aggressive musicianship made them one of the founding \"big four\" bands of thrash metal, alongside Megadeth, Anthrax and Slayer. Metallica\'s current lineup comprises founding members and primary songwriters Hetfield and Ulrich, longtime lead guitarist Kirk Hammett and bassist Robert Trujillo. Guitarist Dave Mustaine, who formed Megadeth after being fired from the band, and bassists Ron McGovney, Cliff Burton and Jason Newsted are former members of the band.');
INSERT INTO `musician` (`id`, `name`, `genre`, `home`, `image_url`, `active`, `about`) VALUES (9, 'Parker Millsap', 'Americana', 'Purcell, Oklahoma', 'https://media.npr.org/assets/img/2016/02/25/artist-photo_wide-c0bffcf89175ad35f73d21855fcda599616023c7-s1100-c50.jpg', 1, 'Parker Millsap is an American singer-songwriter and multi-instrumentalist from Purcell, Oklahoma, playing a blend of blues, country, rock, Americana, and folk music. Named one of Americana Music Association\'s 2014 Emerging Artists of the Year after the release of his eponymous album, Millsap garnered attention with his song \"Truck Stop Gospel\", which has been featured on NPR\'s music program The Record. Playing with childhood friend Michael Rose on bass and Daniel Foulks on the fiddle, Millsap\'s musical style has drawn comparisons to early Elvis Presley. In addition to singing, he plays guitar, harmonica and piano.\nHe attributes his musical influence to growing up in a Pentecostal Church and listening to blues with his parents.');

COMMIT;

