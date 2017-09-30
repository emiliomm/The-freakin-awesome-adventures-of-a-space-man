switch (round(joystick_xpos(0))) {
  case 0:
    if (global.joy_right = true) {          // Joystick release right
      global.joy_right = false;
      keyboard_key_release(ord("D"));
    }
    if (global.joy_left = true) {          // Joystick release left
      global.joy_left = false;
      keyboard_key_release(ord("A"));
    }
    break;
  case 1:          // Joystick press right
    global.joy_right = true;
    keyboard_key_press(ord("D"));
    break;
  case -1:          // Joystick press left
    global.joy_left = true;
    keyboard_key_press(ord("A"));
    break;
}

switch (round(joystick_ypos(0))) {
  case 0:
    if (global.joy_down = true) {          
      global.joy_down = false;
      keyboard_key_release(ord("S"));
    }
    if (global.joy_up = true) {          
      global.joy_up = false;
      keyboard_key_release(ord("W"));
    }
    break;
  case 1:          
    global.joy_down = true;
    keyboard_key_press(ord("S"));
    break;
  case -1:
    global.joy_up = true;
    keyboard_key_press(ord("W"));
    break;
}


if (joystick_check_button(0,1)) {          // Joystick press jump
  global.joy_w = true;
  keyboard_key_press(ord("W"));
}
else {
  if (global.joy_w = true) {          // Joystick release jump
    global.joy_w = false;
    keyboard_key_release(ord("W"));
  }
}

if (joystick_check_button(0,2)) {          // Joystick press click
    global.joy_space = true;
    keyboard_key_press(vk_space);
}
else {
  if (global.joy_space = true) {          // Joystick release click
    global.joy_space = false;
    keyboard_key_release(vk_space);
  }
}

if (joystick_check_button(0,10)) {          // Joystick press escape
  global.joy_escape = true;
   keyboard_key_press(vk_escape);
}
else {
  if (global.joy_escape = true) {          // Joystick release escape
    global.joy_escape = false;
    keyboard_key_release(vk_escape);
  }
}

if (joystick_check_button(0,9)) {          // Joystick press m
  global.joy_m = true;
   keyboard_key_press(ord("M"));
}
else {
  if (global.joy_m = true) {          // Joystick release m
    global.joy_m = false;
    keyboard_key_release(ord("M"));
  }
}

if (joystick_check_button(0,8)) {          // Joystick press h - Al disparar en el nivel hotline miami
  global.joy_h = true;
   keyboard_key_press(ord("H"));
}
else {
  if (global.joy_h = true) {          // Joystick release h
    global.joy_h = false;
    keyboard_key_release(ord("H"));
  }
}
