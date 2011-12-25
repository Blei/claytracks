LIBS = `pkg-config --libs-only-l --libs-only-L glib-2.0 gstreamer-0.10 cairo gtk+-2.0 libxml-2.0` \
       -lpthread

OBJS = test.o parallel/parallel.unix.o

test: $(OBJS)
	gcc -o test $(OBJS) $(LIBS)

%.o: %.clay
	clay -c -o $@ $<

clean:
	rm -f $(OBJS)
	rm -f test
