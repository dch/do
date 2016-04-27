# Created by: Sylvio Cesar <sylvio@FreeBSD.org>
# $FreeBSD: head/devel/pear-PEAR_PackageFileManager2/Makefile 375249 2014-12-22 17:12:26Z feld $

PORTNAME=	PEAR_PackageFileManager2
PORTVERSION=	1.0.2
PORTREVISION=	1
CATEGORIES=	devel www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR class to maintain PEAR packages

LICENSE=	BSD2CLAUSE

BUILD_DEPENDS=	${PEARDIR}/PEAR/PackageFileManager/Plugins.php:${PORTSDIR}/devel/pear-PEAR_PackageFileManager_Plugins
RUN_DEPENDS=	${PEARDIR}/PEAR/PackageFileManager/Plugins.php:${PORTSDIR}/devel/pear-PEAR_PackageFileManager_Plugins

USES=	pear

.include <bsd.port.mk>
