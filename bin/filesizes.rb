def file_sizes(pattern)
  size = 0
  Dir.glob(pattern) do |path|
    if File.directory?(path)
      size += file_sizes(path + '/*')
    else
      size += File.size(path)
    end
  end
  size
end

p file_sizes("*")


# def print_paths(files, file_size)
#   Dir.glob(files) do |path|
#     file_size = file_size + File.size(path)
#     if File.directory?(path)
#       print_paths("#{path}/*", file_size)
#     end
#   end
#   return file_size
# end
#
# p print_paths("*", 0)
