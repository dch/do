# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/devel/liblas12/Makefile 372313 2014-11-08 10:25:48Z wen $

PORTNAME=	liblas12
PORTVERSION=	1.2.1
CATEGORIES=	devel
MASTER_SITES=	http://trac.liblas.org/raw-attachment/wiki/${PORTVERSION}/
DISTNAME=	liblas-src-${PORTVERSION}

MAINTAINER=	rhurlin@gwdg.de
COMMENT=	Library For Reading And Writing LAS-Format Data

LICENSE=	BSD2CLAUSE

CONFLICTS=	liblas-1.7*

USES=		gmake libtool
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

WRKSRC=		${WRKDIR}/liblas-src-${PORTVERSION}

.include <bsd.port.mk>
