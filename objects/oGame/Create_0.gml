
global.delta_timing = 1
#macro delta global.delta_timing

plrHoldX = 120 - sprite_get_width(pttCard)
plrHoldY = 120 - sprite_get_height(pttCard)

plrHoldCard = -1

enum S{
	NONE,
	PCARD,
	PTOKEN,
	ECARD,
	ETOKEN,
	GAMEOVER
}

state = S.PCARD