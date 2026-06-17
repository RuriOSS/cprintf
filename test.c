#include "include/cprintf.h"
int main(void)
{
	cprintf("{red}Hello, {green}world{clear}!\n");
	cprintf("{base}This is base color.\n");
	cprintf("{underline}This is underline.\n");
	cprintf("{highlight}This is highlight.\n");
	cprintf("{255;0;0}This is RGB red.\n");
	cprintf("{underline}This is underline and [255;0;0]RGB red{clear}.\n");
	cprintf("[red]This is red background.{clear}\n");
	cfprintf(stderr, "[underline]This is underline and [red]red background{clear}.\n");
	cprintf("[nothing]{not}{[[[[[{0;999;000}This is nothing.\n");
	cprintf("{red}red{green}green{blue}blue{yellow}yellow{purple}purple{cyan}cyan{white}white{black}black{clear}\n");
	cprintf("[red]red[green]green[blue]blue[yellow]yellow[purple]purple[cyan]cyan[white]white[black]black[clear]\n");
	cprintf_color.red_bg = "\033[48;2;216;106;103m";
	cprintf_color.green_bg = "\033[48;2;105;161;136m";
	cprintf_color.blue_bg = "\033[48;2;71;96;175m";
	cprintf("\n");
	cprintf("[green]  [blue]  [green]    [red]  [green]    [clear]\n");
	cprintf("[red]  [green]  [red]  [blue]  [green]  [blue]  [red]  [clear]\n");
	cprintf("[green]  [blue]  [green]    [red]  [green]    [clear]\n");
	cprintf("[green]  [red]  [green]    [blue]  [green]    [clear]\n");
	cprintf("[blue]  [green]  [blue]  [red]  [green]  [red]  [blue]  [clear]\n");
	cprintf("\n");
	if (cp_xterm_is_dark_mode()) {
		cprintf("{green}Dark mode is enabled\n");
	} else {
		cprintf("{red}Dark mode is not enabled{clear}\n");
	}
	cprintf("cprintf version: %d.%d\n", CPRINTF_MAJOR, CPRINTF_MINOR);
	return 0;
}