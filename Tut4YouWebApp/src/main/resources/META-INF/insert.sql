INSERT INTO Groups VALUES ('tut4youapp.student','authenticated user only')
INSERT INTO Groups VALUES ('tut4youapp.tutor','tutor of selected courses')
INSERT INTO Groups VALUES ('tut4youapp.moderator','polices tutors and students')

INSERT INTO Subject(subjectName) VALUES ('Arts')
INSERT INTO Subject(subjectName) VALUES ('Math')
INSERT INTO Subject(subjectName) VALUES ('Biology')
INSERT INTO Subject(subjectName) VALUES ('Chemistry')
INSERT INTO Subject(subjectName) VALUES ('Computer Science')

INSERT INTO Course(subjectName,courseName) VALUES ('Arts','Artists in Their Own Words')
INSERT INTO Course(subjectName,courseName) VALUES ('Arts','Introduction to the Visual Arts')
INSERT INTO Course(subjectName,courseName) VALUES ('Math','Mathematical Ideas')
INSERT INTO Course(subjectName,courseName) VALUES ('Biology','Introduction to Human Disease')
INSERT INTO Course(subjectName,courseName) VALUES ('Biology','Introduction to Marine Biology')
INSERT INTO Course(subjectName,courseName) VALUES ('Biology','General Biology I')
INSERT INTO Course(subjectName,courseName) VALUES ('Biology','General Biology II')
INSERT INTO Course(subjectName,courseName) VALUES ('Computer Science','Computer Security')

INSERT INTO ZipCode(maxRadius) VALUES (5)
INSERT INTO ZipCode(maxRadius) VALUES (3)
INSERT INTO ZipCode(maxRadius) VALUES (1)
INSERT INTO ZipCode(maxRadius) VALUES (10)

INSERT INTO Users(email,user_type,firstName,lastName,password,phoneNumber,username,university,hourlyRate,defaultZip,ZipCode_ID,securityQuestion,securityAnswer) VALUES ('amanda@gmail.com','Tutor','Amanda','Pan','CD639F5ECF3514CCC33B9985B55A118727A21782C04A714AB6A7634BE91DC4B6E8BFF6456B546E382EF00057550952F019993BBE6B8D84FE09C2B961149BFA2A','7141234567','apan','CSULB',15.00,'92704',1,'What was your childhood nickname?','amanda')
INSERT INTO Users(email,user_type,firstName,lastName,password,phoneNumber,username,university,hourlyRate,doNotDisturb,defaultZip,ZipCode_ID) VALUES ('andrew@gmail.com','Tutor','Andrew','Kaichi','6E99F65920D0B34E678A1FFBA8AA834568A1EF9EFB4D94AD0FB34B42FF2C49C39C228BF5FA619A647831BC0745C49D9FF2171A1513B8591B37FA83B6FC9E2827','7141234567','aKaichi','CSULB',15.50,1,'92708',2)
INSERT INTO Users(email,user_type,firstName,lastName,password,phoneNumber,username,university,hourlyRate,defaultZip,ZipCode_ID) VALUES ('keith@gmail.com','Tutor','Kieth','Tran','0C0BAAA4ECC4C21265E4E41B966C54B806315CDDFF946F6C8D86C352DD8E6F6B8D158F97C6DC310A82202FFC3785996A631E66D02E0CC8FC52623B74A0D646E0','7141234567','kTran','CSULB',20.00,'92703',3)
INSERT INTO Users(email,user_type,firstName,lastName,password,phoneNumber,username,university,hourlyRate,defaultZip,ZipCode_ID) VALUES ('syed@gmail.com','Tutor','Syed','Haider','E82C6184E06670CE275027FE9177D95C85E81AA04160FA6095924F514FEE43C3150F14D65EDC4D4ECD105D5E69C9A5B3A5CC7ECCA10C5EE9B80A25863FEA1E08','7141234567','sHaider','CSULB',13.00,'92655',4)
INSERT INTO Users(email,user_type,firstName,lastName,password,phoneNumber,username,university,hourlyRate) VALUES ('brenda@gmail.com','Tutor','Brenda','Hoffler','2BF2B4C1A129E7E193446EFA878EC1413E16EE01C55336C628CD1FE8BCB9DCD77425B439413684DCBA91E862E0A1FC57A8DEE54DA96E4642132CBC8468E5D7C4','7149876543','bHoff','UCI',16.00)
INSERT INTO Users(email,user_type,firstName,lastName,password,phoneNumber,username,university,hourlyRate) VALUES ('carmen@gmail.com','Tutor','Carmen','Dangos','290295170CF0721418A3FD7C77081CF3D5312DC9D5AD7D2A7C123E177BB1CF051B4D20491EC3CA6202E42088B556E6314D924FFB41C1D886AD62815EE1E5723C','7141111111','cDang','UCR',14.00)
INSERT INTO Users(email,user_type,firstName,lastName,password,phoneNumber,username,university) VALUES ('daniel@gmail.com','Student','Daniel','Louie','F68A41E098CF7ECB8924645BFE335941BEB068E7BEBAF0BBA26549C0693560DF08CACE69DEBBC59F6D2E30A328570DC331C1EC2F998A43CD0340B08065D4318A','7143254654','dLouie','CSUF')
INSERT INTO Users(email,user_type,firstName,lastName,password,phoneNumber,username,university,securityQuestion,securityAnswer) VALUES ('evan@gmail.com','Student','Evan','Chen','B30314C311F4ADF562B16BD400113EA39C6E08934600E2C5707195B5CCE66740402C18CB3F1A534C7C576C1F1E2F8A4914EBCD7894C99D23AA5A03C2F69EBA59','7146579513','eChen','CSUF','What was your childhood nickname?','evan')

INSERT INTO Groups_users(email,groupName) VALUES ('amanda@gmail.com','tut4youapp.moderator')
INSERT INTO Groups_users(email,groupName) VALUES ('andrew@gmail.com','tut4youapp.moderator')
INSERT INTO Groups_users(email,groupName) VALUES ('keith@gmail.com','tut4youapp.moderator')
INSERT INTO Groups_users(email,groupName) VALUES ('syed@gmail.com','tut4youapp.moderator')

INSERT INTO Groups_users(email,groupName) VALUES ('amanda@gmail.com','tut4youapp.tutor')
INSERT INTO Groups_users(email,groupName) VALUES ('andrew@gmail.com','tut4youapp.tutor')
INSERT INTO Groups_users(email,groupName) VALUES ('keith@gmail.com','tut4youapp.tutor')
INSERT INTO Groups_users(email,groupName) VALUES ('syed@gmail.com','tut4youapp.tutor')
INSERT INTO Groups_users(email,groupName) VALUES ('brenda@gmail.com','tut4youapp.tutor')
INSERT INTO Groups_users(email,groupName) VALUES ('carmen@gmail.com','tut4youapp.tutor')

INSERT INTO Groups_users(email,groupName) VALUES ('amanda@gmail.com','tut4youapp.student')
INSERT INTO Groups_users(email,groupName) VALUES ('andrew@gmail.com','tut4youapp.student')
INSERT INTO Groups_users(email,groupName) VALUES ('keith@gmail.com','tut4youapp.student')
INSERT INTO Groups_users(email,groupName) VALUES ('syed@gmail.com','tut4youapp.student')
INSERT INTO Groups_users(email,groupName) VALUES ('brenda@gmail.com','tut4youapp.student')
INSERT INTO Groups_users(email,groupName) VALUES ('carmen@gmail.com','tut4youapp.student')
INSERT INTO Groups_users(email,groupName) VALUES ('daniel@gmail.com','tut4youapp.student')
INSERT INTO Groups_users(email,groupName) VALUES ('evan@gmail.com','tut4youapp.student')

INSERT INTO Courses_tutors(email,courseName) VALUES ('amanda@gmail.com','General Biology I')
INSERT INTO Courses_tutors(email,courseName) VALUES ('amanda@gmail.com','General Biology II')
INSERT INTO Courses_tutors(email,courseName) VALUES ('amanda@gmail.com','Introduction to Human Disease')
INSERT INTO Courses_tutors(email,courseName) VALUES ('andrew@gmail.com','General Biology I')
INSERT INTO Courses_tutors(email,courseName) VALUES ('andrew@gmail.com','Introduction to Marine Biology')
INSERT INTO Courses_tutors(email,courseName) VALUES ('andrew@gmail.com','Mathematical Ideas')
INSERT INTO Courses_tutors(email,courseName) VALUES ('keith@gmail.com','Mathematical Ideas')
INSERT INTO Courses_tutors(email,courseName) VALUES ('keith@gmail.com','Artists in Their Own Words')
INSERT INTO Courses_tutors(email,courseName) VALUES ('syed@gmail.com','Mathematical Ideas')
INSERT INTO Courses_tutors(email,courseName) VALUES ('syed@gmail.com','Introduction to the Visual Arts')
INSERT INTO Courses_tutors(email,courseName) VALUES ('brenda@gmail.com','Introduction to the Visual Arts')
INSERT INTO Courses_tutors(email,courseName) VALUES ('amanda@gmail.com','Computer Security')
INSERT INTO Courses_tutors(email,courseName) VALUES ('andrew@gmail.com','Computer Security')
INSERT INTO Courses_tutors(email,courseName) VALUES ('keith@gmail.com','Computer Security')
INSERT INTO Courses_tutors(email,courseName) VALUES ('syed@gmail.com','Computer Security')

INSERT INTO Request(student_email,course_courseName,description,status) VALUES ('amanda@gmail.com','General Biology I','Photosynthesis process',0)
INSERT INTO Request(student_email,course_courseName,description,status) VALUES ('amanda@gmail.com','General Biology I','Kreb cycle',0)
INSERT INTO Request(student_email,course_courseName,description,status) VALUES ('keith@gmail.com','General Biology I','Kreb cycle',0)
INSERT INTO Request(student_email,course_courseName,description,status) VALUES ('daniel@gmail.com','General Biology I','Kreb cycle',0)
INSERT INTO Request(student_email,course_courseName,description,status,tutor_email) VALUES ('daniel@gmail.com','Computer Security','Hacking',1,'andrew@gmail.com')
INSERT INTO Request(student_email,tutor_email,course_courseName,description,status) VALUES ('evan@gmail.com','amanda@gmail.com','General Biology I','Photosynthesis process',1)
INSERT INTO Request(student_email,tutor_email,course_courseName,description,status) VALUES ('daniel@gmail.com','amanda@gmail.com','General Biology I','Photosynthesis process',1)
INSERT INTO Request(student_email,tutor_email,course_courseName,description,status) VALUES ('daniel@gmail.com','amanda@gmail.com','General Biology I','Photosynthesis process',4)
INSERT INTO Request(student_email,tutor_email,course_courseName,description,status) VALUES ('daniel@gmail.com','amanda@gmail.com','General Biology I','Photosynthesis process',4)


INSERT INTO Availability(DAYOFWEEK, ENDTIME, STARTTIME, TUTOR_EMAIL) VALUES ('Monday', '03:59:00', '02:00:00', 'amanda@gmail.com')
INSERT INTO Availability(DAYOFWEEK, ENDTIME, STARTTIME, TUTOR_EMAIL) VALUES ('Monday', '04:59:00', '04:00:00', 'amanda@gmail.com')
INSERT INTO Availability(DAYOFWEEK, ENDTIME, STARTTIME, TUTOR_EMAIL) VALUES ('Monday', '06:59:00', '05:00:00', 'amanda@gmail.com')

INSERT INTO Availability(DAYOFWEEK, ENDTIME, STARTTIME, TUTOR_EMAIL) VALUES ('Tuesday' '10:59:00', '11:00:00', 'amanda@gmail.com')
INSERT INTO Availability(DAYOFWEEK, ENDTIME, STARTTIME, TUTOR_EMAIL) VALUES ('Tuesday', '04:59:00', '04:00:00', 'amanda@gmail.com')
INSERT INTO Availability(DAYOFWEEK, ENDTIME, STARTTIME, TUTOR_EMAIL) VALUES ('Tuesday', '06:59:00', '05:00:00', 'amanda@gmail.com')

INSERT INTO Availability(DAYOFWEEK, ENDTIME, STARTTIME, TUTOR_EMAIL) VALUES ('Wednesday', '23:59:00', '00:00:00', 'amanda@gmail.com')

INSERT INTO Availability(DAYOFWEEK, ENDTIME, STARTTIME, TUTOR_EMAIL) VALUES ('Wednesday', '23:00:00', '00:00:00', 'andrew@gmail.com')
INSERT INTO Availability(DAYOFWEEK, ENDTIME, STARTTIME, TUTOR_EMAIL) VALUES ('Wednesday', '11:00:00', '02:00:00', 'andrew@gmail.com')
INSERT INTO Availability(DAYOFWEEK, ENDTIME, STARTTIME, TUTOR_EMAIL) VALUES ('Monday', '01:00:00', '23:59:00', 'andrew@gmail.com')

INSERT INTO Requests_tutors(id,email) VALUES (1,'amanda@gmail.com')
INSERT INTO Requests_tutors(id,email) VALUES (2,'amanda@gmail.com')
INSERT INTO Requests_tutors(id,email) VALUES (3,'andrew@gmail.com')

INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('daniel@gmail.com','He was a good tutor.', 1,'andrew@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('evan@gmail.com','I liked him.',1,'andrew@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('daniel@gmail.com','She did well.',5,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('evan@gmail.com','She did well.',5,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('keith@gmail.com','She did well.',5,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('keith@gmail.com','She was efficient.',5,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('evan@gmail.com','She did not quite understand my question.',4,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('syed@gmail.com','She did okay.',3,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('evan@gmail.com','She did okay.',3,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('evan@gmail.com','Her explanation was meh.',2,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('evan@gmail.com','She did well.',4,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('evan@gmail.com','She is terrible at explaining.',1,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('evan@gmail.com','She did well.',5,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('evan@gmail.com','She did bad.',2,'amanda@gmail.com')
INSERT INTO Rating(student_email,description,ratingValue,tutor_email) VALUES ('evan@gmail.com','She did okay.',3,'amanda@gmail.com')
