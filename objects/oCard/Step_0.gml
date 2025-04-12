//if (oGame.plrCardSelect != id){
x += (toX - x) * 0.2 * delta
renY += ((y + offY) - renY) * 0.25 * delta
//}
testVar = !testVar

switch(oGame.state){
	case STATE.pCARD:
		if (selecting && mouse_check_button_pressed(mb_left)){
			selecting = false
			//add card to hold
			oGame.plrCardSelect = id
	
			var i = array_get_index(oPlayer.cards, id)
			array_delete(oPlayer.cards, i, 1)
	
			oPlayer.updateCard() //update other card
	
			toX = 120 - (sprite_width/2)
			y = 150 - (sprite_height/2)
			offY = 0
			depth = -100
			oGame.state = STATE.pTOKEN
		}
		break
	case STATE.pTOKEN:
		break
	case STATE.eCARD:
		break
	case STATE.eTOKEN:
		break
	case STATE.NONE:
		break
	case STATE.GAMEOVER:
		break
	
}
