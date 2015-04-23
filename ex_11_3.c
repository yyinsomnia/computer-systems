#include <stdio.h>
#include <arpa/inet.h>
#include <netinet/in.h>

int main(int argc, char *argv[])
{
	struct in_addr addr;
	struct in_addr *ip = &addr;
	inet_aton(argv[1], ip);
	//ip->s_addr = htonl(ip->s_addr);
	//the s_addr in struct in_addr is Network byte order (big-endian), so don't transform it to little endian in the struct!

	printf("ip for net is : Ox%x\n", ntohl(ip->s_addr));
	return 0;
}