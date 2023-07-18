class BaseParser
  def initialize(file_path)
    @file_path = file_path
  end

  def parse
    raise NotImplementedError, "Subclasses must implement parse method"
  end
end