LIB_NAME := libtls_int.so
CC := clang

$(LIB_NAME): main.o
	$(CC) -shared -o $(LIB_NAME) main.o

main.o: main.c
	$(CC) -fPIC -o main.o -c main.c

clean:
	rm -f $(LIB_NAME) main.o
