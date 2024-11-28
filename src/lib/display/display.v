module display

import lib.native

pub fn get_pixel_width_height() (int, int) {
	$if macos {
		return native.macos_get_display_size()
	}
	return -1, -1
}

