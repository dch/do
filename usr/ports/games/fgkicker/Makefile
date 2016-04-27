# Created by: Erik Greenwald <erik@smluc.org>
# $FreeBSD: head/games/fgkicker/Makefile 367888 2014-09-10 20:50:31Z gerald $

PORTNAME=	fgkicker
PORTVERSION=	1.0
PORTREVISION=	9
CATEGORIES=	games
MASTER_SITES=	http://www.larfeliz.be/projects/files/fgkicker/

MAINTAINER=	erik@bz.bzflag.bz
COMMENT=	Launcher frontend for FlightGear

RUN_DEPENDS=	fgfs:${PORTSDIR}/games/flightgear

USE_GNOME=	gtk20
USES=		gmake pkgconfig tar:tgz

post-patch:
	@${REINPLACE_CMD} "s|-fmessage-length=0|| ; s|-O0|${CFLAGS}|" ${WRKSRC}/fgkicker.mak

do-build:
	(cd ${WRKSRC} && ${MAKE_CMD} -f ${PORTNAME}.mak ${PORTNAME})

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	${MKDIR} ${STAGEDIR}${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/airports.dat ${STAGEDIR}${DATADIR}

install-user:
	${INSTALL_DATA} ${DATADIR}/airports.dat $$HOME

.include <bsd.port.mk>
