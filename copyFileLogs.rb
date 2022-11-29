require "fileutils"
logsPath = ['C:\log1.log',
				  'C:\log2.txt',
				  'C:\log3.json',
				  'C:\log1.log',
				  'C:\log1.log']
copyToPath = "C:/Users/RM"

#---------------------------------
# Usage:
# copyFileLogs.rb Delay 1
# where, Deys - folder name
#        1    - subfolder
if (ARGV.length > 1 and ARGV.length < 3)
begin	
	folderPath = copyToPath +"/" +ARGV[0]
	subFolder  = folderPath +"/" +ARGV[1]
	[folderPath, subFolder].each do |path|
		Dir.mkdir(path) unless (Dir.exist?(path))
	end

	#---------------------
	# Copy files to folder
	logsPath.each do |file_path|
		FileUtils.cp(file_path, subFolder)		
	end
rescue 
	p "something went wrong"
ensure 
	p "--------------------"
end
else
	puts "Enter the correct sheetname and scenario number"
end