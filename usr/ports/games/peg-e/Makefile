# Created by: Dmitry Marakasov <amdmi3@FreeBSD.org>
# $FreeBSD: head/games/peg-e/Makefile 353186 2014-05-07 18:06:21Z amdmi3 $

PORTNAME=	peg-e
PORTVERSION=	1.1.2
CATEGORIES=	games
MASTER_SITES=	http://gottcode.org/peg-e/ \
		http://mirror.amdmi3.ru/distfiles/
DISTNAME=	${PORTNAME}-${PORTVERSION}-src

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Peg elimination game

USES=		tar:bzip2 qmake
USE_QT4=	corelib gui moc_build rcc_build
INSTALLS_ICONS=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

.include <bsd.port.mk>
