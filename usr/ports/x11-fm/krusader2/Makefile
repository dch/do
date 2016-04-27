# Created by: Heiner <h.eichmann@gmx.de>
# $FreeBSD: head/x11-fm/krusader2/Makefile 379358 2015-02-19 18:19:28Z makc $

PORTNAME=	krusader
DISTVERSION=	2.4.0-beta3
PORTREVISION=	3
CATEGORIES=	x11-fm kde
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${DISTVERSION}/

MAINTAINER=	fluffy@FreeBSD.org
COMMENT=	Twin panel file manager for KDE, like midnight or norton commander

USES=		cmake:outsource gettext tar:bzip2
USE_KDE4=	kdelibs kdeprefix automoc4
USE_QT4=	moc_build qmake_build rcc_build uic_build

.include <bsd.port.mk>
