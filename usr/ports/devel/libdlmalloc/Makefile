# Created by: roberto
# $FreeBSD: head/devel/libdlmalloc/Makefile 349152 2014-03-25 15:16:12Z roberto $

PORTNAME=	dlmalloc
PORTVERSION=	2.8.6
CATEGORIES=	devel
MASTER_SITES=	ftp://gee.cs.oswego.edu/pub/misc/ 
DISTFILES=	malloc-${PORTVERSION}.c malloc-${PORTVERSION}.h

MAINTAINER=	roberto@FreeBSD.org
COMMENT=	Small, fast malloc library by Doug Lea

NO_WRKSUBDIR=	yes
USE_LDCONFIG=	yes

do-extract:
	@${MKDIR} ${WRKDIR}
.for f in ${DISTFILES}
	${CP} -p ${DISTDIR}/${f} ${WRKDIR}
.endfor
	${CP} -p ${FILESDIR}/Makefile ${WRKDIR}

.include <bsd.port.mk>
