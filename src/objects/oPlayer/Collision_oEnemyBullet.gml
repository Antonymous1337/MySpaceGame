/// @description ?
if (iFrame <= 0) {
	hp -= other.damage;
	if (hp <= 0) instance_destroy();
	iFrame = maxiFrame;
}
instance_destroy(other);