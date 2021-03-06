#include <cstdio>
#include <cstdlib>

int
main(int argc, char **argv)
{
	if (argc <= 1)
	{
		printf("Usage: %s <iso file>\n", argv[0]);
		return 1;
	}

	char buffer[4096];
	sprintf(buffer, "HandBrakeCLI -i %s -o $(basename %s).mp4 --optimize -e x264\n", argv[1], argv[1]);

	printf("Executing: %s", buffer);
	
	return system(buffer);
}
