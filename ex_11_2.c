#include <stdio.h>
#include <arpa/inet.h>
#include <netinet/in.h>

int main(int argc, char *argv[])
{
	int ip;
	ip = ntohl(htoi(argv[1]));
	struct in_addr in;
	in.s_addr = ip;

	char *ip_app;
	ip_app = inet_ntoa(in);
	printf("ip for read is : %s\n", ip_app);
	return 0;
}

