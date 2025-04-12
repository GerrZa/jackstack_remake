for(var i = 0; i < array_length(oPlayer.cards); i++){
	oPlayer.cards[i].offY = 0
	oPlayer.cards[i].selecting = false
	window_set_cursor(cr_default)
}

for(var i = 0; i < array_length(oPlayer.cards); i++){
	var ii = array_length(oPlayer.cards) - 1 - i
	
	if (position_meeting(mouse_x, mouse_y, oPlayer.cards[ii])){
		oPlayer.cards[ii].offY = -16
		oPlayer.cards[ii].selecting = true
		window_set_cursor(cr_handpoint)
		break
	}
}