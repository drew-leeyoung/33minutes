/// @description decay and disappear

image_alpha = image_alpha - random_range(0.01,0.05);
if (image_alpha <= 0)
{
	instance_destroy();
}
