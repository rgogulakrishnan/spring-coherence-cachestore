DROP TABLE `employee`;

CREATE TABLE `employee` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `employeeId` mediumint,
  `firstName` varchar(255) default NULL,
  `lastName` varchar(255) default NULL,
  `dob` varchar(255),
  `experience` mediumint default NULL,
  `mobileNumber` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `employee` (`employeeId`,`firstName`,`lastName`,`dob`,`experience`,`mobileNumber`,`email`) VALUES (4000,'Raven','Camden','24/08/2017',6,'022-164-2968','mauris.Suspendisse@vehicula.net'),(4001,'Leslie','John','09/12/2018',23,'004-936-0591','turpis.non.enim@primis.co.uk'),(4002,'Allen','Lucian','18/02/2019',17,'030-196-0593','lacus.Quisque.purus@egestas.edu'),(4003,'Gregory','Roth','17/11/2018',12,'021-736-5970','eget.massa@Nullamenim.net'),(4004,'Emma','Sebastian','01/05/2019',12,'087-484-1593','ipsum.sodales.purus@ipsumsodalespurus.ca'),(4005,'Hiroko','Addison','01/05/2018',20,'094-016-7405','mi.tempor@dolorDonecfringilla.com'),(4006,'Prescott','Boris','19/10/2018',13,'032-131-0996','dictum@laoreet.com'),(4007,'Germaine','Perry','02/04/2019',25,'021-156-1030','ipsum@tellusAenean.com'),(4008,'Mark','Quinn','11/01/2018',15,'066-289-9278','ac.ipsum@Fusce.com'),(4009,'Elijah','Arden','30/06/2018',24,'065-934-2418','pede.malesuada.vel@nullavulputate.com');
INSERT INTO `employee` (`employeeId`,`firstName`,`lastName`,`dob`,`experience`,`mobileNumber`,`email`) VALUES (4010,'Channing','Orlando','07/04/2019',20,'078-056-8656','non@elitsedconsequat.net'),(4011,'Denise','Cullen','22/10/2018',4,'048-828-1083','Phasellus.dapibus.quam@lobortis.org'),(4012,'Ezekiel','Tad','03/05/2019',19,'006-356-5652','faucibus.orci@et.co.uk'),(4013,'Macaulay','Mason','06/06/2018',2,'022-298-2497','Vestibulum@a.org'),(4014,'Hadley','Orlando','14/10/2017',30,'010-394-5611','semper.tellus.id@sodales.ca'),(4015,'Grady','Trevor','24/08/2017',2,'078-199-0876','Sed.eget@vitaevelit.co.uk'),(4016,'Amethyst','Harrison','01/10/2017',17,'010-405-7858','magna.Suspendisse.tristique@tristique.net'),(4017,'Velma','Dean','12/01/2018',9,'000-437-3691','neque.et.nunc@blanditviverra.co.uk'),(4018,'Calvin','Cameron','22/08/2017',3,'094-043-0878','purus@arcuetpede.net'),(4019,'Marcia','Harding','01/02/2019',19,'062-133-3403','vehicula.Pellentesque.tincidunt@Nullamfeugiatplacerat.edu');
INSERT INTO `employee` (`employeeId`,`firstName`,`lastName`,`dob`,`experience`,`mobileNumber`,`email`) VALUES (4020,'Karina','Ferdinand','10/12/2018',27,'068-016-6812','dui.nec.urna@Fuscefermentumfermentum.ca'),(4021,'Oleg','Ulric','16/07/2017',1,'041-552-3928','Sed@odio.co.uk'),(4022,'Bruno','Giacomo','29/10/2018',23,'062-230-9651','rhoncus.id@netusetmalesuada.org'),(4023,'Kuame','Kieran','23/08/2017',2,'081-430-4020','Cras.convallis@malesuada.com'),(4024,'Sawyer','Kieran','02/08/2018',20,'010-172-5517','pede.ac.urna@Nullam.org'),(4025,'Aubrey','Hayes','04/06/2018',5,'032-408-9260','diam.nunc@diamnuncullamcorper.com'),(4026,'David','Griffin','02/10/2018',7,'013-620-4417','in.faucibus.orci@Aliquam.net'),(4027,'Barclay','Brenden','28/07/2017',10,'083-402-9969','consequat.dolor@imperdietullamcorper.ca'),(4028,'Lillian','Merrill','06/06/2018',7,'071-573-7679','mauris.eu.elit@Donectempor.com'),(4029,'Richard','Amos','17/12/2018',19,'001-758-4040','magna.a.tortor@SednequeSed.com');
INSERT INTO `employee` (`employeeId`,`firstName`,`lastName`,`dob`,`experience`,`mobileNumber`,`email`) VALUES (4030,'Marvin','Brady','20/06/2018',22,'003-583-7862','accumsan@loremfringillaornare.net'),(4031,'Zachary','Griffin','02/02/2018',22,'054-039-3734','Sed@arcuVestibulum.org'),(4032,'Laurel','Chadwick','10/07/2017',4,'047-016-4710','elementum.dui@ullamcorper.net'),(4033,'Keely','Yuli','21/08/2018',7,'023-245-4080','ipsum.Donec@liberoProin.edu'),(4034,'April','Elvis','03/06/2017',18,'008-162-1628','lacus.Cras@pellentesqueSed.org'),(4035,'Reece','Kennan','22/03/2019',14,'026-133-4919','egestas.ligula@nullaInteger.edu'),(4036,'Walker','Linus','19/11/2017',12,'086-801-6826','urna.justo@acturpisegestas.net'),(4037,'Brandon','Matthew','27/12/2018',21,'043-418-4454','justo@tellusfaucibus.org'),(4038,'Denton','Tanek','27/04/2019',29,'089-746-5797','Mauris.vestibulum@Sed.edu'),(4039,'Colette','Emmanuel','14/12/2018',3,'032-637-7388','quis.massa@Maecenasornareegestas.edu');
INSERT INTO `employee` (`employeeId`,`firstName`,`lastName`,`dob`,`experience`,`mobileNumber`,`email`) VALUES (4040,'Yuri','Carson','26/12/2017',24,'012-365-2246','dolor.sit@mollisIntegertincidunt.co.uk'),(4041,'Jermaine','Raymond','29/04/2019',17,'080-532-5025','odio@maurisutmi.co.uk'),(4042,'Colette','Ferris','09/02/2018',14,'086-282-3746','et.nunc@dapibus.co.uk'),(4043,'Nyssa','Roth','03/12/2017',20,'061-891-1078','sit.amet@aliquet.com'),(4044,'Nolan','Marshall','28/05/2017',10,'039-566-1769','a.tortor.Nunc@nunc.org'),(4045,'Talon','Edan','23/05/2017',2,'027-700-6379','laoreet@felisNullatempor.net'),(4046,'Harlan','Bradley','25/03/2018',28,'034-581-9800','fames.ac.turpis@Vivamus.org'),(4047,'Cathleen','Stuart','09/05/2018',12,'042-593-0851','non.massa@Vivamusnonlorem.com'),(4048,'Bianca','Kasper','26/11/2017',21,'049-213-2104','in.faucibus@non.net'),(4049,'Shannon','Mark','19/11/2017',20,'045-041-7661','lectus.ante@massa.org');
INSERT INTO `employee` (`employeeId`,`firstName`,`lastName`,`dob`,`experience`,`mobileNumber`,`email`) VALUES (4050,'Hayden','Chancellor','03/12/2017',21,'090-853-8624','lobortis.augue.scelerisque@scelerisqueneque.org'),(4051,'Medge','Abdul','18/09/2017',14,'002-280-7169','ligula.eu.enim@Nunc.co.uk'),(4052,'Rinah','Jonas','15/12/2017',15,'096-281-9903','Nunc@maurisid.edu'),(4053,'Tiger','Phillip','07/05/2018',29,'039-014-0059','mauris.rhoncus@convallisconvallisdolor.edu'),(4054,'Elijah','Cadman','23/04/2019',30,'043-784-6912','egestas.Aliquam@sitamet.org'),(4055,'Colt','Wade','15/06/2017',2,'092-828-6605','eget@Donecconsectetuermauris.ca'),(4056,'Ignatius','Mason','07/09/2017',15,'029-324-6852','tempor.lorem.eget@a.org'),(4057,'Zachary','Jakeem','15/09/2018',11,'003-570-7066','mus.Donec@tellusnon.net'),(4058,'Elliott','Clinton','15/08/2017',8,'047-133-3062','et.risus.Quisque@Vestibulumanteipsum.edu'),(4059,'Dean','Samuel','03/10/2017',24,'067-676-5437','Cras.vulputate.velit@Donec.co.uk');
INSERT INTO `employee` (`employeeId`,`firstName`,`lastName`,`dob`,`experience`,`mobileNumber`,`email`) VALUES (4060,'Alden','Brendan','12/04/2019',14,'073-598-2470','malesuada.id@neque.net'),(4061,'Kermit','Tad','22/07/2017',13,'014-104-1790','sed.hendrerit.a@lectus.org'),(4062,'Rashad','Hayden','21/03/2018',6,'043-708-1824','massa.lobortis@uterat.edu'),(4063,'Xaviera','Burton','21/10/2018',30,'078-163-1033','id@ornare.org'),(4064,'Marah','Barry','23/11/2018',16,'025-457-6412','egestas.urna@consectetuereuismodest.com'),(4065,'Tucker','Tucker','25/09/2017',29,'052-678-0826','Curabitur@massa.edu'),(4066,'Jakeem','Judah','07/03/2019',6,'077-289-2484','egestas.hendrerit@Donecnonjusto.edu'),(4067,'Cruz','Nolan','02/01/2018',19,'057-946-1374','elit.fermentum.risus@molestietortornibh.net'),(4068,'Oleg','Fritz','25/08/2018',20,'023-038-7722','et.rutrum.non@enim.co.uk'),(4069,'Lawrence','Clinton','03/09/2018',6,'048-958-1386','pretium.neque@magna.org');
INSERT INTO `employee` (`employeeId`,`firstName`,`lastName`,`dob`,`experience`,`mobileNumber`,`email`) VALUES (4070,'Moses','Damian','18/04/2018',18,'006-267-8382','tincidunt.congue.turpis@purusNullamscelerisque.edu'),(4071,'Wynter','Isaiah','12/03/2018',21,'020-547-6578','cursus.vestibulum.Mauris@litora.co.uk'),(4072,'Tiger','Luke','21/04/2018',28,'010-809-9725','sed@maurissit.com'),(4073,'Harriet','Ira','25/10/2017',22,'082-152-1790','Pellentesque@Nullamut.co.uk'),(4074,'Brooke','Jameson','17/07/2017',10,'021-777-6271','blandit@tempuslorem.ca'),(4075,'Hammett','Joshua','18/02/2018',16,'026-105-4855','gravida.nunc@luctusCurabituregestas.ca'),(4076,'Yoko','Reece','17/05/2019',30,'065-116-5298','id.risus.quis@sedfacilisis.ca'),(4077,'Thaddeus','Brody','11/09/2017',19,'065-305-0421','luctus.ipsum.leo@Cras.com'),(4078,'Rae','Owen','19/12/2017',15,'014-565-2188','orci@gravidanonsollicitudin.ca'),(4079,'Yasir','Elvis','13/11/2018',27,'015-253-3414','lorem@Naminterdumenim.co.uk');
INSERT INTO `employee` (`employeeId`,`firstName`,`lastName`,`dob`,`experience`,`mobileNumber`,`email`) VALUES (4080,'Macon','Oleg','09/04/2018',9,'034-811-8988','ante.Maecenas.mi@inhendrerit.ca'),(4081,'Zia','Aidan','19/02/2019',9,'041-263-2111','hendrerit.a.arcu@tellusnonmagna.org'),(4082,'Ezekiel','Ian','15/12/2017',20,'050-257-4306','venenatis@quis.com'),(4083,'Jesse','Jelani','05/06/2018',17,'013-962-1480','non@necleo.ca'),(4084,'Naida','Yardley','06/09/2017',26,'099-616-2538','ac.metus.vitae@Cumsociis.com'),(4085,'Justin','Avram','20/05/2017',19,'055-862-5505','Nunc@facilisislorem.net'),(4086,'Coby','Ciaran','18/09/2018',3,'086-812-3996','ante.ipsum@enimSed.net'),(4087,'Kyra','Jacob','22/02/2019',7,'070-510-7256','hendrerit.id@habitant.edu'),(4088,'Samuel','Colby','07/02/2018',11,'031-165-1965','eu@utodio.org'),(4089,'Briar','Sebastian','16/09/2017',13,'007-753-6416','Nullam.lobortis.quam@purus.edu');
INSERT INTO `employee` (`employeeId`,`firstName`,`lastName`,`dob`,`experience`,`mobileNumber`,`email`) VALUES (4090,'Damian','Zane','28/09/2017',21,'022-656-1821','ante.Vivamus.non@velitduisemper.edu'),(4091,'Mechelle','Zeph','15/12/2018',10,'070-436-6066','nisi@dui.edu'),(4092,'Jesse','Kadeem','07/11/2017',12,'084-451-9321','molestie@suscipit.org'),(4093,'Angelica','Avram','08/11/2018',1,'094-676-5651','commodo.hendrerit.Donec@feugiatplaceratvelit.co.uk'),(4094,'Lane','Cooper','08/12/2017',16,'023-591-4370','nibh.Quisque@maurisid.co.uk'),(4095,'Madaline','George','01/06/2018',27,'088-867-2603','at@bibendumfermentummetus.ca'),(4096,'Ima','Carson','11/04/2019',9,'072-717-3250','bibendum@egetodioAliquam.edu'),(4097,'Zeus','Peter','06/12/2018',13,'060-435-4733','Nam.ac.nulla@pedeblanditcongue.co.uk'),(4098,'Perry','Bert','17/05/2019',12,'014-794-9322','Nullam.velit.dui@erat.ca'),(4099,'Rhea','Clarke','16/02/2018',5,'048-488-3455','metus@sitamet.org');