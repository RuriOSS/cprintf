all :
	cc -O0 -pedantic -Wall -Wno-format-extra-args -Wextra -Wno-format-security -std=gnu11 -Wno-gnu-zero-variadic-macro-arguments -Wno-gnu-statement-expression-from-macro-expansion -ggdb -fsanitize=address cprintf.c test.c
format :
	clang-format -i include/cprintf.h cprintf.c test.c