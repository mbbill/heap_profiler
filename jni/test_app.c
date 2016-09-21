#include <stdio.h>

bar() {
	malloc(200);
}

foo () {
	malloc(10);
	bar();
	bar();
}
main() {
	foo(); // 10 + 200 + 200
	bar(); // 200
	getchar();
}
