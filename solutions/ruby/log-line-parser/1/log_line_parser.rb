class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    clearline = @line.gsub('[ERROR]:', '').gsub('[INFO]:', '').gsub('[WARNING]:', '').gsub(/[\n\r\t]/, '').strip()

  end

  def log_level
    if @line.include? '[ERROR]:'
      return 'error'
    elsif @line.include? '[WARNING]:'
      return 'warning'
    else
      return 'info'
    end
  end

  def reformat
    type = ''
    if @line.include? '[ERROR]:'
      type = '(error)'
    elsif @line.include? '[WARNING]:'
      type = '(warning)'
    else
      type = '(info)'
    end
        cutline = @line.gsub('[ERROR]:', '').gsub('[INFO]:', '').gsub('[WARNING]:', '').gsub(/[\n\r\t]/, '').strip() 
    reformatedline =  cutline + ' ' + type

    end
end
