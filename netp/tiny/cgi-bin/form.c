/**
 * gcc -pthread ./netp/tiny/cgi-bin/form.c ./src/csapp.c -I ./include/ -o ./netp/tiny/cgi-bin/form
 */
#include "csapp.h"

int main()
{
    char *buf, *p, *method;
    char arg1[MAXLINE], arg2[MAXLINE], arg3[MAXLINE], content[MAXBUF], c;
    int n1 = 0, n2 = 0, n3 = 0, i = 0;
    rio_t rio;

    /* Read request body */
    method = getenv("REQUEST_METHOD");
    if (!strcasecmp(method, "POST")) {
        while ((c = getchar()) != EOF && i < MAXBUF) { //when request method is get, this line will cause problem, e when post it also cause problem..
            content[i++] = c;
        }
    }

    /* Extract the three arguments */


    /* Make the response body */


    /* Generate the HTTP response */
    printf("Content-length: %d\r\n", i);
    printf("Content-type: text/html\r\n\r\n");
    if (i) {
        printf("%s", content);
    }
    fflush(stdout);
    exit(0);
}