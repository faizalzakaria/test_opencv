CFLAGS = `pkg-config --cflags opencv`
LIBS = `pkg-config --libs opencv`

all: test test_camera

test_camera: test_camera.o
	g++ $(CFLAGS) $(LIBS) test_camera.o -o test_camera

test: main.o
	g++ $(CFLAGS) $(LIBS) main.o -o test

main.o: main.cpp
	g++ -c main.cpp

test_camera.o: test_camera.cpp
	g++ -c test_camera.cpp

clean:
	rm -rf *o test test_camera
