IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('drone'))
BEGIN;
    DROP TABLE [drone];
END;
GO

CREATE TABLE [drone] (
    [droneID] INTEGER NOT NULL IDENTITY(1, 1),
    [name] VARCHAR(255) NULL,
    [nationality] VARCHAR(100) NULL,
    [address] VARCHAR(255) NULL,
    [head_office] VARCHAR(255) NULL,
    [zip] VARCHAR(10) NULL,
    PRIMARY KEY ([droneID])
);
GO

INSERT INTO drone([name],[nationality],[address],[head_office],[zip]) VALUES('Velit Dui Semper Associates','Nepal','3157 Augue Avenue','Kędzierzyn-Koźle','370200'),('Erat Volutpat Nulla Inc.','Bahamas','Ap #564-7164 Et Ave','Lanark','19772'),('Diam Consulting','Nigeria','Ap #765-3809 Lectus. St.','Serang','132912'),('Sociis Natoque PC','Marshall Islands','Ap #116-1226 Suspendisse Road','Belgaum','76782'),('Diam PC','Tonga','888-3615 Feugiat St.','Milena','94-373'),('Eget Venenatis Corporation','Tokelau','P.O. Box 710, 6239 Amet, Rd.','Enkhuizen','31798'),('Varius Orci Inc.','Guinea','4607 Nec, Av.','Hoyerswerda','194892'),('Laoreet Consulting','Angola','544-6694 Sem Road','Delmenhorst','09983'),('Tincidunt Pede Industries','Bahamas','Ap #669-9163 Vivamus Road','Driekapellen','15133'),('Tristique Institute','Kuwait','Ap #699-2518 Cursus. Road','Lachine','819146');
INSERT INTO drone([name],[nationality],[address],[head_office],[zip]) VALUES('Ultrices Vivamus Institute','Turks and Caicos Islands','4185 Eu St.','Kilsyth','932053'),('Lorem Inc.','Algeria','P.O. Box 622, 510 Nam Road','St. Veit an der Glan','29-109'),('Molestie Pharetra Nibh Ltd','Albania','P.O. Box 811, 7137 Nisi Rd.','Ilhéus','7336'),('In Limited','Finland','P.O. Box 844, 8675 Posuere Street','Colchane','47603-390'),('Fringilla PC','Cook Islands','P.O. Box 438, 9390 Odio. Ave','Ichalkaranji','30607'),('Quis Massa Corporation','Indonesia','5024 Purus St.','Merdorp','954520'),('Nunc Mauris Institute','Nauru','Ap #456-7236 Imperdiet Rd.','Magnitogorsk','77-138'),('Non Lacinia At Foundation','Benin','829-4863 Blandit. Rd.','North Las Vegas','62449'),('Mollis Lectus Foundation','Montenegro','Ap #697-6330 Ipsum Street','Värnamo','10402'),('Ipsum Suspendisse Foundation','Qatar','1574 Interdum Ave','Herne','40815');
INSERT INTO drone([name],[nationality],[address],[head_office],[zip]) VALUES('Tempor Bibendum Industries','Andorra','460-1108 Dis St.','Romford','25629'),('Gravida Inc.','Tokelau','Ap #379-3398 Tincidunt Road','San Giorgio Albanese','21946'),('Eleifend Institute','Mali','Ap #745-2217 Dolor Rd.','North Dum Dum','57036'),('Eu Dolor Egestas LLP','Macedonia','421-4625 Ipsum. St.','Cabo de Santo Agostinho','23289'),('Turpis Consulting','Armenia','816-3700 Lorem, Ave','Valtournenche','7604'),('Id Erat Consulting','Faroe Islands','1356 Amet Rd.','Castanhal','6982 RI'),('Enim Company','Somalia','P.O. Box 975, 856 Integer Street','Termes','81041-39472'),('Cras Interdum Corporation','Curaçao','P.O. Box 393, 1363 Odio. Street','San Zenone degli Ezzelini','0625'),('Senectus Et Netus Ltd','Uganda','835-4907 Nisi. Rd.','Monclova','711074'),('Non Nisi Corp.','Palau','266-9341 Nec, Rd.','Chía','1106 HH');
INSERT INTO drone([name],[nationality],[address],[head_office],[zip]) VALUES('Ut PC','Kuwait','P.O. Box 992, 9285 Non, Rd.','Kendari','96537'),('Mauris Id Sapien Associates','Martinique','7211 Tellus Road','Westmount','OQ0 5BF'),('Metus Urna Convallis Limited','Viet Nam','Ap #674-4324 Dui Road','Surendranagar','N4 6AB'),('Mauris Ltd','Madagascar','Ap #940-6648 Mauris. Rd.','Tasikmalaya','Z7204'),('Erat Industries','Lesotho','609 Fusce Road','Zhukovka','PH0O 1EX'),('Nibh Dolor Limited','Armenia','P.O. Box 553, 7989 In Road','Nemoli','57388'),('Bibendum Sed Est Consulting','Ghana','641-1778 Curabitur Road','Abbotsford','45515-55893'),('Metus Aenean Sed Inc.','Venezuela','P.O. Box 345, 3466 Nunc St.','Cobourg','35320-756'),('Faucibus Industries','Romania','8725 Orci Rd.','Slough','54036'),('Ut Nulla Company','Åland Islands','432-7641 Libero St.','Moulins','310783');
INSERT INTO drone([name],[nationality],[address],[head_office],[zip]) VALUES('Massa Rutrum Magna Associates','Senegal','P.O. Box 556, 4223 Sagittis Rd.','Oklahoma City','105717'),('Dictum Institute','Mauritius','Ap #902-8925 Libero. Street','Chennai','8455'),('Integer Vitae Nibh Industries','Oman','Ap #478-120 Aliquam Street','Schleswig','657975'),('Tempor Est Institute','Moldova','P.O. Box 357, 8694 Ante, Road','Valpelline','3310'),('Fringilla Purus Mauris Foundation','Ireland','Ap #357-9057 Aliquet Avenue','Linton','30600-36725'),('Etiam Ligula Consulting','Austria','187-3341 Vitae Street','Dubuisson','68452'),('Egestas Institute','Bhutan','Ap #931-8640 Aliquam Rd.','Dunfermline','84969'),('Sem Mollis Dui Ltd','Cocos (Keeling) Islands','496-5488 Enim, Rd.','Catacaos','68672'),('Tristique Aliquet Corp.','Nigeria','2619 A, Street','Nijkerk','91023'),('Sit Amet Corp.','Madagascar','597-7101 Cras Ave','Lebu','8068');
INSERT INTO drone([name],[nationality],[address],[head_office],[zip]) VALUES('Duis Company','Uzbekistan','P.O. Box 277, 3284 Vulputate, Rd.','Nicolosi','70910'),('Ipsum Institute','French Guiana','P.O. Box 746, 6715 Aenean Ave','Fort Worth','5042'),('Lobortis Risus Company','Christmas Island','8752 Semper Rd.','La Baie','1814'),('Erat Company','Mongolia','5022 Eros Rd.','Annapolis Royal','57237'),('Vitae Purus Gravida LLC','Reunion','P.O. Box 416, 3587 Non Rd.','Bankura','532592'),('Ultrices Posuere Incorporated','Wallis and Futuna','Ap #163-5433 A St.','Ourense','Z2366'),('Lobortis Tellus Justo Foundation','Kazakhstan','884-8435 Cras Rd.','Hastings','91395'),('Feugiat Non Inc.','Nepal','P.O. Box 874, 4979 Pellentesque Rd.','Anyang','T70 5QA'),('Libero Est Congue Incorporated','American Samoa','Ap #716-9671 Amet St.','Inuvik','43496'),('Magna PC','Denmark','Ap #576-6669 Aliquam St.','Whittlesey','40957');
INSERT INTO drone([name],[nationality],[address],[head_office],[zip]) VALUES('Nulla Aliquet LLC','Libya','P.O. Box 779, 6377 Mauris Ave','Joliet','03-455'),('Erat Vivamus Nisi Limited','Bonaire, Sint Eustatius and Saba','7996 Aliquam Rd.','Orekhovo-Zuyevo','T7P 8GP'),('In Cursus Associates','Monaco','802-2664 Dictum Ave','Ripalta Guerina','79830'),('Dolor Vitae Incorporated','Argentina','P.O. Box 637, 872 Et Rd.','Roux','83753-792'),('Aptent Taciti Sociosqu Limited','French Guiana','Ap #268-4320 Nulla Ave','Heusden','2896'),('Ac Mattis Institute','South Sudan','8224 Hymenaeos. St.','Buin','71216-161'),('Gravida PC','Monaco','4181 Urna, Rd.','Ferlach','5269'),('Amet Consectetuer Adipiscing Industries','Bouvet Island','5037 Ac, Ave','Rocca Massima','163953'),('Sit Amet Industries','United Arab Emirates','Ap #629-4065 Cursus Avenue','Anyang','210846'),('Donec Porttitor Tellus PC','Spain','782-3841 Sed St.','Chiari','20820');
INSERT INTO drone([name],[nationality],[address],[head_office],[zip]) VALUES('Et Eros Proin Industries','Holy See (Vatican City State)','7897 Magnis Road','Bonnert','E6E 3A6'),('Aptent Taciti Sociosqu PC','Comoros','443-812 Dui St.','Gaspé','45068'),('Aenean Inc.','Togo','Ap #618-2508 Enim. Av.','Goes','89351'),('Pede Nunc Ltd','France','Ap #377-4192 Phasellus Rd.','Puyehue','B9E 5X7'),('Nam Nulla Magna Corporation','El Salvador','Ap #711-658 Nec, St.','Swabi','78722'),('Ullamcorper Eu Euismod Associates','Gibraltar','5812 Vitae Road','Helena','L1R 2R1'),('In Felis Institute','Sri Lanka','P.O. Box 395, 4927 Sed, St.','Perchtoldsdorf','21152'),('Imperdiet Ullamcorper Duis Corporation','Argentina','4514 Leo, Ave','Opoeteren','40878-35768'),('Id Enim Curabitur PC','Anguilla','Ap #417-4370 Phasellus Av.','Market Drayton','56054'),('Sed Eu Associates','Barbados','602-1623 Vehicula Avenue','Fauvillers','8378');
INSERT INTO drone([name],[nationality],[address],[head_office],[zip]) VALUES('Nonummy Ipsum Non LLC','Barbados','4874 Erat, Street','Bearberry','385275'),('Aliquam Arcu Inc.','South Georgia and The South Sandwich Islands','2763 Risus. Ave','Outremont','DB9 7IW'),('In Condimentum Donec Incorporated','Luxembourg','155-6617 Dapibus Road','Assiniboia','92921-94143'),('Ipsum Corporation','Lithuania','330-3761 Class Ave','Salzburg','41044'),('Lacus Vestibulum Incorporated','Marshall Islands','9535 Consectetuer Ave','Akron','4239'),('Molestie Orci Associates','Zambia','541-8348 Cubilia Road','Lo Prado','6111'),('Ut Incorporated','Tonga','954 Ante Avenue','Melbourne','289973'),('Donec Felis Incorporated','Lithuania','5261 Iaculis Road','Maranguape','12595'),('Ac Turpis Ltd','Costa Rica','475-8345 At St.','Bannu','54874'),('Vivamus Molestie Dapibus LLC','Nepal','4131 Nibh. Ave','Delmenhorst','9926');
INSERT INTO drone([name],[nationality],[address],[head_office],[zip]) VALUES('Eu Metus In Incorporated','Aruba','Ap #933-9903 Eros Rd.','Sant''Agapito','57092'),('Non Sollicitudin A LLP','Ukraine','P.O. Box 733, 3145 Ipsum St.','Sankt Ingbert','7947'),('Ornare Lectus Justo Industries','Tajikistan','251-7937 Curabitur Rd.','Itter','Z5984'),('In Felis Company','Palau','142-524 Mi, Rd.','Ancud','44181'),('Mollis Nec Ltd','Sint Maarten','Ap #809-7426 Quam Street','Wittenberg','95234-88088'),('Nec Corp.','Puerto Rico','P.O. Box 778, 6513 Ante Avenue','Colorado Springs','39783-279'),('Ut Semper Pretium Consulting','San Marino','9270 Ac St.','Springfield','Z5029'),('Aliquet Corporation','Bulgaria','Ap #587-8130 Tincidunt St.','Villach','13659'),('Metus Associates','Antigua and Barbuda','7743 Enim Road','Telde','96053'),('Metus PC','Andorra','4747 Gravida Av.','West Ham','39012');
