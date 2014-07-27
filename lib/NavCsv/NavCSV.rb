require 'csv'


# NavCSV:
#
#   @author Anthony Erlinger
class NavCSV < CSV

  etf_primary_column = "Composite Ticker"

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

  def self.open(*args)
    super.open(args)
  end

  def self.read(*args)
    rows = super.read(*args)

    # Grab column names in the first row
    column_names = rows.shift.map do |column_name|
      csv_column_to_db_column(column_name)
    end

    rows.each do |row_columns|
      row_hash = Hash[column_names.zip(row_columns)]

      # Check if this row is already represented by an ETF:
      etf = Etf.find_or_create_by_composite_ticker(row_hash['composite_ticker'])

      stock = Stock.new

      row_hash.each do |cell_name, cell_value|
        column_name = csv_column_to_db_column(cell_name)

      end
    end

  end

  def column_names

  end

  # Returns ETF models that exist in this CSV file
  def etfs

  end

  # Returns Stock models that exist in this CSV file
  def stocks

  end

  # Returns Component models that exist in this CSV file
  def components

  end

end