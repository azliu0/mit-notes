#!/bin/bash

# generate tree
cd notes
tree -H . -I 'index.html' -D --timefmt='%b %d %Y %R' --charset utf-8 -T 'mit-notes' > index.html

# make urls clickable
sed '$d' index.html > temp.html
echo "<script>
	let btns = document.querySelectorAll('a');
	for (let i = 0; i < btns.length; ++i) {
		let type = btns[i].href.slice(btns[i].href.length-3);
		if (type === 'tex' || type === 'sty') {
			let path = btns[i].href.slice(btns[i].href.indexOf('/', btns[i].href.indexOf('mit-notes')));
			btns[i].href = 'https://raw.githubusercontent.com/yellowtomato98/mit-notes/gh-pages' + path;
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
