all: README.md

README.md: guessinggame.sh
	echo "The-Unix-Workbench-Peer-Graded-Assignment-guessinggame" > README.md
	echo "Make date: " >> README.md
	date >> README.md
	echo "Number of lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
