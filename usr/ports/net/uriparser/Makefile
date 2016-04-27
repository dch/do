# Created by: Ed Schouten <ed@FreeBSD.org>
# $FreeBSD: head/net/uriparser/Makefile 362000 2014-07-15 20:09:52Z tijl $

PORTNAME=	uriparser
PORTVERSION=	0.7.9
PORTREVISION=	1
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}/Sources/${PORTVERSION}

MAINTAINER=	ed@FreeBSD.org
COMMENT=	URI parsing library

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-doc --disable-test
INSTALL_TARGET=	install-strip
USES=		libtool pathfix tar:bzip2
USE_LDCONFIG=	yes

.include <bsd.port.mk>
