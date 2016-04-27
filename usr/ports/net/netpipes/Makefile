# Created by: doconnor@gsoft.com.au
# $FreeBSD: head/net/netpipes/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	netpipes
PORTVERSION=	4.2
CATEGORIES=	net
MASTER_SITES=	LOCAL/kris
DISTNAME=	netpipes-4.2-export

MAINTAINER=	doconnor@gsoft.com.au
COMMENT=	Group of shell utilities to connect programs to sockets

CONFLICTS=	timelimit-[0-9]*

NO_WRKSUBDIR=	yes

do-install:
	${SETENV} ${MAKE_ENV} ${MAKE_CMD} -C ${WRKDIR} STAGEDIR=${STAGEDIR} install

.include <bsd.port.mk>
