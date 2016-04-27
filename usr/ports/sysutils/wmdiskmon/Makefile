# Created by: pat
# $FreeBSD: head/sysutils/wmdiskmon/Makefile 368058 2014-09-12 18:24:57Z antoine $

PORTNAME=	wmdiskmon
PORTVERSION=	0.0.2
PORTREVISION=	4
CATEGORIES=	sysutils windowmaker
MASTER_SITES=	http://tnemeth.free.fr/projets/programmes/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Disk usage monitor dockapp

USE_XORG=	x11 xpm
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=""

PLIST_FILES=	"@(,kmem,2555) bin/${PORTNAME}" man/man1/${PORTNAME}.1.gz

post-patch:
	@${REINPLACE_CMD} '/SETGID_FLAGS=/d' ${WRKSRC}/configure

.include <bsd.port.mk>
