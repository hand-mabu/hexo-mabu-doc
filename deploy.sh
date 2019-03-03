mkdir ./deploy-git
cd ./deploy-git
git init
git config --global push.default matching
git config --global user.email "cmemory180819@aliyun.com"
git config --global user.name "CMemorY180819"
git remote add origin https://${GitHubKEY}@github.com/hand-mabu/hexo-mabu-doc.git
git checkout -b gh-pages
git pull origin gh-pages
rm -rf ./*
cp -rf ../public/* ./
git add --all .
git commit -m "Travis CI Docs Auto Builder"
git push --quiet --force origin HEAD:gh-pages