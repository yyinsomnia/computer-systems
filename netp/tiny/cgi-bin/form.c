/**
 * gcc -pthread ./netp/tiny/cgi-bin/form.c ./src/csapp.c -I ./include/ -o ./netp/tiny/cgi-bin/form
 */
#include "csapp.h"

int main()
{
    char *p, *method, content[8192];
    int n1 = 0, n2 = 0, n3 = 0, i = 0;


    /* Read request body */
    method = getenv("REQUEST_METHOD");
    if (!strcasecmp(method, "POST")) {
        //Rio_readlineb(stdin, content, );
    }

    //while ((content[i++] = getchar()) != EOF && i < 8192) {} 
    //content[0] = getchar();
    /* Extract the three argments */


    /* Make the response body */


    /* Generate the HTTP response */
    // printf("Content-length: %d\r\n", (int) strlen(content));
    // printf("Content-type: text/html\r\n\r\n");
    //printf("%s", content);
    
    //fflush(stdout);
    exit(0);
}