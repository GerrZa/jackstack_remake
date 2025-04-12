global.windowScale = 3
global.windowRes = 240

function changeWindowScale(toScale = global.windowScale){
	global.windowScale = toScale
	window_set_size(global.windowRes * global.windowScale,global.windowRes * global.windowScale)
	window_center()
}