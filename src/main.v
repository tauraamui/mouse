module main

import lib.display
import lib.mouse

fn main() {
	x, y := display.get_pixel_width_height()
	mouse.move_to(x / 2, y / 2)
}
