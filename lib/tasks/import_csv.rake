require 'csv'

etf_primary_attribute = :ticker
stock_primary_attribute = :e_signal_ticker

# Maps column names in CSV file to the name of the row in the database
conversions = {
    'holding_type' => 'type'
}



# Converts CSV Column name to column name of the database
def csv_column_to_db_column(csv_column_name)
  csv_column_name.gsub(/\s+/, "").underscore
end

def model_for_attribute(column_name)
  models = [Etf, Stock]

  models.each do |model_class|
    return model_class if model_class.column_names.include? column_name
  end
end

desc "Loads CSV file"
namespace :csv do

  desc "imports the csv and populates db"
  task :import => :environment do

    csv_filename = "./lib/tasks/etf_BICK_components.csv"

    File.open(csv_filename, "r") do |csv_file|

      csv_row_names = CSV.read csv_file

      # Column names are in the first row
      column_names = csv_row_names.shift.map do |csv_column_name|
        csv_column_to_db_column(csv_column_name)
      end

      print column_names << "\n"

      csv_row_names.each do |row_columns|
        stock = Stock.new

        row_hash = Hash[column_names.zip(row_columns)]

        # Check if this row already belongs to an ETF:
        etf = Etf.find_or_create_by_composite_ticker(row_hash['composite_ticker']) do
          puts "Creating ETF: #{row_hash['composite_ticker']}"
        end

        # Create a new stock component:
        stock = Stock.new()

        row_hash.each do |cell_name, cell_value|

          column_name = csv_column_to_db_column( column_names[index] )

          model = model_for_attribute(column_name)

        end

        row_columns.each_with_index do |column_value, index|

          column_name = csv_column_to_db_column( column_names[index] )

          # Which database model does this particular CSV column belong to?
          model = model_for_attribute(column_name)

          if model == Etf
            puts "\t column #{column_name} belongs to ETF"
          elsif model == Stock
            puts "\t column #{column_name} belongs to Stock"
            stock[column_name] = column_value
          else
            puts "\t\tWarning: column name: #{column_name} doesn't belong to Stock or ETF model"
          end

          # Todo: Add component

        end

        stock.save
        puts "Created a new stock: #{stock.inspect}"
        etf.stocks << stock
      end

    end
  end

end