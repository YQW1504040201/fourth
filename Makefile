hello : main.o solution.o
	g++ -o hello main.o solution.o
main.o : main.cpp solution.h
	g++ -g -c main.cpp
solution.o : solution.h solution.cpp
	g++ -g -c solution.cpp
clean :
	rm main.o solution.o hello
