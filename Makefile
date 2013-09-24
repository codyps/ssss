all: ssss-split ssss-combine ssss.1 ssss.1.html

ssss-split: ssss.c
	$(CC) $(CFLAGS) -lgmp -o ssss-split ssss.c

ssss-combine: ssss-split
	ln -f ssss-split ssss-combine

ssss.1: ssss.manpage.xml
	xmltoman ssss.manpage.xml > ssss.1

ssss.1.html: ssss.manpage.xml
	xmlmantohtml ssss.manpage.xml > ssss.1.html

clean:
	rm -rf ssss-split ssss-combine ssss.1 ssss.1.html
