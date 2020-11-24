all: README.md

README.md: guessinggame.sh
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo "" >> README.md
	echo -n "Number of code lines: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "" >> README.md
	echo -n "This README was generated the " >> README.md
	date +%F >> README.md
	echo "" >> README.md
clean:
	rm README.md
