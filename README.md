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
	cprintf("[green]  [blue]  [green]    [red]  [green]    [clear]\n");
	cprintf("[red]  [green]  [red]  [blue]  [green]  [blue]  [red]  [clear]\n");
	cprintf("[green]  [blue]  [green]    [red]  [green]    [clear]\n");
	cprintf("[green]  [red]  [green]    [blue]  [green]    [clear]\n");
	cprintf("[blue]  [green]  [blue]  [red]  [green]  [red]  [blue]  [clear]\n");
}
```