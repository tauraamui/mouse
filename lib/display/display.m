
lib__display__DisplaySize *get_main_display_size(void) {
    lib__display__DisplaySize *display_size = malloc(sizeof(lib__display__DisplaySize));
    CGDirectDisplayID d_id = CGMainDisplayID();
    display_size->pixel_width = CGDisplayPixelsWide(d_id);
    display_size->pixel_height = CGDisplayPixelsHigh(d_id);
    return display_size;
}

size_t get_main_display_width_in_pixels(void)  {
    CGDirectDisplayID d_id = CGMainDisplayID();
    return CGDisplayPixelsWide(d_id);
}

void move_mouse_to(int x, int y) {
    
    CGPoint p;
    p.x = x;
    p.y = y;
    CGEventRef move = CGEventCreateMouseEvent(NULL, kCGEventMouseMoved, p, kCGMouseButtonLeft);
    CGEventPost(kCGHIDEventTap, move);
    CFRelease(move);
}
