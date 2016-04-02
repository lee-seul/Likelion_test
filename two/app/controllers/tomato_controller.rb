class TomatoController < ApplicationController
	def potato
		@food_list = [
			"짜장면",
			"짬뽕",
			"탕수육",
			"된장찌개",
			"라면",
			"통닭"
		]
		@iwantthisfood = @food_list.sample
	end
end
