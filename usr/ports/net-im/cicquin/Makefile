# Created by: Peter Pentchev
# $FreeBSD: head/net-im/cicquin/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	cicquin
PORTVERSION=	0.1
CATEGORIES=	net-im
#MASTER_SITES=	LOCAL/roam/misc/cicquin \ 
MASTER_SITES=	\
		http://devel.ringlet.net/misc/cicquin/ \
		http://people.FreeBSD.org/~roam/misc/cicquin/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Look up users in the CenterICQ user database

PLIST_FILES=	bin/${PORTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME}.sh \
		${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
