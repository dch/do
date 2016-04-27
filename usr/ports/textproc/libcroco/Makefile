# Created by: Adam Weinberger <adamw@FreeBSD.org>
# $FreeBSD: head/textproc/libcroco/Makefile 355817 2014-05-30 10:50:33Z tijl $

PORTNAME=	libcroco
PORTVERSION=	0.6.8
PORTREVISION=	2
CATEGORIES=	textproc gnome
MASTER_SITES=	GNOME

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	CSS2 parsing library

GNU_CONFIGURE=	yes
USES=		gmake gettext libtool:keepla pathfix pkgconfig tar:xz
USE_LDCONFIG=	yes
USE_GNOME=	glib20 libxml2
CONFIGURE_ARGS=	--disable-gtk-doc-html

PLIST_SUB=	VERSION="0.6"

.include <bsd.port.pre.mk>

.if ${OSVERSION} < 900035
CONFIGURE_ARGS+=--disable-Bsymbolic
.endif

.include <bsd.port.post.mk>
