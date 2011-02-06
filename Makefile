LINK_FLAGS = `pkg-config --libs-only-l glib-2.0 gstreamer-0.10` -l expat

test: test.clay
	clay -o test ${LINK_FLAGS} test.clay

clean:
	rm -f test
