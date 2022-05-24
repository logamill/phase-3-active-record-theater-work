require 'bundler'
Bundler.require


def reload
    # iterate over all files in 'app/models' and load them all (to get new code)
    Dir.glob('app/models/*').each do |file_name|
      load file_name
    end
    puts "all files in app/models/ reloaded"
end


require_all 'app'