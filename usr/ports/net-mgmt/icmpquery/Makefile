# Created by: dom@happygiraffe.net
# $FreeBSD: head/net-mgmt/icmpquery/Makefile 352059 2014-04-24 20:03:12Z antoine $

PORTNAME=	icmpquery
PORTVERSION=	1.0.3
CATEGORIES=	net-mgmt
MASTER_SITES=	http://www.angio.net/security/
DISTNAME=	icmpquery
EXTRACT_SUFX=	.c

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Small utility for finding out time & netmask through ICMP

PLIST_FILES=	bin/icmpquery
NO_WRKSUBDIR=	YES
ALL_TARGET=	icmpquery

do-extract:
		@${CP} ${DISTDIR}/${DISTFILES} ${WRKDIR}
		@${CP} ${FILESDIR}/Makefile ${WRKDIR}

do-install:
		@${INSTALL_PROGRAM} ${WRKDIR}/icmpquery ${STAGEDIR}${PREFIX}/bin
		@${CHMOD} u+s ${STAGEDIR}${PREFIX}/bin/icmpquery

.include <bsd.port.mk>
