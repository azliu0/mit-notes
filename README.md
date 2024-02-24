# mit-notes

The raw notes build can be found [here](https://azliu0.github.io/mit-notes/). All of the compiled pdfs can be found [here](https://www.azliu.cc/coursework).  

## why push pre-built files

I chose not to build, i.e., `latexmk`, on push because I have a small `last-edited` tag on the front page of all of my notes. If I were to build every time I updated my notes, then this tag would update to the current date on every single pdf, which wouldn't be ideal.

## explanation of build.sh

The HTML for the directory diagram is generated with the `tree` linux command. The javascript replaces all relevant file links with their location on `raw.githubusercontent`. This is because I wasn't able to figure out how to make the e.g. web-served `.tex` files open the raw code on click, rather than download on click. Replacing file links with files served directly from `raw.githubusercontent` seemed to solve this issue. 

## credit

Deployment workflow is inspired by Evan Chen's [Napkin](https://github.com/vEnhance/napkin). 
