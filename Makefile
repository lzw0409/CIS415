CFLAGS=-W -Wall -g
PROGRAMS=mecat mesort findduplLL

all: $(PROGRAMS)

mecat: mecat.o mentry.o
	gcc $(CFLAGS) -o mecat $^

mesort: mesort.o mentry.o
	gcc $(CFLAGS) -o mesort $^

findduplLL: finddupl.o mentry.o mlistLL.o
	gcc $(CFLAGS) -o findduplLL $^

clean:
	rm -f *.o $(PROGRAMS)

mecat.o: mecat.c mentry.h
mesort.o: mesort.c mentry.h
finddupl.o: finddupl.c mlist.h mentry.h
mentry.o: mentry.c mentry.h
