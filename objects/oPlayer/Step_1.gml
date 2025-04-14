switch(oGame.state){
	case S.PCARD:
		//reset before mousecheck
		for(var i = 0; i < array_length(plrCard); i++){
			window_set_cursor(cr_default)
			plrCard[i].toOffY = 0
		}

		//check if mouse hover each card
		for(var i = array_length(plrCard) - 1; i >= 0; i--){
	
			if (position_meeting(mouse_x, mouse_y, plrCard[i])){
				plrCard[i].toOffY = -16
				window_set_cursor(cr_handpoint)
				
				if (mouse_check_button(mb_left)){
					oGame.plrHoldCard = plrCard[i].id
					oGame.plrHoldCard.toOffY = 0
					array_delete(plrCard, i, 1)
					break
				}
				
				break
			}
		}

		//debug
		if (keyboard_check_pressed(vk_enter)){
			addNewCard(9)
		}
		
		break
	case S.PTOKEN:
		break
}
