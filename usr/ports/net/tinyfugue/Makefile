# Created by: mike@binghamton.edu
# $FreeBSD: head/net/tinyfugue/Makefile 377064 2015-01-15 09:05:37Z tijl $

PORTNAME=	tf
PORTVERSION=	5.0b8
PORTREVISION=	1
CATEGORIES=	net games
MASTER_SITES=	SF/tinyfugue/tinyfugue/5.0%20beta%208
DISTVERSION=	${PORTVERSION:S/.//}
DISTNAME=	${PORTNAME}-${DISTVERSION}

MAINTAINER=	johans@FreeBSD.org
COMMENT=	Popular programmable MUD client, with macro support and more

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-manpage --enable-version --enable-symlink --datadir=${PREFIX}/lib
USE_OPENSSL=	yes

PLIST_SUB=	DISTNAME=${DISTNAME}

post-patch:
	@${REINPLACE_CMD} 's:@.*dir@:$${DESTDIR}&:' ${WRKSRC}/unix/vars.mak.in
	@${REINPLACE_CMD} '/ln -s/s@(TF)@(TF:T)@' ${WRKSRC}/unix/unix.mak

.include <bsd.port.mk>
