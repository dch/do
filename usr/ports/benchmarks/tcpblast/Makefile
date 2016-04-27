# Created by: mr
# $FreeBSD: head/benchmarks/tcpblast/Makefile 367236 2014-09-03 21:07:17Z antoine $

PORTNAME=	tcpblast
PORTVERSION=	1.1
PORTREVISION=	1
CATEGORIES=	benchmarks net ipv6
DISTFILES=	# none

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Measures the throughput of a TCP connection

PLIST_FILES=	bin/tcpblast

USES=		uidfix
WRKSRC=		${WRKDIR}/src

do-extract:
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	${CP} -RP ${.CURDIR}/src ${WRKDIR}

.include <bsd.port.mk>
