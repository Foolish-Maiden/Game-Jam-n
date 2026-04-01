image_alpha += 0.01/2;

if (image_alpha>1 && alarm_get(0) == -1){
	instance_destroy(obj_fakeout_boss);
	alarm[0] = 20;
}
