list = []

['A', 'B', 'C', 'D', 'E'].each do |letter|
  (1..9).to_a.each do |first|
    code = "#{letter}0"
    next if first > 7
    code += first.to_s
    code_temp1 = code
    (first+1..9).to_a.each do |second|
      code = code_temp1
      next if second > 8
      code += second.to_s
      code_temp2 = code
      (second+1..9).to_a.each do |third|
        code = code_temp2
        code += third.to_s
        list << code
      end
    end
  end
end


