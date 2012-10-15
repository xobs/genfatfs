SOURCES=diskio.c genfatfs.c fatfs/src/ff.c \
	fatfs/src/option/ccsbcs.c fatfs/src/option/syscall.c
OBJECTS=$(SOURCES:.c=.o)
EXEC=genfatfs
MY_CFLAGS += -Wall -Ifatfs/src
MY_LIBS +=

all: $(OBJECTS)
	$(CC) $(LIBS) $(LDFLAGS) $(OBJECTS) $(MY_LIBS) -o $(EXEC)

clean:
	rm -f $(EXEC) $(OBJECTS)

.c.o:
	$(CC) -c $(CFLAGS) $(MY_CFLAGS) $< -o $@

