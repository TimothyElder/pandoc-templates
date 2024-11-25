This is an example of how to use a CSL file for formatting citation output format with LaTeX. This is for the unique time in which you want to use LaTeX but you also want to use custom citation formats, which is best accomodated with the Citation Style Language paradigm.

You must include the following:

```latex
\usepackage{citation-style-language} 
\cslsetup{style = asa}                  % American Sociological Association citation style
\addbibresource{references.bib}         % Path to you bib file
```

At compile time you have to use a unique tool chain which looks like:

```Makefile
xelatex -> citeproc-lua -> xelatex -> xelatex
```

[`citeproc-lua`](https://github.com/zepinglee/citeproc-lua) is a lua filter that deals with converting the input from your references to something that LaTeX understands, and it supports a number of input formats including:

- .bib
- .json
- .yaml