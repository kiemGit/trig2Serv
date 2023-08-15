# import database palembang from file [D:\hakim\palembang\dariSepta\PIM_new.sql], into server 1 and server 2
# add privileges for pos and cpms [D:\hakim\cpms\privileges.sql\

# create directory [$ mkdir t]<br>
# $ cd t<br>
# $ git clone <br>
# import table, trigger and function into database [trs], run script bellow<br>
	+ [sap@localhost t]$ ./restoreDb.sh<br>
	+ [sap@localhost t]$ ./restoreTriger.sh<br>
# show trigger / select trigger<br>
	+ select information_schema.triggers.trigger_name, information_schema.triggers.trigger_schema from information_schema.triggers;<br>
# show function / select function<br>
	+ SELECT routine_schema as "Database", routine_name, routine_type FROM information_schema.routines WHERE routine_schema = 'trs' ORDER BY routine_name ASC;<br>
# test transaction using application POS <br>
	+ connect app to db 1<br>
	+ test insert into server 2 [trs]<br>
		+ POS configuration<br>
			+ Type POS = [POS Masuk]<br>
			+ Area = [Mobil & Motor]<br>
			+ Login, [User = test, Pass = 1234]<br>
	+ test insert into server 2 [trscps]<br>
		+ POS configuration<br>
			+ Select [CPS] tab<br>
			+ Select [Kode] POS cps<br>
			+ Select [MMB1] Pos Masuk<br>
	+ test insert into server 2 [regdetail]<br
		+ Login into CPMS
			+ Select [Pendaftaran] button - [Tambah] button<br>
			+ add new member<br>
	+ test insert into server 2 [rnewdetail]<br
		+ Login into CPMS
			+ Select [Perpanjangan] button - [Tambah] button<br>
			+ add [perpanjangan] member<br>
			