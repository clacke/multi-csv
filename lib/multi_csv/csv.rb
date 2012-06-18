require 'csv'

module MultiCSV
  if ::CSV.const_defined?(:StringReader)
    require 'fastercsv'
    CSV = ::FasterCSV
  else
    CSV = ::CSV
  end
end
