# MIT Thesis

This repo contains my MIT PhD thesis.

Author: Claire Duvallet - ([homepage](https://cduvallet.github.io/))    
Defense date: January 11, 2019

The final submitted version of my thesis is in [duvallet_thesis_final.pdf](./duvallet_thesis_final.pdf).

A pdf of my defense slides is in [presentation/2019-01-11.defense.pdf](presentation/2019-01-11.defense.pdf).

# MIT Thesis Template

I forked this from Scott W Olesen's MIT Thesis Template repo.

(Note: this repo is not the actual forked one, because GitHub Large File Storage does not allow you to push LFS objects to a public fork unless you have write access to the root directory, which I don't (because it's Scott's)
The original forked repo is [here](https://github.com/cduvallet/mit-thesis/).).

Check out Scott's [README](https://github.com/swo/mit-thesis) for more
information on this template.

He got this template from [here](http://web.mit.edu/thesis/tex), modified some of the files, removing comments and rewriting the readme.
I made a few additional modifications, separating the acknowledgments into their own file and adding a few additional commands to the Makefile (e.g. to make the document without appendices, and to make just the intro and conclusion text).

## The files here and what they do

Unlike Scott, I did not include any pdf files wholesale (because all of my papers were amenable to being included directly as `.tex` files).
Check out Scott's repo for examples on how to include `.pdf` files wholesale.

### The front matter

This is where the template really shines. It's confusing how to typeset
all those pages.

- The abstract of the thesis, in plain text, goes into `abstract.tex`.
- `contents.tex` says how the Table of Contents should be typeset. If you want a list of figures or something like that, it will also go in here.
- `cover.tex` contains a lot of information: the title of the thesis, your name, etc.
- `main.tex` is where you include packages, change the formatting of the thesis, and specify what files (i.e., the chapters, see below) will go into the document.

If your chapters contain packages that aren't already in `main.tex`, you'll need to put them in here.

### The main body

The main body of the thesis goes in the `.tex` files. I put each chapter
into its own file:

- Chapter 1 in `chap1.tex`
- Chapter 2 in `chap_aspiration.tex`
- Appendix A in `app_aspiration.tex`

and so forth.

These main chapter `.tex` files are included in `main.tex` (with `\include{}` commands).
These `.tex` files only contain the basic info about the chapter, like title and author, and any other text that shows up on the first page of each chapter.

The majority of each chapter's content is stored in separate folders corresponding to each (e.g. `aspiration`, `meta-analysis`, etc.).
These contain the `.tex` files I previously prepared for submitting these papers, and each folder has its own sub-folder containing all the figures.
Each of these also has its own `.bib` file with references.

The main chapter `.tex` files (the ones that start with `chap_`) specify the graphicspath to use.
The content of the chapter is incorporated into the chapter with the `\input{}` function.

### Including pdfs

I didn't do this, but Scott did in [his thesis](https://github.com/swo/mit-thesis#including-pdfs).

### Including images

The pdfs I included were mostly the manuscript files from submitting the papers, which means
that the figures were kept separate. I therefore put the figures and their captions directly
into the LaTeX chapter files. Those figures are mostly in the subfolders mentioned above.

### Bibliography

The bibliography information is in `main.bib`, which is a
[BibTex](https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management) file.
All the citations that you will reference in the TeX files go in there.

The file `biblio.tex` contains the information about how to typeset
the bibliography. It is the last "chapter" in the thesis.

### The other stuff

The style files `lgrind.sty` and `mitthesis.cls` help make the magic of the template happen.
I didn't mess with these.

## How to use this

1. Figure out what your chapters are going to be. Write them in LaTeX, including pdfs as you need.
2. Redo the front matter stuff in `contents.tex`, `cover.tex`, and `main.tex`.
3. Change any packages or formatting in `main.tex`.
4. Actually make the document using the `Makefile`, which requires [latexmk](https://www.ctan.org/pkg/latexmk/?lang=en). Running `make` will make the document, `make view` should open it with a viewer, and `make clean` should clean up anything made from the source files.
5. Consider putting it under version control, e.g., with [git](https://git-scm.com/).

## Help!

You can email `thesis@mit.edu`. (Note that this email goes to Scott and not me).
