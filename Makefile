LIBS = `pkg-config --libs-only-l --libs-only-L glib-2.0 gstreamer-0.10 cairo gtk+-2.0 libxml-2.0` \
       -lpthread

test:
	clay -timing -deps -o claytracks claytracks.clay $(LIBS)

clean:
	rm -f claytracks claytracks.d

-include claytracks.d
