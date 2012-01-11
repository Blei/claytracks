LIBS = `pkg-config --libs-only-l --libs-only-L glib-2.0 gstreamer-0.10 cairo gtk+-2.0 libxml-2.0` \
       -lpthread

SRCS = test.clay parallel/parallel.unix.clay

test: $(SRCS)
	clay -g -o test test.clay $(LIBS)

clean:
	rm -f test
