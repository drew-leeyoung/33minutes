/// @description Insert description here
// You can write your code in this editor

if (!file_exists("introMessage.txt")) {
   } else {
    var file = file_text_open_read("introMessage.txt");

    if (file != -1) {
        var charIndex = 0;
        var fileContents = file_text_read_string(file);

        if (charIndex < string_length(fileContents)) {
            var currentChar = string_char_at(fileContents, charIndex);
			draw_set_color(c_green)
            draw_text(x+msgXoffset,y+msgYoffset, string(currentChar)); // You can replace this with your desired printing method
            charIndex += 1;
        } else {
            file_text_close(file);
        }
    } 
}