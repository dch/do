# Created by: chinsan <chinsan.tw@gmail.com>
# $FreeBSD: head/www/pear-UDDI/Makefile 395055 2015-08-22 22:21:44Z mat $

PORTNAME=	UDDI
PORTVERSION=	0.2.4
CATEGORIES=	www pear finance

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR UDDI for PHP

BUILD_DEPENDS=	${PEARDIR}/XML/XML/Parser.php:${PORTSDIR}/devel/pear-XML_Parser \
		${PEARDIR}/XML/Util.php:${PORTSDIR}/devel/pear-XML_Util
RUN_DEPENDS=	${PEARDIR}/XML/XML/Parser.php:${PORTSDIR}/devel/pear-XML_Parser \
		${PEARDIR}/XML/Util.php:${PORTSDIR}/devel/pear-XML_Util

USES=	pear

.include <bsd.port.mk>
