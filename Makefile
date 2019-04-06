list-ip:
	./wana list-ip ios-example.com.access.log
list-hosts:
	./wana list-hosts ios-example.com.access.log
list-uri:
	./wana list-uri ios-example.com.access.log
hist-ip:
	./wana hist-ip ios-example.com.access.log
hist-load:
	./wana hist-load ios-example.com.access.log
a-date:
	./wana -a 2019-02-22 9:44 ios-example.com.access.log
b-date:
	./wana -b 2019-02-22 9:43 ios-example.com.access.log
a-and-b:
	./wana -a 2019-02-22 9:44 -b 2019-02-22 11:26 ios-example.com.log
vzor1:
	./wana list-ip ios-example.com.access.log |diff - vzor1.txt
vzor2:
	./wana list-hosts ios-example.com.access.log | diff - vzor2.txt
vzor3:
	./wana -a "2019-02-22 09:00" -b "2019-02-22 9:44:54" ios-example.com.access.log | diff - vzor3.txt
vzor4:
	./wana -a "2019-02-22 09:00" -b "2019-02-22 9:44:54" list-uri ios-example.com.access.log | diff - vzor4.txt
vzor5:
	./wana hist-ip ios-example.com.access.log | diff - vzor5.txt
vzor6:
	./wana -ip 2001:67c:1220:808::93e5:8ad hist-load ios-example.com.access.log.1 | diff - vzor6.txt
vzor7:
	./wana -uri "/robots\.txt" list-hosts *log* | diff - vzor7.txt
vzor8:
	./wana -uri "/robots\.txt" hist-load *log* | diff - vzor8.txt
run-all:
	./wana list-ip ios-example.com.access.log |diff - vzor1.txt
	./wana list-hosts ios-example.com.access.log | diff - vzor2.txt
	./wana -a "2019-02-22 09:00" -b "2019-02-22 9:44:54" ios-example.com.access.log | diff - vzor3.txt
	./wana -a "2019-02-22 09:00" -b "2019-02-22 9:44:54" list-uri ios-example.com.access.log | diff - vzor4.txt
	./wana hist-ip ios-example.com.access.log | diff - vzor5.txt
	./wana -ip 2001:67c:1220:808::93e5:8ad hist-load ios-example.com.access.log.1 | diff - vzor6.txt
	./wana -uri "/robots\.txt" list-hosts *log* | diff - vzor7.txt
	./wana -uri "/robots\.txt" hist-load *log* | diff - vzor8.txt
fail1:
	./wana list-ip -uri ios-example.com.access.log
fail2:
	./wana ios-example.com.access.log list-ip
fail3:
	./wana list-ip list-ip
fail4:
	./wana ios-example.com.access.log -uri
