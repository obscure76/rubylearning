# Defines a new custom exception called FileNotFound
class MyFileNotFound < StandardError
end

def read_file(path)
  begin
  File.exist?(path) || raise(MyFileNotFound, "File #{path} not found")
  rescue MyFileNotFound => e
    puts e
    return
  end
  File.read(path)
end

read_file("valid.txt")    #=> reads and returns the content of the file
read_file("missing.txt")  #=> raises FileNotFound.new("File `missing.txt` not found")
