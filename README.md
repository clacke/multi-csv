To use this gem, just add this to your `Gemfile`:

  gem 'multi-csv', :github => 'clacke/multi-csv'

And in your code use it like you would use FasterCSV:

  MultiCSV.parse("Foo,More,Columns\nBar,no,3") 

If the native CSV in your Ruby uses the FasterCSV interface, like in e.g. MRI 1.9,
then all your calls to MultiCSV will be passed on to the CSV module.

If your Ruby uses the old-style interface for its native CSV, then this gem
requires the FasterCSV gem for you, and all your calls to MultiCSV will be passed
on to the FasterCSV module.

For more information on what methods are available, see the documentation for
the 1.9 CSV module: http://rubydoc.info/stdlib/csv/frames
