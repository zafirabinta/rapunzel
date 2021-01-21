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

	sprintf(command_str, "sudo mencoder tv:// -tv driver=v4l2:width=320:height=240:device=/dev/video0 -nosound -ovc lavc -o %s",  str);
	printf ("%s", command_str);

	system(command_str);

	return 0;
}
