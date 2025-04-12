global.delta_factor = 1
#macro delta global.delta_factor

//game_set_speed(10, gamespeed_fps)

enum STATE{
	NONE,
	pCARD,
	pTOKEN,
	eCARD,
	eTOKEN,
	GAMEOVER
}

state = STATE.pCARD

plrCardSelect = -1
