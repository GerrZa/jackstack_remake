#region fixed variable

	CARD_INIT_POS_X = 240
	CARD_INIT_POS_Y = oPlrCardHolder.y
	
#endregion
#region function definition

function addCard(cStr){
	array_push(cards, instance_create_layer(CARD_INIT_POS_X, CARD_INIT_POS_Y, "playerLayer", oCard, {numStr : cStr}))
	cards[array_length(cards)-1].numStr = cStr

	for(var i = 0; i < array_length(cards); i++){
		cards[i].toX = oPlrCardHolder.x - (oPlrCardHolder.cardGap * (array_length(cards) - 1 - i))
		cards[i].defY = CARD_INIT_POS_Y	
		cards[i].renY = CARD_INIT_POS_Y

		cards[i].depth = -i
	}
}

#endregion

cards = []

for(var i = 0; i < 3; i++){
	addCard(string(i))
	
}

// should appear 0 1 2

show_debug_message(cards[0].numStr)
show_debug_message(cards[1].numStr)
show_debug_message(cards[2].numStr)