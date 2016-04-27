# Created by: Hye-Shik Chang <perky@python.or.kr>
# $FreeBSD: head/net-im/kmess-kde4/Makefile 394508 2015-08-17 14:20:40Z mat $

PORTNAME=	kmess
PORTVERSION=	2.0.6.2
PORTREVISION=	9
CATEGORIES=	net-im kde
MASTER_SITES=	SF/${PORTNAME}/Latest%20versions/${PORTVERSION}/

MAINTAINER=	syncer@gmail.com
COMMENT=	MSN Messenger client for KDE

LIB_DEPENDS=	libqca.so:${PORTSDIR}/devel/qca

USE_GNOME=	libxml2 libxslt
USE_KDE4=	kdeprefix kdelibs libkonq automoc4
USE_QT4=	qmake_build moc_build rcc_build uic_build
USES=		cmake gettext tar:bzip2

.include <bsd.port.mk>
