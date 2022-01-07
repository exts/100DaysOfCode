# 1/7/2022 - Day 3 - 100 Days of Code 
# Twitter: @G4MR 
# via crystal lang run from terminal: `crystal day3.dart` 

def hexToDecimal(hex : String)
    converted = [] of Int32
    
    # hexadecimal counter parts
    hashed = {
        "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6,
        "7" => 7, "8" => 8, "9" => 9, "a" => 10, "b" => 11, "c" => 12,
        "d" => 13, "e" => 14, "f" => 15,
    }

    # remove hex code from the beginning & split the string into a lower case array
    hex = hex.sub("0x", "")
    hex = hex.downcase().split("")

    # loop through each character
    hex.each do |h|
        if hashed[h].nil?
            raise Exception.new "Hex array has invalid hex value 0-9A-F"
        else
            converted << hashed[h]
        end
    end

    # convert hex to decimal value
    count = 0
    value = 0
    converted.reverse.each do |val|
        value += val * (16 ** count)
        count += 1
    end

    value
end

puts hexToDecimal("0xFFFFFF") # 16777215
puts hexToDecimal("FF") # 255
puts hexToDecimal("c9") # 201