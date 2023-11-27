#!/bin/bash

# generate tree
cd notes
tree -H . -I 'index.html|*.fdb_latexmk|*.aux|*.fls|*.out|*.pre|*.synctex*|*.toc' -D --timefmt='%b %d %Y %R' --charset utf-8 -T 'mit-notes' > index.html

# make urls clickable
sed '$d' index.html > temp.html
echo "<script>
	const displayTypes = ['tex', 'sty', 'asy'];
	let btns = document.querySelectorAll('a');
	for (let i = 0; i < btns.length; ++i) {
		let type = btns[i].href.slice(btns[i].href.length-3);
		if (displayTypes.includes(type)) {
			let path = btns[i].href.slice(btns[i].href.indexOf('/', btns[i].href.indexOf('mit-notes')));
			btns[i].href = 'https://raw.githubusercontent.com/azliu0/mit-notes/gh-pages' + path;
		}
	}
</script>
</html>
" >> temp.html
mv temp.html index.html
cd ..

# build dist
mkdir dist
cp -r notes/* dist
