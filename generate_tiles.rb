#!/usr/bin/ruby

(0 .. 20).each do |z|
	cmd = "convert -size 256x256 xc:transparent -stroke \"#ff0000\" " +
		"-strokewidth 1 -draw \"line 0,0 255,0\" -draw \"line 255,0 255,255\" " +
		"-draw \"line 255,255 0,255\" -draw \"line 0,255 0,0\" -font Tahoma " +
		"-pointsize 16 -fill \"#ff0000\" -stroke none -draw \"text 4,250 'ZL=#{z}'\" #{z}.png"
	`#{cmd}`
end
