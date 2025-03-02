var Up_key = keyboard_check(vk_up) or keyboard_check (ord("W"));
var Down_key = keyboard_check(vk_down) or keyboard_check (ord("S"));
var Left_key = keyboard_check(vk_left) or keyboard_check (ord("A"));
var Right_key = keyboard_check(vk_right) or keyboard_check (ord("D"));

//Movement
if(keyboard_check(vk_shift) or keyboard_check(ord("X"))){
    move_spd = run_spd
} else{
    move_spd = walk_spd
}

xspd = (Right_key - Left_key) * move_spd
yspd = (Down_key - Up_key) * move_spd

x += xspd
y += yspd

//Animate
if (xspd > 0){
    sprite_index = sJimmyLeft
} else if (xspd < 0){
    sprite_index = sJimmyRight
} else if (yspd > 0){
    sprite_index = sJimmyDown
} else if (yspd < 0){
    sprite_index = sJimmyUp
}
if(xspd != 0 or yspd != 0){
    image_speed = 1
}else{
    image_speed = 0
    image_index = 0
}