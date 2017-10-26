puts ["a","b","|","AND","OR","XOR","NAND","NOR","NXOR"].join("\t")
puts ["-","-","-","---","---","---","----","----","----"].join("\t")

[false, true].each do |a|
	[false, true].each do |b|

		puts [a,b,"|", a && b, a || b, a ^ b, !(a && b), !(a || b), !( a ^ b)].join("\t")
	end
end
