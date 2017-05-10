cd ../wildfly-10.1.0.Final
git init
git remote add origin -f https://github.com/rhiemer/wildfly-10.1.0.Final.git
git config core.sparsecheckout true
echo "standalone/configuration/standalone-full.xml" >> .git/info/sparse-checkout
echo "modules/system/layers/base/com/mysql/*" >> .git/info/sparse-checkout
rm standalone/configuration/standalone-full.xml
git pull origin develop
