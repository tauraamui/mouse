module main

import lib.display
import lib.mouse
import time

struct Point {
	x int
	y int
}

fn main() {
	x, y := display.get_pixel_width_height()
	mouse.move_to(x / 2, y / 2)

	points := [Point{ x: 720, y: 300 }, Point{ x: 820, y: 600 }, Point{ x: 520, y: 450 }, Point{ x: 920, y: 450 }, Point{ x: 620, y: 600 }, Point{ x: 720, y: 300 }]

	for {
		print("\r")
		print("moving mouse points @ ${time.now()}")
		flush_stdout()
		for p in points {
			mouse.move_to(p.x, p.y)
			time.sleep(1 * time.second)
		}
		time.sleep(30 * time.second)
	}
}
