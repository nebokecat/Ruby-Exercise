# じゃんけんをして、勝ち負けを判定させましょう。（相手の出す手は乱数で決めましょう）
#  以下は出力例です。
#  -----------------
#  最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 0
# あなたの手:グー、相手の手:チョキ
# あなたの勝ちです
# -----------------
# 以下は例外を入力した時の出力例です。
# -----------------
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 3
# 入力された値が無効です
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# ...


def janken(pattern)
	hands = {"0"=>"グー","1"=>"チョキ","2"=>"パー"}
	comment = ["最初はグー、じゃんけん...","あいこで..."]
	puts comment[pattern]
	hands.each do |num,jan|
		puts "[#{num}]:#{jan}"
	end
end

def judge(me,you)
	diff = (me - you + 3) % 3
	if(diff == 0)
		return "引き分けです"
	elsif(diff == 2)
		puts "あなたの勝ちです"
	else
		puts "あなたの負けです"
	end
end

num = 0

janken(num)

while true do
	hands = ["グー","チョキ","パー"]
	input = gets.to_i
	if(input < 0 || 2 < input)
		puts "入力された値が無効です"
		janken(num)
	else
		enemy = rand(3)
		puts "あなたの手:#{hands[input]},あいての手:#{hands[enemy]}"
		if(judge(input,enemy) != "引き分けです")
			break
		end
		puts judge(input,enemy)
		num = 1
		janken(num)
	end
end
