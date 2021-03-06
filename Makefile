OBJS := \
	helloworld.o \

OUTFILE := output

.PHONY: all clean

all: $(OUTFILE)

$(OBJS): %.o: %.c
	g++ -c -Wall -std=c++14 $< -o $@

$(OUTFILE): $(OBJS)
	g++ $(OBJS) -o $(OUTFILE)

clean:
	rm -f *.o $(OUTFILE)