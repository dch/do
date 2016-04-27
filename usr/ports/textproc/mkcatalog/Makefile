# Created by: shige
# $FreeBSD: head/textproc/mkcatalog/Makefile 383609 2015-04-08 21:51:42Z jgh $

PORTNAME=	mkcatalog
PORTVERSION=	1.1
CATEGORIES=	textproc
MASTER_SITES=	# none
DISTFILES=	# none
EXTRACT_ONLY=	# none

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Maintenance utility for sgml catalog files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes
PLIST_FILES=	sbin/mkcatalog
SCRIPTS_ENV=	CONFIGURE_TARGETS=${CONFIGURE_TARGETS}

SRC=			${.CURDIR}/src
CONFIGURE_TARGETS=	mkcatalog

pre-configure:
.for f in ${CONFIGURE_TARGETS}
	${CP} ${SRC}/${f}.in ${WRKDIR}
.endfor

do-install:
	@${INSTALL_SCRIPT} ${WRKDIR}/mkcatalog \
		${STAGEDIR}${PREFIX}/sbin/mkcatalog

.include <bsd.port.mk>
