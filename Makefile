book-name = micro_cmd		#书名和分支名
book-dir = book-micro_cmd
html-master = html-hub
commit-m = "update book cmd"

## 本地安装 book.json 中配置的插件
plugin:  
	gitbook install

## 生成网站
site:
	gitbook build . book-$(book-name)

## push html to github
move_html:
	cp -Rv $(book-dir)/* ../$(html-master)/$(book-dir)

##  push book to github
push:
	git push origin $(book-name)

## 本地服务  
serve:
	gitbook serve

## 初始化书籍结构
init:
	gitbook init

## 清除历史数据
clean:
	rm -rIv ./book-$(book-name) 
	rm ./_book/
