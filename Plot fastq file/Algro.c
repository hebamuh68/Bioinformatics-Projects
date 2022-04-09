#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main()
{
    FILE* qualities;
    FILE* scores;
    char ch;
    char line[80];
    int count = 0;
    int total = 0;


    // Opening file in reading mode
    qualities = fopen("qualities.txt", "r");
    scores = fopen("read_score.txt", "w");


    int i = 0;
	while (fgets(line, sizeof(line), qualities))
	{
			int ascii = 0;
			int i = 0;
			for (i=0; i<80; i++)
			{
				ascii = line[i]-33;
				count = count + ascii;
			}
			fprintf(scores,"%d\n",count);
			count = 0 ;
			total ++;

	}

	printf("%d",total);
	fclose(qualities);






    return 0;
}
