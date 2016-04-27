# Created by: Pakhom Golynga <pakhom706@gmail.com>
# $FreeBSD: head/net-mgmt/zabbix22-agent/Makefile 394508 2015-08-17 14:20:40Z mat $

PORTNAME=	zabbix22
CATEGORIES=	net-mgmt
PKGNAMESUFFIX=	-agent

MASTERDIR=	${.CURDIR}/../zabbix22-server

PLIST=		${PKGDIR}/pkg-plist.agent

OPTIONS_DEFINE=	IPV6
OPTIONS_DEFAULT=	IPV6

.include <bsd.port.options.mk>
.include "${MASTERDIR}/Makefile"
