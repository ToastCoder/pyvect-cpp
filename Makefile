# MAKEFILE FOR BUILDING CVECT HEADER FILE

# COMMAND FOR COMPILATION USING C
compile_c:
	gcc src/cvect.c src/area/area.c src/cent/cent.c src/dist/dist.c src/prod/prod.c src/section/section.c src/volume/volume.c main.c -o main -lm

# COMMAND FOR COMPILATION USING C++
compile_cpp:
	gcc -c -o cvect.o src/cvect.c -lm
	gcc -c -o area.o src/area/area.c -lm
	gcc -c -o cent.o src/cent/cent.c -lm
	gcc -c -o dist.o src/dist/dist.c -lm
	gcc -c -o prod.o src/prod/prod.c -lm
	gcc -c -o section.o src/section/section.c -lm
	gcc -c -o volume.o src/volume/volume.c -lm
	g++ -c -o main_cpp.o main.cpp -lm
	g++ -o main cvect.o area.o cent.o dist.o prod.o section.o volume.o main_cpp.o -lm

# COMMAND FOR RUNNING THE EXECUTABLE
run:
	./main

# COMMAND FOR CLEANING THE EXECUTABLE
clean:
	rm main
	rm cvect.o
	rm area.o
	rm cent.o
	rm dist.o
	rm prod.o
	rm section.o
	rm volume.o
	rm main_cpp.o
	rm main.o
	rm main.exe

# COMMAND FOR ONE TIME TESTING OF THE PROGRAM IN C
execute_c:
	gcc src/cvect.c src/area/area.c src/cent/cent.c src/dist/dist.c src/prod/prod.c src/section/section.c src/volume/volume.c main.c -o main -lm
	./main
	rm main

# COMMAND FOR ONE TIME TESTING OF THE PROGRAM IN C++
execute_cpp:
	gcc -c -o cvect.o src/cvect.c -lm
	gcc -c -o area.o src/area/area.c -lm
	gcc -c -o cent.o src/cent/cent.c -lm
	gcc -c -o dist.o src/dist/dist.c -lm
	gcc -c -o prod.o src/prod/prod.c -lm
	gcc -c -o section.o src/section/section.c -lm
	gcc -c -o volume.o src/volume/volume.c -lm
	g++ -c -o main_cpp.o main.cpp -lm
	g++ -o main cvect.o area.o cent.o dist.o prod.o section.o volume.o main_cpp.o -lm
	./main
	rm main
	rm cvect.o
	rm area.o
	rm cent.o
	rm dist.o
	rm prod.o
	rm section.o
	rm volume.o
	rm main_cpp.o
	rm main.o
	rm main.exe

# COMMAND FOR AUTOMATED PUSH
autopush:
	git pull
	git add *
	git commit -m "Some changes"
	git push

