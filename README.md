# Script

### Installation
```
# Installation
vim Gemfile
# add "gem 'assert_value'" to Gemfile
bundle install
```
### First Time use
```
# First Time Use
vim basic_test.rb
assert_value 1 + 1
# Note: we don't specify expected value
ruby basic_test.rb
# Accept new value? yes
ruby basic_test.rb
# Note this time it pass
vim basic_test.rb
# See right hand side changed
assert_value 1 + 1 == 2
ruby basic_test.rb
# Accept new value? yes
ruby basic_test.rb
vim basic_test.rb
# See right hand side changed
```
### Advanced Example
* Small sinatra(CLI?) app. Github API. Request to get some data
* Run test without right hand side
* Change output format (JSON to formatting)
* Update right hand side
* The main goal is to show it is easy to make tests

# Play Recorded asciinema Episode
```
asciinema play asciinema/install.json
```
