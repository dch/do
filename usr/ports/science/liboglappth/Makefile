# Created by: Nakata Maho <maho@FreeBSD.org>
# $FreeBSD: head/science/liboglappth/Makefile 367888 2014-09-10 20:50:31Z gerald $

PORTNAME=	liboglappth
PORTVERSION=	1.0.0
PORTREVISION=	3
CATEGORIES=	science
MASTER_SITES=	http://bioinformatics.org/ghemical/download/release20111012/	\
		http://bioinformatics.org/ghemical/download/current
	
MAINTAINER=	maho@FreeBSD.org
COMMENT=	Support libraries of science/ghemical port

GNU_CONFIGURE=  yes
INSTALL_TARGET=	install-strip
USES=		libtool pathfix
USE_GL=		glu

CPPFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.mk>
