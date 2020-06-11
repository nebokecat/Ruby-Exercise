puts "計算をはじめます"
puts "何回繰り返しますか？"
input1 = gets.to_i
i = 0
while i<input1 do
	puts input1.to_s + "回目の計算"
	puts "2つの値を入力してください"
	input2 = gets.to_i
	input3 = gets.to_i
	puts "a+b=" + (input2+input3).to_s
	puts "a-b=" + (input2-input3).to_s
	puts "a*b=" + (input2*input3).to_s
	puts "a/b=" + (input2/input3).to_s
	i=i+1
end
puts "計算結果を出力します"
puts "計算を終了します"