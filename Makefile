CC = gcc
CFLAGS = -Wall
TARGET = main

SRCS = main.c isOdd.c isEven.c
OBJECTS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o $(TARGET)