# About:
Just do one stupid thing: replace `[color]` and `{color}` in format with ANSI escape codes. That's it.      
These color format will be recognized:      
```
clear     :reset the color.
underline :underline
highlight :highlight
red
blue
green
yellow
cyan
black
white
purple
base      :You need to define it.
R;G;B     :RGB color.
```
Use `{color}` for foreground color and `[color]` for background color.
Note that cprintf() will always clear the color in the end once you call it, but for background color, you need a `[clear]` before `\n`.      
# Example:
```C
#include "include/cprintf.h"
int main()
{
	cprintf("[91;207;250]                [clear]\n");
	cprintf("[245;170;185]                [clear]\n");
	cprintf("[255;255;255]                [clear]\n");
	cprintf("[245;170;185]                [clear]\n");
	cprintf("[91;207;250]                [clear]\n");
}
```