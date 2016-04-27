#include <ifaddrs.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <net/if_dl.h>
#include <string.h>

#define SDL(s) ((struct sockaddr_dl *)((s)->ifa_addr))

int main(int argc, const char *argv[])
{
	struct ifaddrs *ifa, *ifz; 
	struct sockaddr_dl * sdl;
	unsigned char mac[6];
	char addr[17];
	int family, n;

	if(argc != 2) {
		printf("Usage: %s <hwaddress>\n", argv[0]);
		exit(2);
	}
	int rc = getifaddrs(&ifz);
	if(rc != 0) {
		perror("getifaddrs");
		rc = 1;
		goto done;
	}

	for(ifa = ifz; ifa != NULL; ifa = ifa->ifa_next) {
		if (ifa->ifa_addr == NULL)
			continue;

		family = ifa->ifa_addr->sa_family;
		if(family == AF_LINK) {
			n = sprintf(addr, "%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx",
                               LLADDR(SDL(ifa))[0],
                               LLADDR(SDL(ifa))[1],
                               LLADDR(SDL(ifa))[2],
                               LLADDR(SDL(ifa))[3],
                               LLADDR(SDL(ifa))[4],
                               LLADDR(SDL(ifa))[5]
			);
			if(n != 17) {
				printf("Wrote %d characters.\n", n);
				rc = 2;
				goto done;
			}
			if(strncmp(argv[1], addr, 17) == 0) {
				printf("%s", ifa->ifa_name);
				rc = 0;
				goto done;
			}
			// printf("Name: %s\t\tFamily: %d\t\tAddress: %s\n", ifa->ifa_name, family, addr);
			continue;
		}
	}
	rc = 3;

done:
	freeifaddrs(ifz);
	return rc;
}
