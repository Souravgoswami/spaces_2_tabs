# Spaces 2 Tabs

## It converts:
+ \s\s => \t
+ \s\s\s\s => \t\t
+ \s => \s
+ \s\s\s => \t\s
+ \t => \t
+ \r\n\n => \r\n\t

### For Requiring the core file:
A short file called core_conversion.rb, which can be required and can be called on String.
It defines spaces_to_tabs() on String class.

It checks if the number of spaces is odd or not first, then it converts them to spaces.

For example:
"\s\sHello!".spaces_to_tabs()    # => "\tHello!"

### For Rails 6.0
Execute spaces_2_tabs.rb
It lets you convert spaces to tabs in your rails applications.
It globs over directories and checks for spaces in the beginning of a file.
Then it converts each line with a tab if they starts with 2 spaces.

---

Test:

	```
	rspec spec/test.rb
	```
