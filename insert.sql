BEGIN TRANSACTION clients;

INSERT INTO clients VALUES('Shelbie','Copeland','shelbie.copeland@gmail.com','948372612');
INSERT INTO clients VALUES('Carolyn','Espinosa','itscarolynespinosa@gmail.com','342564736');
INSERT INTO clients VALUES('Caspian','Ward','ward.caspian@protonmail.com','518276875');
INSERT INTO clients VALUES('Judith','Langley','judith.langley98@gmail.com','567873980');
INSERT INTO clients VALUES('Cian','Head','headcian123@gmail.com','434125754');
INSERT INTO clients VALUES('Nazia','Duncan','naziamaxduncan@gmail.com','573628571');
INSERT INTO clients VALUES('Phoenix','Fitzgerald','yesimfitzgerald@protonmail.com','567826472');
INSERT INTO clients VALUES('Rocco','Burns','burns.rocco.1995@gmail.com','321493827');
INSERT INTO clients VALUES('Stan','Devine','stanmarkdevin@gmail.com','473658471');
INSERT INTO clients VALUES('Charlton','Cowan','charlton.cowan92@gmail.com','660711231');

COMMIT TRANSACTION clients;

BEGIN TRANSACTION clients_info;

INSERT INTO clients_info VALUES(3,'2068 Spruce Drive, Portland, Pennsylvania','family friendly');
INSERT INTO clients_info VALUES(2,'4440 Womdomg Way, Providence, Rhode Island','kids only');
INSERT INTO clients_info VALUES(6,'4439 Cabell Avenue, Arlington, Virginia','adults only');
INSERT INTO clients_info VALUES(7,'2558 Sunrise Road, Henderson, Nevada','adults only');
INSERT INTO clients_info VALUES(10,'2452 Fulton Street, Wheeling, West Virginia','family friendly');

COMMIT TRANSACTION clients_info;

BEGIN TRANSACTION employees;

INSERT INTO employees VALUES('Miley','Cooper','NL33INGB6548268733','1641 Maple Avenue, Cottonwood, Idaho');
INSERT INTO employees VALUES('Spencer','Hodgson','NL23ABNA9739243436','3072 Oliver Street, Arlington, Texas');
INSERT INTO employees VALUES('Sofija','Dunne','NL22RABO3403751775','40 Hiddenview Drive, Cleveland, Ohio');
INSERT INTO employees VALUES('Herbert','Travis','NL93ABNA6055981262','759 Wilmar Farm Road, Reston, Maryland');
INSERT INTO employees VALUES('Mya','Jones','NL27ABNA8533425791','3385 Sycamore Road, Roseburg, Oregon');
INSERT INTO employees VALUES('Raja','Doherty','NL82INGB4787393871','939 Hartway Street, Reeder, South Dakota');
INSERT INTO employees VALUES('Tevin','Murray','NL12RABO5804762982','2527 Bridge Avenue, Lafayette, Louisiana');
INSERT INTO employees VALUES('Eshaal','Alford','NL90INGB4717095111','4802 Elliot Avenue, Seattle, Washington');
INSERT INTO employees VALUES('Nazia','Hernandez','NL11INGB9392362188','1929 Spinnaker Lane, Joliet, Illinois');
INSERT INTO employees VALUES('Ifan','Lang','NL44INGB9932384941','2963 Lincoln Street, Princeton, New Jersey');


COMMIT TRANSACTION employees;

BEGIN TRANSACTION trips;

INSERT INTO trips VALUES('Galápagos – Central and East Islands','Ecuador','kids only',4199,2,'2022-09-10','2022-09-20',0,10,'Small-ship adventures on the world’s great seas, rivers, and other places only accessible by boat.');
INSERT INTO trips VALUES('Paris to Rome: Picnics & Pizza','France','family friendly',1063,1,'2022-08-20','2022-08-27',0,20,'Crisscrossing four countries, this whirlwind tour of Europe’s most celebrated capitals squeezes unique culture, delectable food and drink, stunning scenery, wild nightlife, and centuries of thrilling history into seven days without ever feeling rushed. ');
INSERT INTO trips VALUES('Bali: Beaches & Boat Rides','Indonesia','adults only',637,9,'2023-06-01','2023-06-08',0,20,'Surf on gloriously blue ocean waves in Kuta, stop for the perfect shot at Buddhist temples and lotus ponds in Ubud, and relax with a drink at a beachfront bar on Gili Trawangan.');
INSERT INTO trips VALUES('Cuba Explorer','Cuba','family friendly',1062,6,'2022-09-03','2022-09-10',0,22,' Cruise Havana’s history-infused streets in a classic car and stroll along Trinidad’s cobblestone avenues to the rhythms of music floating from open windows.');
INSERT INTO trips VALUES('Delhi to Kathmandu Adventure','India','adults only',1119,4,'2022-08-09','2022-08-20',0,15,'If you’re looking to experience the diversity of India and Nepal, this 15-day trip contrasts the colourful culture of India with the pristine serenity of Nepals Himalayan mountains.');
INSERT INTO trips VALUES('Indochina Discovery: Seasides and Street Food','Thailand','family friendly',1024,5,'2022-08-01','2022-08-09',0,22,'Nows the time to explore Thailand, Vietnam, Laos and Cambodia on your terms with this tour thats affordable for young travellers.');

COMMIT TRANSACTION trips;

BEGIN TRANSACTION payments;

INSERT INTO payments VALUES (1,2,3000,'underpayment');
INSERT INTO payments VALUES (3,6,1024,'paid');
INSERT INTO payments VALUES (6,3,640,'excess payment');
INSERT INTO payments VALUES (8,4,1062,'paid');

COMMIT TRANSACTION payments;

BEGIN TRANSACTION branches;

INSERT INTO branches VALUES ('302 John Calvin Drive,Chicago,Illinois');
INSERT INTO branches VALUES ('3677 Leisure Lane,Thousand Oaks,California');
INSERT INTO branches VALUES ('2246 Deans Lane,Manhattan,New York');

COMMIT TRANSACTION branches;
