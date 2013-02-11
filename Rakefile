desc "install dotfiles into the user's home directory"
task :install do
    puts ENV['HOME']
    files = Dir['*'] - %w[Rakefile README.md]

    files.each do |file|
        puts "Processing #{file}"
        destination_file = File.join( ENV['HOME'], ".#{file}")
        # Check if the file we are processing already exist in HOME
        if File.exist? destination_file

            # If it does exist check if it is the same as the source file
            if File.identical? file, destination_file
                puts "\tIdentical #{destination_file} already exists"
                # Skip identical files
            else
                puts "\t#{destination_file} exists but is not identical"
                #TODO How to handle differing files, make a backup of the
                # origin or prompt to overwrite
            end
        else
            link_file(file, destination_file)
        end
    end
end

def link_file(file, destination_file)
    if file =~ /.erb$/
        puts "\tGenerating #{destination_file} from #{file}"
    else
        puts "\tLinking #{destination_file} to #{file}"
        system %Q{ln -s "$PWD/#{file}" "#{destination_file}"}
    end
end
