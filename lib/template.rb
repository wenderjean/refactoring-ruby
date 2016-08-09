class Template
  class << self
    DIR = "templates"
    THREADS = 0
    SYMBOL_TO_OMMITE_TRAILING_LINES = "-"

    def render(file, binder)
      renderer = ERB.new(self.template(file), THREADS, SYMBOL_TO_OMMITE_TRAILING_LINES)
      renderer.result(binder)
    end

    def template(file)
      full_path = full_path(file)
      File.read(full_path)
    end

    def full_path(file)
      File.join(self.current_directory, DIR, file)
    end

    def current_directory
      File.dirname(__FILE__)
    end
  end
end
