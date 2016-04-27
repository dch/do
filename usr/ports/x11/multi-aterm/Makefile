# Created by: Sebastian Yepes <esn@x123.info>
# $FreeBSD: head/x11/multi-aterm/Makefile 360682 2014-07-04 23:16:47Z adamw $

PORTNAME=	multi-aterm
PORTVERSION=	0.2.1
PORTREVISION=	2
CATEGORIES=	x11
MASTER_SITES=	http://www.nongnu.org/materm/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Multi terminal based on aterm

USE_XORG=	xpm
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=--with-xpm=${LOCALBASE}

DOCS=		AUTHORS ChangeLog INSTALL TODO

OPTIONS_DEFINE=	DOCS UTMP WTMP

UTMP_CONFIGURE_ON=	--enable-utmp
WTMP_CONFIGURE_ON=	--enable-wtmp

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
