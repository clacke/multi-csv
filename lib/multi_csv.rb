require 'csv'

module MultiCSV
  autoload :VERSION, 'multi_csv/version'
  autoload :CSV, 'multi_csv/csv'

  def self.method_missing *args
    CSV.send *args
  end
end
