
use se;
drop table fee;
drop table course;
drop table college;


use se;

CREATE TABLE college(
	college_id int auto_increment PRIMARY KEY, 
	name VARCHAR(100), 
	place_id VARCHAR(100),
	ranking INT(2), 	
	website VARCHAR(100), 
	email VARCHAR(100),
	contact INT(10),
	street VARCHAR(50),
	area VARCHAR(100),
	city VARCHAR(20),
	district VARCHAR(20),
	state VARCHAR(30),
	pincode INT(6),
	description VARCHAR(1000)
);

CREATE TABLE course(	
	course_id int PRIMARY KEY auto_increment,
	college_id int,
	FOREIGN KEY (college_id) REFERENCES college (college_id),
	name VARCHAR(40),	
	admission_start_date DATE,	
	admission_end_date DATE,
	cut_off float
);

CREATE TABLE fee(		
	fee_id int PRIMARY KEY auto_increment,course_id int,
	FOREIGN KEY (course_id) REFERENCES course (course_id),
	category VARCHAR(50),
	fee int
);



insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Savitribai Phule Pune University', 
	'ChIJYeHvWF2_wjsRAKV4NnKIqx0',
	4, 
	'www.unipune.ac.in', 
	'intcent@unipune.ac.in',
	25696061,
	'Ganeshkhind Road',
	'Shivajinagar',
	'Pune',
	'Pune',
	'Maharashtra',
	411007	,
	'Savitribai Phule Pune University formerly the University of Pune (Programs are focused on departments of Pune University,information about exams, and results and activities of the university.');


insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Abhinav Education Societys College of Pharmacy', 
	'ChIJC14PsCeVwjsRLJTY1gzTcIE',
	7, 
	'http://bpharm.leadsat.com/', 
	'abhinavpharmacycollege@gmail.com',
	207350477786,
	'Katraj-Dehu Road Bypass',
	'Sr. No 23/3/2,Ambegoan(Bk),Near Ambegaon Budruk, Narhe',
	'Pune',
	'Pune',
	'Maharashtra',
	411041,
	'Welcome to Abhinav Education Societys College of Pharmacy (B. Pharm) (APPROVED BY AICTE,DTEF,Govt.of Maharashtra, Pharmacy Council of India) (Affiliated to University of Pune)');
 
insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Sinhgad College of Commerce', 
	'ChIJ6wPlUFPqwjsR7KDmCDtySys',
	15, 
	' http://www.sinhgad.edu/', 
	'principal.scoc@sinhgad.edu',
	02026933634,
	'Saswad - Bopdev - Pune Rd',
	'Sinhgad Kondwa, Kondhwa Budrukh',
	'pune',
	'pune',
	'Maharashtra',
	411048,
	'Sinhgad College of Commerce is a commerce education institute in the city of Kondhwa, Pune, India. The institute is affiliated with the University of Pune and managed by the Sinhgad Technical Education Society. '
);
insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Sinhgad College of Nursing', 
	'ChIJoetUwGqVwjsRdsVWqeByfM8',
	18, 
	' http://www.sinhgad.edu/', 
	'principal.scoc@sinhgad.edu',
	02026933634,
	'Off Westerly Bypass Highway Road',
	'S.No.49/1,Pune-Mumbai Expressway,Wadgaon Budruk,Narhe ',
	'pune',
	'pune',
	'Maharashtra'	,
	41104,
	'Sinhgad e Journal of Nursing is a medium for scientists to communicate with other scientist about the results of their research.
Nursing is a caring practice comprised of both an art and a learned scientific discipline guided by sound theoretical and factual bases.'
);
insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Abasaheb Garware College', 
	'ChIJ78AUKoq_wjsRiKPGBs4TSIQ',
	6, 
	' http://mesgarwarecollege.org/', 
	'agccomp@eth.net',
	02041038200,
	'Maharshi Karve Road',
	'Deccan Gymkhana, Khilarewadi, Erandwane',
	'pune',
	'pune',
	'Maharashtra '	,
	411004,
	'Maharashtra Education Societys Abasaheb Garware College is one of the premier institutions of higher education in and around Pune, imparting the education from undergraduate to research level. Started in 1945 in a small building on Bhandarkar road, the college moved to its present premises in the year 1955 and flourished.'
);
insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Jai Hind College', 
	'ChIJSxArHOfR5zsROBligb6kMis',
	4, 
	'http://www.jaihindcollege.com/ ', 
	'contactus@jaihindcollege.com',
	9122220410,
	'A Road',
	'Churchgate',
	'Mumbai',
	'Mumbai',
	'Maharashtra'	,
	400020,
	'JaiHind College has been reaccredited in the 3rd Cycle of NAAC with A Grade with CGPA 3.52 '
);


insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Govt. Law College.', 
	'ChIJPR_ucefR5zsRQLnVjR-ycOU',
	3, 
	'http://glcmumbai.com/ ', 
	'glcstudentscouncil@gmail.com',
	02222041707,
	'A Road',
	'Indian Merchants Chamber Marg,Churchgate',
	'Mumbai',
	'Mumbai',
	'Maharashtra'	,
	400020,
	'The Government Law College, founded in 1855, is the oldest law school in Asia dating even prior to the University of Mumbai, and enjoys a pre-eminent national and international reputation for excellence.'
);


insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('St. Xaviers College', 
	'ChIJpQy8nCDO5zsRgrNBo1-1X50',
	5, 
	'http://xaviers.edu/', 
	'webadmin@xaviers.edu',
	02222620661,
	'Mahapalika Marg',
	'No. 5, Dhobi Talao, Chhatrapati Shivaji Terminus Area, Fort',
	'mumbai',
	'mumbai',
	'Maharashtra'	,
	400001,
	'St. xaviers college-Autonomous,mumbai is pleasure to announce that is has been conffered the Star College Award by the goverment of india,Department of Biotechnology.'
);





insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Sir JJ College of Architecture', 
	'ChIJE3yj1CDO5zsRQWPSBX9QzbU',
	7, 
	'http://www.sirjjarchitecture.org/', 
	'sirjjarch@gmail.com',
	22620609,
	'Dadabhai Naoroji Road',
	'No.78/3,Next to Anjumal-I-Islam College,Chhatrapati Shivaji Terminus Area, Fort, Dhobi Talao',
	'mumbai',
	'mumbai',
	'maharashtra',
	400001,
	'Sir JJ College of Architecture has documented the architectural facades of the Art Deco Buildings that form a stretch on the Oval Maidan. These building fronts are metonymous with Bombays Art Deco Architecture that flourished from the 1930s to the 1950s. Bombay, even today has the largest number of Art Deco buildings in a city outside of Miami.'
);



insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Grant Medical College', 
	'ChIJs0Uq1T7O5zsRV_QMEJJGjuE',
	5, 
	'http://www.gmcjjh.org/', 
	'gmcjjhcollege@gmail.com',
	912223735555,
	'Off Jijabhoy Road',
	'J J Marg,Nagpada-Mumbai Central,Mazgaon',
	'mumbai',
	'mumbai',
	'maharashtra',
	400008,
	'The Grant Government medical College, Mumbai is one of the premiere institution of India affiliated to the Maharashtra University of Health Sciences, Nashik. The Foundation of the institution dates back to 1845 and with a consistent performance in ranking in the top 10 Medical colleges all over India.Sir JJ Group of Hospitals is a conglomerate of 4 Hospitals : Sir JJ Hospital, St.Georges Hospital, Gokuldas Tejpal Hospital & Cama Albless Hospital.');



insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Acharya Narendra Dev College', 
	'ChIJEeJR09_jDDkRF96FzunXIvU',
	8, 
	'admissions@andc.du.ac.in', 
	'spaprincipal@andc.du.ac.in',
	01126287479 ,
	'-',
	'No.3, Govind Puri, Kalkaji, Bal Mukund Khand, Giri Nagar,Kalkaji',
	'New Delhi',
	'New Delhi',
	'Delhi'	,
	110019,
	'Acharya Narendra Dev College (ANDC) is a constituent college of the University of Delhi, fully funded by the Government of NCT Delhi. Since its inception in 1991, the College has evolved into an acclaimed coeducational institution providing quality education to a diverse section of Indian students through its undergraduate and postgraduate degree programmes predominantly in basic sciences, applied sciences and commerce'
);


insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('PGDAV College Evening', 
	'ChIJuQBvcLDjDDkRxbpz-RXij4c',
	2, 
	'http://www.du.ac.in/', 
	'vc@du.ac.in',
	01127006900,
	'Ring Rd',
	'WZ-96,Nehru Nagar, Raja Garden, Nehru Nagar, Lajpat Nagar',
	'New Delhi',
	'New Delhi',
	'Delhi'	,
	110065,
	'The Evening Classes of P.G.D.A.V. College were started on 18.7.1958. The main objective was to impart instruction in higher studies to employed students. The college is run by the D.A.V. College Managing Committee, New Delhi through 12 representatives nominated to the Governing Body of the college.'
);

insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('University of Delhi', 
	'ChIJB5Cw0hEdDTkRPJ60aaUBNYU',
	3, 
	'http://www.du.ac.in/', 
	'dean_colleges@du.ac.in',
	23922480,
	'-',
	'South Campus, South Moti Bagh',
	'New Delhi',
	'New Delhi',
	'Delhi'	,
	110021,
	'The University of Delhi is the premier university of the country and is known for its high standards in teaching and research and attracts eminent scholars to its faculty. It was established in 1922 as a unitary, teaching and residential university by an Act of the then Central Legislative Assembly.
'
);
insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Jesus and Mary College', 
	'ChIJMw5tmWkdDTkRhJsyb6mAIGA',
	4, 
	' http://www.jmc.ac.in/', 
	'info@jmc.ac.in',
	9101126110041,
	'-',
	'Chanakyapuri',
	'New Delhi',
	'New Delhi',
	'Delhi'	,
	110021,
	'jesus and Mary College provides a range of courses to allow for different circumstances and needs of women.
While full time under graduate programs and the post graduate programs in English and in Hindi are the main courses offered by the college, it is also the Centre for part time and distance learning programs offered by the Non Collegiate Women Education Board and the Indira Gandhi National Open University (IGNOU).
'
);


insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Moti Lal Nehru Medical College', 
	'ChIJRRYaSbrKmjkRMKdN8I8xkiA',
	3, 
	'http://mlnmc.org', 
	'http://mlnmc.org',
	02568925698,
	'-',
	'George Town',
	'Allahabad',
	'Allahabad',
	'Uttar Pradesh',
	211002,
	'MOTI LAL NEHRU MEDICAL COLLEGE was established by first President of India, Dr. Rajendra Prasad, in the year 1961. The college is affiliated to Chhatrapati Sahu Ji Maharaj University, Kanpur and recognized by Medical Council of India. The college offers Bachelor, Master and Diploma Courses in various specialities'
);

insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('Jagat Taran Girls Degree College', 
	'ChIJpbkmBqTKmjkRgG1OPO07Fj4',
	8, 
	'http://www.jtgdc.org/', 
	'prin.jtdc@gmail.com',
	05322468513,
	'Hamilton Road',
	'32,George Town, Darbhanga Colony, George Town',
	'Allahabad',
	'Allahabad',
	'Uttar Pradesh',
	211002,
	'Jagat Taran Girls Degree College was founded in 1975 as an associated college of the University of Allahabad and now it has been declared its constituent college when the University achieved Central Status on 14th July, 2005.'
);

insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('University Of Allahabad', 
	'ChIJda-qBL_KmjkRTa9uJSPSKnA',
	7, 
	'http://www.allduniv.ac.in/', 
	'allduniv@gmail.com',
	9153224601083,
	'University Road',
	'Senate House Campus,Old Katra',
	'Allahabad',
	'Allahabad',
	'Uttar Pradesh'	,
	211002,
	'Allahabad University has always occupied an esteemed place among the universities of India for over a century now. Established on 23rd September 1887, it is the fourth oldest university of India after Calcutta, Bombay and Madras University. The credit for conceiving a large Central College at Allahabad, eventually to develop into a University, is due to Sir William Muir, then Lt. Governor of United Provinces.'
);


insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('BISHOP JOHNSON SCHOOL & COLLEGE (ANNEXE)', 
	'ChIJ_XJwppPKmjkR0VaCoy7L6Do',
	7, 
	'http://www.buzzintown.com/', 
	'bjscalld@sancharnet.in',
	05322560687,
	'Mission Road',
	'Dwarika Puri,Old Katra',
	'Allahabad',
	'Allahabad',
	'Uttar Pradesh'	,
	211001,
	'Bishop Johnson School was established in the year 1977. Ms.S.Buss, founder of Bishop Johnson School started the school with few students. At present, students are admitted in the class from Junior KG to class XII.');


insert into college( 
	name , 
	place_id,
	ranking, 	
	website, 
	email,
	contact,
	street,
	area ,
	city ,
	district ,
	state ,
	pincode ,
	description) values('St. Josephs College', 
	'ChIJtSOIaL_KmjkRS8ydH2KjMY8',
	4, 
	'http://www.sjc.ac.in/', 
	'desk@sjc.ac.in',
	08022274079,
	'Tashkent Road',
	'Civil Lines',
	'Allahabad',
	'Allahabad',
	'Uttar Pradesh',
	211001,
	'st. Josephs colleges of commerce,formerly was a part of st. josephs college which was establish in year 1882 as an educational initiative by the french foreign mission fathers for the purpose of imparting higher education.');


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(1,'mca','2016/1/2','2016/5/8',75);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(1,'mcs','2016/1/2','2016/5/8',75);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(1,'m.Tech','2016/1/2','2016/5/8',75);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(1,'p.Hd','2016/1/2','2016/5/8',75);



insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(2,'mca','2016/07/20','2016/08/19',84);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(2,'mcs','2016/07/20','2016/08/19',84);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(2,'m.Tech','2016/07/20','2016/08/19',84);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(2,'p.Hd','2016/07/20','2016/08/19',84);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(3,'mca','2016/07/30','2016/08/22',89);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(3,'mcs','2016/07/30','2016/08/22',89);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(3,'m.Tech','2016/07/30','2016/08/22',89);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(3,'MBA','2016/07/30','2016/08/22',89);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(3,'M.A','2016/07/30','2016/08/22',89);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(3,'M.com','2016/07/30','2016/08/22',89);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(3,'LLB','2016/07/30','2016/08/22',89);






insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(4,'mca','2016/07/01','2016/07/20',88);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(4,'mcs','2016/07/01','2016/07/20',88);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(4,'m.Tech','2016/07/01','2016/07/20',88);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(4,'MBA','2016/07/01','2016/07/20',88);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(4,'M.A','2016/07/01','2016/07/20',88);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(4,'M.com','2016/07/01','2016/07/20',88);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(4,'LLB','2016/07/01','2016/07/20',88);







insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(5,'mca','2016/06/15','2016/06/30',83);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(5,'mcs','2016/06/15','2016/06/30',83);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(5,'m.Tech','2016/06/15','2016/06/30',83);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(5,'MBA','2016/06/15','2016/06/30',83);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(5,'M.A','2016/06/15','2016/06/30',83);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(5,'M.com','2016/06/15','2016/06/30',83);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(5,'LLB','2016/06/15','2016/06/30',83);




insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(6,'mca','2016/06/05','2016/06/25',79);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(6,'mcs','2016/06/05','2016/06/25',79);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(6,'m.Tech','2016/06/05','2016/06/25',79);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(6,'MBA','2016/06/05','2016/06/25',79);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(6,'M.A','2016/06/05','2016/06/25',79);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(6,'M.com','2016/06/05','2016/06/25',79);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(6,'LLB','2016/06/05','2016/06/25',79);



insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(7,'mca','2016/05/01','2016/05/20',71);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(7,'mcs','2016/05/01','2016/05/20',71);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(7,'m.Tech','2016/05/01','2016/05/20',71);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(7,'MBA','2016/05/01','2016/05/20',71);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(7,'M.A','2016/05/01','2016/05/20',71);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(7,'M.com','2016/05/01','2016/05/20',71);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(7,'LLB','2016/05/01','2016/05/20',71);



insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(8,'mca','2016/06/13','2016/06/30',89);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(8,'mcs','2016/06/13','2016/06/30',89);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(8,'m.Tech','2016/06/13','2016/06/30',89);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(8,'MBA','2016/06/13','2016/06/30',89);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(8,'M.A','2016/06/13','2016/06/30',89);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(8,'M.com','2016/06/13','2016/06/30',89);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(8,'LLB','2016/06/13','2016/06/30',89);




insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(9,'mca','2016/04/20','2016/05/27',79);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(9,'mcs','2016/04/20','2016/05/27',79);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(9,'m.Tech','2016/04/20','2016/05/27',79);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(9,'MBA','2016/04/20','2016/05/27',79);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(9,'M.A','2016/04/20','2016/05/27',79);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(9,'M.com','2016/04/20','2016/05/27',79);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(9,'LLB','2016/04/20','2016/05/27',79);







insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(10,'mca','2016/06/14','2016/07/12',86);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(10,'mcs','2016/06/14','2016/07/12',86);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(10,'m.Tech','2016/06/14','2016/07/12',86);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(10,'MBA','2016/06/14','2016/07/12',86);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(10,'mca','2016/06/14','2016/07/12',86);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(10,'msc','2016/06/14','2016/07/12',86);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(10,'LLB','2016/06/14','2016/07/12',86);





insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(11,'mca','2016/04/29','2016/05/15',88);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(11,'mcs','2016/04/29','2016/05/15',88);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(11,'m.Tech','2016/04/29','2016/05/15',88);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(11,'MBA','2016/04/29','2016/05/15',88);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(11,'M.A','2016/04/29','2016/05/15',88);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(11,'M.com','2016/04/29','2016/05/15',88);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(11,'LLB','2016/04/29','2016/05/15',88);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(12,'mca','2016/07/29','2016/08/28',80);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(12,'mcs','2016/07/29','2016/08/28',80);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(12,'m.Tech','2016/07/29','2016/08/28',80);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(12,'MBA','2016/07/29','2016/08/28',80);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(12,'M.A','2016/07/29','2016/08/28',80);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(12,'M.com','2016/07/29','2016/08/28',80);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(12,'LLB','2016/07/29','2016/08/28',80);



insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(13,'mca','2016/06/28','2016/07/22',75);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(13,'mcs','2016/06/28','2016/07/22',75);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(13,'m.Tech','2016/06/28','2016/07/22',75);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(13,'MBA','2016/06/28','2016/07/22',75);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(13,'M.A','2016/06/28','2016/07/22',75);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(13,'msc','2016/06/28','2016/07/22',75);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(13,'LLB','2016/06/28','2016/07/22',75);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(14,'mca','2016/05/30','2016/06/20',68);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(14,'mcs','2016/05/30','2016/06/20',68);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(14,'m.Tech','2016/05/30','2016/06/20',68);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(14,'MBA','2016/05/30','2016/06/20',68);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(14,'M.A','2016/05/30','2016/06/20',68);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(14,'M.com','2016/05/30','2016/06/20',68);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(14,'LLB','2016/05/30','2016/06/20',68);




insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(15,'mca','2016/08/07','2016/09/20',62);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(15,'mcs','2016/08/07','2016/09/20',62);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(15,'m.Tech','2016/08/07','2016/09/20',62);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(15,'MBA','2016/08/07','2016/09/20',62);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(15,'M.A','2016/08/07','2016/09/20',62);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(15,'M.com','2016/08/07','2016/09/20',62);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(15,'LLB','2016/08/07','2016/09/20',62);





insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(16,'mca','2016/06/06','2016/0/05',54);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(16,'mcs','2016/06/06','2016/0/05',54);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(16,'m.Tech','2016/06/06','2016/0/05',54);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(16,'MBA','2016/06/06','2016/0/05',54);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(16,'M.A','2016/06/06','2016/0/05',54);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(16,'M.com','2016/06/06','2016/0/05',54);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(16,'LLB','2016/06/06','2016/0/05',54);



insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(17,'mca','2016/07/06','2016/08/03',50);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(17,'mcs','2016/07/06','2016/08/03',50);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(17,'m.Tech','2016/07/06','2016/08/03',50);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(17,'MBA','2016/07/06','2016/08/03',50);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(17,'M.A','2016/07/06','2016/08/03',50);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(17,'M.com','2016/07/06','2016/08/03',50);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(17,'LLB','2016/07/06','2016/08/03',50);




insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(18,'mca','2016/07/20','2016/08/20',60);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(18,'mcs','2016/07/20','2016/08/20',60);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(18,'m.Tech','2016/07/20','2016/08/20',60);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(18,'MBA','2016/07/20','2016/08/20',60);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(18,'M.A','2016/07/20','2016/08/20',60);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(18,'M.com','2016/07/20','2016/08/20',60);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(18,'LLB','2016/07/20','2016/08/20',60);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(19,'mca','2016/06/29','2016/07/25',70);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(19,'mcs','2016/06/29','2016/07/25',70);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(19,'m.Tech','2016/06/29','2016/07/25',70);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(19,'MBA','2016/06/29','2016/07/25',70);


insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(19,'M.A','2016/06/29','2016/07/25',70);
insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(19,'M.com','2016/07/30','2016/08/20',65);

insert into course(college_id,
	name,	
	admission_start_date,	
	admission_end_date,
	cut_off)
	values(19,'LLB','2016/07/30','2016/08/20',65);


insert into fee(course_id,
	category,
	fee)
	values(1,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(1,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(1,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(1,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(1,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(2,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(2,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(2,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(2,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(2,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(3,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(3,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(3,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(3,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(3,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(4,
	'open',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(4,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(4,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(4,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(4,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(5,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(5,
	'obc',
	50000
	);

insert into fee(course_id,
	category,
	fee)
	values(5,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(5,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(5,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(6,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(6,
	'obc',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(6,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(6,
	'sc',
	3000
	);
insert into fee(course_id,
	category,
	fee)
	values(6,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(7,
	'open',
	120000
	);

insert into fee(course_id,
	category,
	fee)
	values(7,
	'obc',
	70000
	);

insert into fee(course_id,
	category,
	fee)
	values(7,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(7,
	'sc',
	10000
	);
insert into fee(course_id,
	category,
	fee)
	values(7,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(8,
	'open',
	77000
	);

insert into fee(course_id,
	category,
	fee)
	values(8,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(8,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(8,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(8,
	'ST',
	3000
	);


insert into fee(course_id,
	category,
	fee)
	values(9,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(9,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(9,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(9,
	'sc',
	7000
	);
insert into fee(course_id,
	category,
	fee)
	values(9,
	'ST',
	7000
	);



insert into fee(course_id,
	category,
	fee)
	values(10,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(10,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(10,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(10,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(10,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(11,
	'open',
	125000
	);

insert into fee(course_id,
	category,
	fee)
	values(11,
	'obc',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(11,
	'NT',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(11,
	'sc',
	15000
	);
insert into fee(course_id,
	category,
	fee)
	values(11,
	'ST',
	15000
	);



insert into fee(course_id,
	category,
	fee)
	values(12,
	'open',
	95000
	);

insert into fee(course_id,
	category,
	fee)
	values(12,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(12,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(12,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(12,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(13,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(13,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(14,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(14,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(14,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(15,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(15,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(15,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(15,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(15,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(16,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(16,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(17,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(17,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(17,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(18,
	'open',
	150000
	);

insert into fee(course_id,
	category,
	fee)
	values(18,
	'obc',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(18,
	'NT',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(18,
	'sc',
	40000
	);
insert into fee(course_id,
	category,
	fee)
	values(18,
	'ST',
	30000
	);


insert into fee(course_id,
	category,
	fee)
	values(19,
	'open',
	68000
	);

insert into fee(course_id,
	category,
	fee)
	values(19,
	'obc',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(19,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(19,
	'sc',
	12500
	);
insert into fee(course_id,
	category,
	fee)
	values(19,
	'ST',
	12000
	);



insert into fee(course_id,
	category,
	fee)
	values(20,
	'open',
	86000
	);

insert into fee(course_id,
	category,
	fee)
	values(20,
	'obc',
	37000
	);

insert into fee(course_id,
	category,
	fee)
	values(20,
	'NT',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(20,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(20,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(21,
	'open',
	96000
	);

insert into fee(course_id,
	category,
	fee)
	values(21,
	'obc',
	49000
	);

insert into fee(course_id,
	category,
	fee)
	values(21,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(21,
	'sc',
	7500
	);
insert into fee(course_id,
	category,
	fee)
	values(21,
	'ST',
	7500
	);



insert into fee(course_id,
	category,
	fee)
	values(22,
	'open',
	78000
	);

insert into fee(course_id,
	category,
	fee)
	values(22,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(22,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(22,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(22,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(23,
	'open',
	66000
	);

insert into fee(course_id,
	category,
	fee)
	values(23,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(23,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(23,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(23,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(24,
	'open',
	88000
	);

insert into fee(course_id,
	category,
	fee)
	values(24,
	'obc',
	44000
	);

insert into fee(course_id,
	category,
	fee)
	values(24,
	'NT',
	11000
	);

insert into fee(course_id,
	category,
	fee)
	values(24,
	'sc',
	3000
	);
insert into fee(course_id,
	category,
	fee)
	values(24,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(25,
	'open',
	120000
	);

insert into fee(course_id,
	category,
	fee)
	values(25,
	'obc',
	70000
	);

insert into fee(course_id,
	category,
	fee)
	values(25,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(25,
	'sc',
	10000
	);
insert into fee(course_id,
	category,
	fee)
	values(25,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(26,
	'open',
	77000
	);

insert into fee(course_id,
	category,
	fee)
	values(26,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(26,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(26,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(27,
	'ST',
	3000
	);


insert into fee(course_id,
	category,
	fee)
	values(28,
	'open',
	98000
	);

insert into fee(course_id,
	category,
	fee)
	values(28,
	'obc',
	48000
	);

insert into fee(course_id,
	category,
	fee)
	values(28,
	'NT',
	18000
	);

insert into fee(course_id,
	category,
	fee)
	values(28,
	'sc',
	8700
	);
insert into fee(course_id,
	category,
	fee)
	values(28,
	'ST',
	8000
	);



insert into fee(course_id,
	category,
	fee)
	values(29,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(29,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(29,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(29,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(29,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(30,
	'open',
	125000
	);

insert into fee(course_id,
	category,
	fee)
	values(30,
	'obc',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(30,
	'NT',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(30,
	'sc',
	15000
	);
insert into fee(course_id,
	category,
	fee)
	values(30,
	'ST',
	15000
	);



insert into fee(course_id,
	category,
	fee)
	values(31,
	'open',
	95000
	);

insert into fee(course_id,
	category,
	fee)
	values(31,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(31,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(31,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(31,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(32,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(32,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(32,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(32,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(32,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(34,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(34,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(34,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(34,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(34,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(35,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(35,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(35,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(35,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(35,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(36,
	'open',
	150000
	);

insert into fee(course_id,
	category,
	fee)
	values(36,
	'obc',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(36,
	'NT',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(36,
	'sc',
	40000
	);
insert into fee(course_id,
	category,
	fee)
	values(36,
	'ST',
	30000
	);


insert into fee(course_id,
	category,
	fee)
	values(37,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(37,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(37,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(37,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(37,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(38,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(38,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(38,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(38,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(38,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(39,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(39,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(39,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(39,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(39,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(40,
	'open',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(40,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(40,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(40,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(40,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(41,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(41,
	'obc',
	50000
	);

insert into fee(course_id,
	category,
	fee)
	values(41,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(41,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(41,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(42,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(42,
	'obc',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(43,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(43,
	'sc',
	3000
	);
insert into fee(course_id,
	category,
	fee)
	values(43,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(44,
	'open',
	120000
	);

insert into fee(course_id,
	category,
	fee)
	values(44,
	'obc',
	70000
	);

insert into fee(course_id,
	category,
	fee)
	values(44,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(44,
	'sc',
	10000
	);
insert into fee(course_id,
	category,
	fee)
	values(44,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(45,
	'open',
	77000
	);

insert into fee(course_id,
	category,
	fee)
	values(45,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(45,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(45,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(45,
	'ST',
	3000
	);


insert into fee(course_id,
	category,
	fee)
	values(46,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(46,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(46,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(46,
	'sc',
	7000
	);
insert into fee(course_id,
	category,
	fee)
	values(46,
	'ST',
	7000
	);



insert into fee(course_id,
	category,
	fee)
	values(47,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(47,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(47,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(47,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(47,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(48,
	'open',
	125000
	);

insert into fee(course_id,
	category,
	fee)
	values(48,
	'obc',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(48,
	'NT',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(49,
	'sc',
	15000
	);
insert into fee(course_id,
	category,
	fee)
	values(49,
	'ST',
	15000
	);



insert into fee(course_id,
	category,
	fee)
	values(50,
	'open',
	95000
	);

insert into fee(course_id,
	category,
	fee)
	values(50,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(50,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(50,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(50,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(51,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(51,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(51,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(51,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(51,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(52,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(52,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(52,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(52,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(52,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(53,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(53,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(53,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(53,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(53,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(54,
	'open',
	150000
	);

insert into fee(course_id,
	category,
	fee)
	values(54,
	'obc',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(54,
	'NT',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(54,
	'sc',
	40000
	);
insert into fee(course_id,
	category,
	fee)
	values(54,
	'ST',
	30000
	);


insert into fee(course_id,
	category,
	fee)
	values(55,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(55,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(55,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(55,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(55,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(56,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(56,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(56,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(56,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(56,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(57,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(57,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(57,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(57,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(57,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(58,
	'open',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(58,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(59,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(59,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(59,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(60,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(60,
	'obc',
	50000
	);

insert into fee(course_id,
	category,
	fee)
	values(60,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(60,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(60,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(61,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(61,
	'obc',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(61,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(61,
	'sc',
	3000
	);
insert into fee(course_id,
	category,
	fee)
	values(61,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(62,
	'open',
	120000
	);

insert into fee(course_id,
	category,
	fee)
	values(62,
	'obc',
	70000
	);

insert into fee(course_id,
	category,
	fee)
	values(62,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(62,
	'sc',
	10000
	);
insert into fee(course_id,
	category,
	fee)
	values(62,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(63,
	'open',
	77000
	);

insert into fee(course_id,
	category,
	fee)
	values(63,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(63,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(63,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(63,
	'ST',
	3000
	);


insert into fee(course_id,
	category,
	fee)
	values(64,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(64,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(64,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(64,
	'sc',
	7000
	);
insert into fee(course_id,
	category,
	fee)
	values(64,
	'ST',
	7000
	);



insert into fee(course_id,
	category,
	fee)
	values(65,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(65,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(65,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(65,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(65,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(66,
	'open',
	125000
	);

insert into fee(course_id,
	category,
	fee)
	values(66,
	'obc',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(66,
	'NT',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(66,
	'sc',
	15000
	);
insert into fee(course_id,
	category,
	fee)
	values(67,
	'ST',
	15000
	);



insert into fee(course_id,
	category,
	fee)
	values(67,
	'open',
	95000
	);

insert into fee(course_id,
	category,
	fee)
	values(67,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(67,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(67,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(67,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(68,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(68,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(68,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(68,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(68,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(69,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(69,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(69,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(69,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(69,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(70,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(70,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(70,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(70,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(70,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(71,
	'open',
	150000
	);

insert into fee(course_id,
	category,
	fee)
	values(71,
	'obc',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(71,
	'NT',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(71,
	'sc',
	40000
	);
insert into fee(course_id,
	category,
	fee)
	values(71,
	'ST',
	30000
	);



insert into fee(course_id,
	category,
	fee)
	values(72,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(72,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(72,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(72,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(72,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(73,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(73,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(73,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(73,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(73,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(74,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(74,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(74,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(74,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(74,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(75,
	'open',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(75,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(75,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(75,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(75,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(76,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(76,
	'obc',
	50000
	);

insert into fee(course_id,
	category,
	fee)
	values(76,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(76,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(76,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(77,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(77,
	'obc',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(77,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(77,
	'sc',
	3000
	);
insert into fee(course_id,
	category,
	fee)
	values(77,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(78,
	'open',
	120000
	);

insert into fee(course_id,
	category,
	fee)
	values(78,
	'obc',
	70000
	);

insert into fee(course_id,
	category,
	fee)
	values(78,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(78,
	'sc',
	10000
	);
insert into fee(course_id,
	category,
	fee)
	values(78,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(8,
	'open',
	77000
	);

insert into fee(course_id,
	category,
	fee)
	values(79,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(79,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(79,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(79,
	'ST',
	3000
	);


insert into fee(course_id,
	category,
	fee)
	values(80,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(80,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(80,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(80,
	'sc',
	7000
	);
insert into fee(course_id,
	category,
	fee)
	values(80,
	'ST',
	7000
	);



insert into fee(course_id,
	category,
	fee)
	values(81,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(81,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(81,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(81,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(81,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(82,
	'open',
	125000
	);

insert into fee(course_id,
	category,
	fee)
	values(82,
	'obc',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(82,
	'NT',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(82,
	'sc',
	15000
	);
insert into fee(course_id,
	category,
	fee)
	values(82,
	'ST',
	15000
	);



insert into fee(course_id,
	category,
	fee)
	values(83,
	'open',
	95000
	);

insert into fee(course_id,
	category,
	fee)
	values(83,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(83,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(83,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(83,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(84,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(84,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(84,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(84,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(84,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(85,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(85,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(85,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(85,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(85,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(86,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(86,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(87,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(87,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(87,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(88,
	'open',
	150000
	);

insert into fee(course_id,
	category,
	fee)
	values(88,
	'obc',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(88,
	'NT',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(88,
	'sc',
	40000
	);
insert into fee(course_id,
	category,
	fee)
	values(88,
	'ST',
	30000
	);





insert into fee(course_id,
	category,
	fee)
	values(89,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(89,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(89,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(89,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(89,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(90,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(90,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(90,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(90,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(90,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(91,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(91,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(91,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(91,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(91,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(92,
	'open',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(92,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(92,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(92,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(92,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(93,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(93,
	'obc',
	50000
	);

insert into fee(course_id,
	category,
	fee)
	values(93,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(93,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(93,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(94,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(94,
	'obc',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(94,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(94,
	'sc',
	3000
	);
insert into fee(course_id,
	category,
	fee)
	values(94,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(95,
	'open',
	120000
	);

insert into fee(course_id,
	category,
	fee)
	values(95,
	'obc',
	70000
	);

insert into fee(course_id,
	category,
	fee)
	values(95,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(95,
	'sc',
	10000
	);
insert into fee(course_id,
	category,
	fee)
	values(95,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(95,
	'open',
	77000
	);

insert into fee(course_id,
	category,
	fee)
	values(95,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(95,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(95,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(95,
	'ST',
	3000
	);


insert into fee(course_id,
	category,
	fee)
	values(96,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(96,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(96,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(96,
	'sc',
	7000
	);
insert into fee(course_id,
	category,
	fee)
	values(96,
	'ST',
	7000
	);



insert into fee(course_id,
	category,
	fee)
	values(97,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(97,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(97,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(97,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(97,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(98,
	'open',
	125000
	);

insert into fee(course_id,
	category,
	fee)
	values(98,
	'obc',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(98,
	'NT',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(98,
	'sc',
	15000
	);
insert into fee(course_id,
	category,
	fee)
	values(98,
	'ST',
	15000
	);



insert into fee(course_id,
	category,
	fee)
	values(99,
	'open',
	95000
	);

insert into fee(course_id,
	category,
	fee)
	values(99,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(99,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(99,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(99,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(100,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(100,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(100,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(100,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(100,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(101,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(101,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(101,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(101,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(101,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(102,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(102,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(102,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(102,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(102,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(103,
	'open',
	150000
	);

insert into fee(course_id,
	category,
	fee)
	values(103,
	'obc',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(103,
	'NT',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(103,
	'sc',
	40000
	);
insert into fee(course_id,
	category,
	fee)
	values(103,
	'ST',
	30000
	);





insert into fee(course_id,
	category,
	fee)
	values(104,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(104,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(104,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(104,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(104,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(105,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(105,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(105,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(105,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(105,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(106,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(106,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(106,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(106,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(106,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(107,
	'open',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(107,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(107,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(107,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(107,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(108,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(109,
	'obc',
	50000
	);

insert into fee(course_id,
	category,
	fee)
	values(109,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(109,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(109,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(110,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(110,
	'obc',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(110,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(110,
	'sc',
	3000
	);
insert into fee(course_id,
	category,
	fee)
	values(110,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(111,
	'open',
	120000
	);

insert into fee(course_id,
	category,
	fee)
	values(111,
	'obc',
	70000
	);

insert into fee(course_id,
	category,
	fee)
	values(111,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(111,
	'sc',
	10000
	);
insert into fee(course_id,
	category,
	fee)
	values(111,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(112,
	'open',
	77000
	);

insert into fee(course_id,
	category,
	fee)
	values(112,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(112,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(112,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(112,
	'ST',
	3000
	);


insert into fee(course_id,
	category,
	fee)
	values(113,
	'open',
	80000
	);

insert into fee(course_id,
	category,
	fee)
	values(113,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(113,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(113,
	'sc',
	7000
	);
insert into fee(course_id,
	category,
	fee)
	values(113,
	'ST',
	7000
	);



insert into fee(course_id,
	category,
	fee)
	values(114,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(114,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(114,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(114,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(114,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(115,
	'open',
	125000
	);

insert into fee(course_id,
	category,
	fee)
	values(115,
	'obc',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(115,
	'NT',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(115,
	'sc',
	15000
	);
insert into fee(course_id,
	category,
	fee)
	values(115,
	'ST',
	15000
	);



insert into fee(course_id,
	category,
	fee)
	values(116,
	'open',
	95000
	);

insert into fee(course_id,
	category,
	fee)
	values(116,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(116,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(116,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(116,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(116,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(116,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(116,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(116,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(116,
	'ST',
	58000
	);



insert into fee(course_id,
	category,
	fee)
	values(117,
	'open',
	65000
	);

insert into fee(course_id,
	category,
	fee)
	values(117,
	'obc',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(117,
	'NT',
	5000
	);

insert into fee(course_id,
	category,
	fee)
	values(117,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(117,
	'ST',
	3000
	);



insert into fee(course_id,
	category,
	fee)
	values(118,
	'open',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(118,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(118,
	'NT',
	10000
	);

insert into fee(course_id,
	category,
	fee)
	values(118,
	'sc',
	5000
	);
insert into fee(course_id,
	category,
	fee)
	values(118,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(119,
	'open',
	150000
	);

insert into fee(course_id,
	category,
	fee)
	values(119,
	'obc',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(119,
	'NT',
	90000
	);

insert into fee(course_id,
	category,
	fee)
	values(119,
	'sc',
	40000
	);
insert into fee(course_id,
	category,
	fee)
	values(119,
	'ST',
	30000
	);

insert into fee(course_id,
	category,
	fee)
	values(120,
	'open',
	125000
	);

insert into fee(course_id,
	category,
	fee)
	values(120,
	'obc',
	75000
	);

insert into fee(course_id,
	category,
	fee)
	values(120,
	'NT',
	40000
	);

insert into fee(course_id,
	category,
	fee)
	values(120,
	'sc',
	15000
	);
insert into fee(course_id,
	category,
	fee)
	values(120,
	'ST',
	15000
	);


/*
insert into fee(course_id,
	category,
	fee)
	values(121,
	'open',
	95000
	);

insert into fee(course_id,
	category,
	fee)
	values(121,
	'obc',
	45000
	);

insert into fee(course_id,
	category,
	fee)
	values(121,
	'NT',
	20000
	);

insert into fee(course_id,
	category,
	fee)
	values(121,
	'sc',
	12000
	);
insert into fee(course_id,
	category,
	fee)
	values(121,
	'ST',
	3000
	);




insert into fee(course_id,
	category,
	fee)
	values(122,
	'open',
	58000
	);

insert into fee(course_id,
	category,
	fee)
	values(122,
	'obc',
	29000
	);

insert into fee(course_id,
	category,
	fee)
	values(122,
	'NT',
	12000
	);

insert into fee(course_id,
	category,
	fee)
	values(122,
	'sc',
	8000
	);
insert into fee(course_id,
	category,
	fee)
	values(122,
	'ST',
	58000
	);


insert into fee(course_id,
	category,
	fee)
	values(123,
	'open',
	120000
	);

insert into fee(course_id,
	category,
	fee)
	values(123,
	'obc',
	70000
	);

insert into fee(course_id,
	category,
	fee)
	values(123,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(123,
	'sc',
	10000
	);
insert into fee(course_id,
	category,
	fee)
	values(123,
	'ST',
	5000
	);



insert into fee(course_id,
	category,
	fee)
	values(124,
	'open',
	77000
	);

insert into fee(course_id,
	category,
	fee)
	values(124,
	'obc',
	35000
	);

insert into fee(course_id,
	category,
	fee)
	values(124,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(124,
	'sc',
	2000
	);
insert into fee(course_id,
	category,
	fee)
	values(124,
	'ST',
	3000
	);


insert into fee(course_id,
	category,
	fee)
	values(125,
	'open',
	120000
	);

insert into fee(course_id,
	category,
	fee)
	values(125,
	'obc',
	70000
	);

insert into fee(course_id,
	category,
	fee)
	values(125,
	'NT',
	15000
	);

insert into fee(course_id,
	category,
	fee)
	values(125,
	'sc',
	10000
	);
insert into fee(course_id,
	category,
	fee)
	values(125,
	'ST',
	5000
	);
*/

