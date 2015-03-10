  # a method calls itself
  # base case
  # move us closer to that base case
  # calls itself recursively


  def filenames(pattern, level = 0)
    Dir.glob(pattern) do |path|
      puts "#{" " * level * 2}#{File.basename(path)}"
      filenames(path + '/*', level + 1) if File.directory?(path)
    end
  end

  filenames("*")
  

  # def print_paths(pattern, number)
  #   Dir.glob(pattern).each do |path|
  #     puts " " * number + path
  #     if File.directory?(path)
  #       print_paths("#{path}/*", number + 1)
  #     end
  #   end
  # end
  # p print_paths("*", 0)


  # def collect_paths(pattern, number = 0)
  #   result = []
  #   Dir.glob(pattern).each do |path|
  #     result << path
  #     if File.directory?(path)
  #       result += collect_paths("#{path}/*", number + 1)
  #     end
  #   end
  #   result
  # end
  # p collect_paths("*")


  # ANDY SOLUTION:
  #
  # class Filenames
  #
  #   def recursion_tree(initial_directory, number = 0)
  #     Dir.glob(initial_directory) do |path|
  #       puts " " * number + File.basename(path)
  #       if File.directory?(path)
  #         recursion_tree("#{path}/*", number + 1)
  #       end
  #
  #     end
  #
  #   end
  #
  #   directory_listing = Filenames.new
  #   directory_listing.recursion_tree("/Users/kendra/workspace/*")
  #
  # end
