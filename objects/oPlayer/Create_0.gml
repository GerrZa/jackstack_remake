#region //function definition

function updateCard(){
	//for(var i = 0; i < array_length(plrCard); i++){
	//	plrCard[i].toX = CARD_START_X - (i * CARD_GAP)
	//	plrCard[i].toY = CARD_START_Y
		
	//	plrCard[i].depth = i
	//}
	
	for(var i = 0; i < array_length(plrCard); i++){
		var ii = array_length(plrCard) - 1 - i
		plrCard[i].toX = CARD_START_X - (ii * CARD_GAP)
		plrCard[i].toY = CARD_START_Y
		
		plrCard[i].depth = -i
	}
}


function addNewCard(nVal){
	array_push(plrCard, instance_create_layer(CARD_INIT_X, CARD_INIT_Y, "instances", oCard))
	with(plrCard[array_length(plrCard) - 1]){cardVal = nVal}

	updateCard()
}

function addCardBackID(cID){
	array_push(plrCard, cID)
	updateCard()
}

#endregion

plrCard = []

CARD_INIT_X = room_width
CARD_INIT_Y = y

//where card should start sorting at
CARD_START_X = x
CARD_START_Y = y

//gap between each card
CARD_GAP = 16


addNewCard(1)
addNewCard(2)
addNewCard(3)