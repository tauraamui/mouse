module display

pub fn get_pixel_width_height() (int, int) {
	$if macos {
		return macos_get_display_size()
	}
	return -1, -1
}
