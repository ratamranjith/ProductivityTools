logsPath = ['C:\log1.log',
				  'C:\log2.txt',
				  'C:\log3.json',
				  'C:\log1.log',
				  'C:\log1.log',]

def clear_Logs(logsPath, adbSupport = true)
	begin
		logsPath.each do |interface|
			p interface
			tmpFile = File.open(interface, "w")
			tmpFile.close
		end
	rescue
		p "There is an Exception: or the path is correct"
	ensure
		p "Logs Cleared Successfully for #{@count}"
	end
end

@count = 1
5.times do
	clear_Logs(logsPath, true)
	@count += 1
	sleep 5
end