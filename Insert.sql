insert into doctor values('1001','����','��',45,'13333333333','����ҽʦ','����','xxҽ�ƴ�ѧ','�Կ�','1203');
insert into doctor values('1002','����','Ů',33,'13000000000','����ҽʦ','�Ƴ�','xxҽ�ƴ�ѧ','������','504');
insert into doctor values('1003','����','��',60,'15555555555','����ҽʦ','Ժ��','xxҽ�ƴ�ѧ','���','1103');
insert into doctor values('1004','����','��',60,'15555444555','ר��','��Ժ��','xxҽ�ƴ�ѧ','�ڿ�','1103');

insert into patient values('2001','����','��',23,'323112199901012314','13223453321','123456','θ��',null);
insert into patient values('2002','С��','Ů',12,'321123201012212344','15423432111','abcd1234','����',null);
insert into patient values('2003','����','��',82,'321123194001212125','15249877485','ABCabc123','��Ѫѹ',null);

insert into drug values('3001','����',32.59,'�Ǵ���ҩ');
insert into drug values('3002','��ʹ��',0.86,'����ҩ');
insert into drug values('3003','��������',12.30,'����ҩ');

insert into medicaltec values('4001','Ѫ����',103.40,'ҽ��¥203');
insert into medicaltec values('4002','B��',88.30,'ҽ��¥430');
insert into medicaltec values('4003','CT',320.34,'ҽ��¥103');

insert into appointment values(1,'2001','�Կ�','1001','2004-09-12 11:06:08','2004-09-12 11:06:08','����һ',1,1);
insert into appointment values(2,'2002','������','1002','2004-09-12 11:06:08','2004-09-12 11:06:08','����һ',2,3);
insert into appointment values(3,'2003','�ڿ�','1004','2004-09-12 11:06:08','2004-09-12 11:06:08','����һ',3,4);
insert into appointment values(4,'2003','���','1003','2004-09-12 11:06:08','2004-09-12 11:06:08','����һ',4,4);
insert into takemedicine values(1,'2001','3001',5,1);
insert into medicaltecexam values(1,'2001','4001','2004-09-12 11:06:08',1);