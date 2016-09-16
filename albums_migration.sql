USE codeup_test;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    genre VARCHAR(50) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    name  VARCHAR(255) NOT NULL,
    number_of_discs INT(2) NULL,
    release_date YEAR(4) NOT NULL,
    label VARCHAR(50) NOT NULL,
    sales FLOAT,
    ASIN_ VARCHAR(20) NOT NULL,
    MP3	CHAR(3) NOT NULL,
    AudioCD VARCHAR(3) NOT NULL,
    Vinyl CHAR(3) NOT NULL,
    top_single VARCHAR(50) NOT NULL,
    reco_you_may_like VARCHAR(255) NOT NULL,
    info TEXT NULL,
    UPC_number VARCHAR(50) NULL,
    PRIMARY KEY (id)
);