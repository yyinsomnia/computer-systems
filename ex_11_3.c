#include <stdio.h>
#include <arpa/inet.h>
#include <netinet/in.h>

int main(int argc, char *argv[])
{
	struct in_addr addr;
	struct in_addr *ip = &addr;
	inet_aton(argv[1], ip);
	ip->s_addr = htonl(ip->s_addr);

	printf("ip for net is : Ox%x\n", ip->s_addr);
	return 0;
}

