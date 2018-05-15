CREATE SCHEMA `KandT`
DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use KandT;
CREATE TABLE `page` (
   `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
   `title` VARCHAR (110) NOT NULL,
   `h1` VARCHAR (70) NOT NULL,
   `paragraphe` VARCHAR (3000) NOT NULL,
   `span-class` VARCHAR (400) NOT NULL,
   `span-text` VARCHAR (50) NOT NULL,
   `img-alt` VARCHAR (100) NOT NULL,
   `img-src` VARCHAR (2048) NOT NULL,
   `nav-title` VARCHAR (50) NOT NULL,
   `slug` VARCHAR (50) NOT NULL UNIQUE,
   PRIMARY KEY (`id`)
);
USE KandT;

INSERT INTO
   `page`
   (`id`, `title`, `h1`, `paragraphe`, `span-class`, `span-text`, `img-alt`, `img-src`, `nav-title`, `slug`)
VALUES
   (NULL, "Les Teletubbies", "Les Teletubbies", "C'est flippant, mais flippant.", "label-danger", "Danger", "Teletubbies", "teletubbies.jpg", "Les Teletubbies", "les-teletubbies"),
   (NULL, "Les Chatons!", "Les Chatons!", "C'est mignon.", "label-success", "Kawaiiii!", "Kittens", "three_kittens.jpg", "Les Chatons", "kittens"),
   (NULL, "Iron Maiden!", "Iron Maiden!", "C'est vieux.", "label-success", "SIX SIX SIX!!! the number of the beast!!", "Iron Maiden", "ironmaiden.jpg", "Iron Maiden", "iron-maiden"),
   (NULL, "Snorkies!", "Snorkies!", "Je connais pas.", "label-danger", "Vwala!", "Snorkies", "snorkies.jpg", "Snorkies", "snorkies")
;
SELECT
   `id`,
   `title`,
   `h1`,
   `paragraphe`,
   `span-class`,
   `span-text`,
   `img-alt`,
   `img-src`,
   `nav-title`,
   `slug`
FROM
   `page`
WHERE
   `slug` = "les-teletubbies"
;
DELETE FROM
`page`
WHERE
`id` = 1
;
UPDATE
   `page`
SET
   `title` = "Teletubbies"
WHERE
   `id` = 1
;
