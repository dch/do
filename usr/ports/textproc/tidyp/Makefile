# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@sunpoet.net>
# $FreeBSD: head/textproc/tidyp/Makefile 384446 2015-04-21 18:39:55Z sunpoet $

PORTNAME=	tidyp
PORTVERSION=	1.04
PORTREVISION=	2
CATEGORIES=	textproc www
MASTER_SITES=	http://cloud.github.com/downloads/petdance/tidyp/ \
		LOCAL/sunpoet

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Library and program to validate and fix HTML

CONFIGURE_ARGS=	--enable-asian --enable-utf16
GNU_CONFIGURE=	yes
INSTALL_TARGET=	install-strip
USE_LDCONFIG=	yes
USES=		libtool

OPTIONS_DEFINE=	ACCESS DEBUG
ACCESS_DESC=	Accessibility checks

PLIST_SUB=	PORTVERSION=${PORTVERSION}

ACCESS_CONFIGURE_ENABLE=access
DEBUG_CONFIGURE_ENABLE=	debug

.include <bsd.port.mk>
