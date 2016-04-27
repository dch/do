# Created by: Pakhom Golynga <pakhom706@gmail.com>
# $FreeBSD: head/net-mgmt/zabbix24-agent/Makefile 394508 2015-08-17 14:20:40Z mat $

PORTNAME=	zabbix24
CATEGORIES=	net-mgmt
PKGNAMESUFFIX=	-agent

MASTERDIR=	${.CURDIR}/../zabbix24-server
PLIST=		${PKGDIR}/pkg-plist.agent

OPTIONS_DEFINE=		IPV6
OPTIONS_DEFAULT=	IPV6

.include "${MASTERDIR}/Makefile"
