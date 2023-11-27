# mit-notes

See [here](https://azliu0.github.io/mit-notes/). 

## explanation of build.sh

The HTML for the directory diagram is generated with the `tree` linux command. The javascript replaces all relevant file links with their location on `raw.githubusercontent`. This is because I wasn't able to figure out how to make the e.g. web-served `.tex` files open the raw code on click, rather than download on click. Replacing file links with files served directly from `raw.githubusercontent` seemed to solve this issue. 

## credit

Deployment workflow is inspired by Evan Chen's [Napkin](https://github.com/vEnhance/napkin). 
