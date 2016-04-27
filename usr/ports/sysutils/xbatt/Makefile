# Created by: Nobuhiro Yasutomi <nobu@psrc.isac.co.jp>
# $FreeBSD: head/sysutils/xbatt/Makefile 388556 2015-06-04 22:38:06Z amdmi3 $

PORTNAME=	xbatt
PORTVERSION=	1.2.1
PORTREVISION=	3
CATEGORIES=	sysutils
MASTER_SITES=	http://www.clave.gr.jp/~eto/xbatt/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Laptop battery status display for X11

ONLY_FOR_ARCHS=	i386 amd64

USES=		imake:noman
USE_XORG=	xpm xaw
PLIST_FILES=	"@(,operator,2755) bin/xbatt"

.include <bsd.port.pre.mk>

.if ${ARCH} == amd64 && ${OPSYS} == FreeBSD && ${OSVERSION} < 900000
IGNORE=		doesn't support FreeBSD 8.x amd64
.endif

.include <bsd.port.post.mk>
