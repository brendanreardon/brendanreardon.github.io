# Installation instructions
- Follow the [GitHub Pages](https://docs.github.com/pages) set up instructions, particularly [Creating a GitHub Page site with Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll)
- Download and install [LibYAML](https://github.com/yaml/libyaml) from GitHub
- Download and install [rbenv](https://github.com/rbenv/rbenv)
- Install Ruby using rbenv
- Install [Bundle](https://bundler.io/)

## Example
Download LibYAML, yaml-0.2.5.tar.gz, from [GitHub](https://github.com/yaml/libyaml/releases/tag/0.2.5)
```bash
cd ~/software
mv ~/Downloads/yaml-0.2.5.tar.gz .
tar -xzvf yaml-0.2.5.tar.gz
./bootstrap
./configure
make
make install
```

Install rbenv to manage Ruby and then install Ruby
```
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 3.2.2
rbenv global 3.2.2
```

Move to GitHub directory and create Gemfile
```
cd ~/Github/my-website/
touch Gemfile
```

Edit the Gemfile to specify the Jekyll gem
```
source "https://rubygems.org"

gem "jekyll"
```

Install bundle and specified gems
```
gem install bundle
bundle install
```

Install minima theme
```
gem install minima
```

Finally, start the Jekyll site
```
bundle exec jekyll new .
```

Launch the website locally,
```
bundle exec jekyll serve
```
