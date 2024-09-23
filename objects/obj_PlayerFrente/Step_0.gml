/// @description Inserir descrição aqui
// Movimentação
direita = keyboard_check(ord("D"));
cima = keyboard_check(ord("W"));
esquerda = keyboard_check(ord("A"));
baixo = keyboard_check(ord("S"));

hveloc = (direita - esquerda) * veloc;
if place_meeting(x + hveloc, y, obj_parede){
	while !place_meeting(x + sign(hveloc), y, obj_parede){
		x += sign(hveloc)
	}
	hveloc = 0
}
x += hveloc

vveloc = (baixo - cima) * veloc;
if place_meeting(x, y + vveloc, obj_parede){
	while !place_meeting(x, y + sign(vveloc), obj_parede){
		y += sign(vveloc)
	}
	vveloc = 0
}
y += vveloc

// Mudar sprites

if hveloc == 0 and vveloc == 0{
	dir = floor((point_direction(x, y, mouse_x, mouse_y) + 45) / 90);
	switch dir{
		default:
		sprite_index = spr_PlayerDireita;
		break;
		case 1:
		sprite_index = spr_PlayerFrente;
		break;
		case 2:
		sprite_index = spr_PlayerEsquerda;
		break;
		case 3:
		sprite_index = spr_PlayerCostas;
		break;
	}
}else{
	if keyboard_check_pressed(ord("W")){
		sprite_index = spr_PlayerCostas_Correndo;
	}else if keyboard_check_pressed(ord("A")){
		sprite_index = spr_PlayerEsquerda_Correndo;
	}if keyboard_check_pressed(ord("S")){
		sprite_index = spr_PlayerFrente_Correndo;
	}if keyboard_check_pressed(ord("D")){
		sprite_index = spr_PlayerDireita_Correndo;
	}
}