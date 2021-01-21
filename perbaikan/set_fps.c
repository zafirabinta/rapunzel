#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char** argv) {

	char command_str[200];

	int i, v = 0, size = argc - 1;
	char *str = (char *)malloc(v);

	for(i = 1; i <= size; i++) {
		str = (char *)realloc(str, (v + strlen(argv[i])));
		strcat(str, argv[i]);
		strcat(str, " ");
	}

	sprintf(command_str, "sudo v4l2-ctl --set-parm=%s",  str);
	printf ("%s", command_str);

	system(command_str);

	return 0;
}
