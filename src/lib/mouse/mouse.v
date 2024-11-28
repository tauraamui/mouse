module mouse

import lib.native

pub fn move_to(x int, y int) {
	$if macos {
		native.macos_move_cursor_to_position(x, y)
	}
}
