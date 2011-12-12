LINK_FLAGS = `pkg-config --libs-only-l --libs-only-L glib-2.0 gstreamer-0.10 cairo gtk+-2.0 libxml-2.0`

test: test.clay api/api.clay
	clay -o test ${LINK_FLAGS} test.clay

clean:
	rm -f test
