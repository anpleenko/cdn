default:

drop_repo:
	rm -rf .git
	git init
	git add .
	git commit -m 'init'
	git remote add origin git@github.com:vaeum/cdn.git
	git push -u -f origin --all

