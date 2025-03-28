all:
	cobc --free -x -o ./out/hello hello.cob
	./out/hello
	cobc --free -x -o ./out/loan loan.cob
	./out/loan