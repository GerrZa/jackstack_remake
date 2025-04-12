window_set_cursor(cr_default)

switch(oGame.state){
	case STATE.pCARD:
		for(var i = 0; i < array_length(oPlayer.cards); i++){
			oPlayer.cards[i].offY = 0
			oPlayer.cards[i].selecting = false
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
	
		break
	case STATE.pTOKEN:
		if (mouse_check_button(mb_right)){
			array_push(oPlayer.cards, oGame.plrCardSelect.id)
			
			oGame.plrCardSelect.y = oPlayer.CARD_INIT_POS_Y
			
			oGame.plrCardSelect = -1
			oPlayer.updateCard()
			
			oGame.state = STATE.pCARD
		}
		
		break
}
