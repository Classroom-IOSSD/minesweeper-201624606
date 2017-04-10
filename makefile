OBJS = minesweeper.o conio.c
HEADERS = conio.h
CFLAGS = -g -Wall
TARGET = minesweeper
CC = gcc

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $<

$(OBJS): $(HEADERS)

clean:
	$(RM) $(OBJS) $(TARGET)
