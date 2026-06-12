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
	return 0;
}