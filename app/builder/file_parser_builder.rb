class FileParserBuilder
  attr_accessor :file_path, :file_type

  def initialize(file_path)
    @file_path = file_path
  end

  def with_type(file_type)
    @file_type = file_type
    self
  end

  def build
    case @file_type
    when :csv
      CsvParser.new(@file_path)
    when :json
      JsonParser.new(@file_path)
    when :xml
      XmlParser.new(@file_path)
    else
      raise "Unsupported file type"
    end
  end
end

# This FileParserBuilder.new(file_path).with_type('csv').build
# can be called in Model or Interactor or Service wherever we want to generate files
# CsvParser, JsonParser, XmlParser are in separate parser folder follows SRP principle.