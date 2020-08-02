# indent_2_spaces_to_a_tab.rb
### For Rails 6.0

It lets you convert spaces to tabs in your rails applications.
It globs over directories and checks for spaces in the beginning of a file.
It checks if the number of spaces is odd or not first, then it converts them to spaces:

+ \s\s => \t
+ \s\s\s\s => \t\t
+ \s => \s
+ \s\s\s => \t\s
+ \t => \t
+ \r\n\n => \r\n\t

---

Test:
	Run `rspec spec/test.rb`
