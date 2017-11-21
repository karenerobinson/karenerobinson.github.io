all: build push_argento

build:
	jekyll build

push_argento:
	rsync -avc * tgarner@argento:/home/tgarner/projects/third_party/github.com/thomas536/agency-jekyll-theme/

push_dreamhost:
	rsync -avc --delete --progress --exclude='.git/' --exclude=LICENSE --exclude=README.md _site/ tkadmin@thomasandkaren.us:./thomasandkaren.us/

push_github:
	git push

serve:
	jekyll serve -w -H 0.0.0.0
