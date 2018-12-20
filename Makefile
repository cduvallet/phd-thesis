all: main intro no-app

main:
	latexmk --pdf main

intro:
	latexmk --pdf intro_and_conclusion

no-app:
	latexmk --pdf main_no_appendix

view:
	open main.pdf

clean:
	latexmk -C
