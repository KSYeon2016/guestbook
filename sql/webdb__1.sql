desc GUESTBOOK;

drop SEQUENCE seq_guestbook;
create sequence seq_guestbook
start with 1
INCREMENT by 1;

select no, name, password, content, reg_date from GUESTBOOK;
insert into GUESTBOOK values(seq_guestbook.nextval, '김숙연', '1234', '내용', sysdate);
commit;

delete from GUESTBOOK where no=1 and PASSWORD='1234';
commit;