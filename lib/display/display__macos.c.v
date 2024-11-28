module display

#include <Cocoa/Cocoa.h>
#flag -framework Cocoa

#include "@VMODROOT/lib/display/display.m"

fn C.get_main_display_size() &DisplaySize
fn C.get_main_display_width_in_pixels() usize
fn C.move_mouse_to(x int, y int)

struct DisplaySize {
	pixel_width  int
	pixel_height int
}

pub fn macos_get_display_size() (int, int) {
	d := C.get_main_display_size()
	return d.pixel_width, d.pixel_height
}

