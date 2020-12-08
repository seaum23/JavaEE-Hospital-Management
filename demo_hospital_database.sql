DROP DATABASE IF EXISTS `demo_hospital`;
create database `demo_hospital`;
use `demo_hospital`;
create table depertment(
	`depId` int auto_increment,
    `depName` varchar(255),
    `depEmploy` varchar(255),
    `depDes` text,
    primary key(`depId`)
);
create table doctors(
	`docId` int auto_increment,
    `docName` varchar(255),
    `depId` int not null,
    `docQl` varchar(255),
    `docDes` text,
    `visitingTime` varchar(5),
    primary key(`docId`),
    foreign key (`depId`) references `depertment`(`depId`)
);
create table price(
	`priceId` int auto_increment,
    `priceAmount` varchar(255),
    `priceBenifit` text,
    primary key(`priceId`)
);
create table contact(
	`conAdd` varchar(255),
    `conPhn` varchar(255),
    `conMail` varchar(255),
    `conWeb` varchar(255)
);
create table about(
	`hmTxt` text,
    `abtTxt` text
);


create table userInfo(
	`userId` int auto_increment,
    `userName` varchar(255),
    `email` varchar(255),
    `password` varchar(255),
    primary key(`userId`)
);

create table patient(
	`patId` int auto_increment,
    `patName` varchar(255),
    `docId` int not null,
    `phone` varchar(255),
    `date` varchar(255),
    `age` varchar(255),
    `userId` int not null,
    primary key(`patId`),
    foreign key (`docId`) references `doctors`(`docId`),
    foreign key (`userId`) references `userInfo`(`userId`)
);


insert into `depertment` values (1,'Neurology','Neurologist','Neurology is the branch of medicine concerned with the study and treatment of disorders of the nervous system. The nervous system is a complex, sophisticated system that regulates and coordinates body activities. It has two major divisions: Central nervous system: the brain and spinal cord.');
insert into `depertment` values (2,'Ophthalmology','Ophthalmologist','Ophthalmology is a branch of medicine and surgery which deals with the diagnosis and treatment of eye disorders. An ophthalmologist is a specialist in ophthalmology. The credentials include a degree in medicine, followed by additional four to five years of ophthalmology residency training.');
insert into `depertment` values (3,'Medicine','Medicine','Medicine is the science and practice of establishing the diagnosis, prognosis, treatment, and prevention of disease. Medicine encompasses a variety of health care practices evolved to maintain and restore health by the prevention and treatment of illness. Contemporary medicine applies biomedical sciences, biomedical research, genetics, and medical technology to diagnose, treat, and prevent injury and disease, typically through pharmaceuticals or surgery, but also through therapies as diverse as psychotherapy, external splints and traction, medical devices, biologics, and ionizing radiation, amongst others.');
insert into `depertment` values (4,'X-Ray','X-Ray','An X-ray, or X-radiation, is a penetrating form of high-energy electromagnetic radiation. Most X-rays have a wavelength ranging from 10 picometres to 10 nanometres, corresponding to frequencies in the range 30 petahertz to 30 exahertz (3×1016 Hz to 3×1019 Hz) and energies in the range 124 eV to 124 keV.');
insert into `depertment` values (5,'Surgical','Surgery','Surgery[a] is a medical specialty that uses operative manual and instrumental techniques on a person to investigate or treat a pathological condition such as a disease or injury, to help improve bodily function or appearance or to repair unwanted ruptured areas.');
insert into `depertment` values (6,'Cardiology','Cardiologist','Cardiology is the study and treatment of disorders of the heart and the blood vessels. A person with heart disease or cardiovascular disease may be referred to a cardiologist. Cardiology is a branch of internal medicine. A cardiologist is not the same as a cardiac surgeon.');
insert into `depertment` values (7,'Dentistry','Dentist','Dentistry, also known as dental medicine and oral medicine, is a branch of medicine that consists of the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity, commonly in the dentition but also the oral mucosa, and of adjacent and related structures and tissues, particularly in the maxillofacial (jaw and facial) area.[1] Although primarily associated with teeth among the general public, the field of dentistry or dental medicine is not limited to teeth but includes other aspects of the craniofacial complex including the temporomandibular joint and other supporting, muscular, lymphatic, nervous, vascular, and anatomical structures.');
insert into `depertment` values (8,'Pediatrics','Pediatrician','Pediatrics is the branch of medicine that involves the medical care of infants, children, and adolescents.');

insert into `doctors` values(1,'Zakir Hossain',6,'FCPS','I am a doctor','14:00');
insert into `doctors` values(2,'Monir Khan',6,'FCPS','I am a doctor','15:00');
insert into `doctors` values(3,'Zubayer Rahman',1,'FCPS','I am a doctor','16:00');
insert into `doctors` values(4,'Konika Nasrin',2,'FCPS','I am a doctor','18:00');
insert into `doctors` values(5,'Johura Khatun',3,'FCPS','I am a doctor','07:00');
insert into `doctors` values(6,'Rokeya Ahmed',4,'MBBS','I am a doctor','06:00');
insert into `doctors` values(7,'Zunayed Rahman',5,'FCPS','I am a doctor','01:00');
insert into `doctors` values(8,'Monika Nasrin',7,'Dental','I am a doctor','12:00');

insert into `price` values(1,7000,'All doctor free visit');
insert into `price` values(2,14000,'All doctor free visit and all test free');
insert into `price` values(3,30000,'All doctor visit, all test and bed free');

insert into `contact` values('Shaymoli','01731509200','notunHospital@hos.com','www.hos.com');

insert into `about` values ('This is the home of our web site. Hope you get well soon','This is our about. We are professional and caring to our patients. We hope you get well soon');

insert into `patient` (`patName`,`docId`,`phone`,`date`,`age`,`userId`) values ('Samin',1,'01731509208','4/12/2020','25','1');
