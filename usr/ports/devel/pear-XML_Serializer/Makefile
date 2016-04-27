# Created by: Alex Miller (<asm@asm.kiev.ua>)
# $FreeBSD: head/devel/pear-XML_Serializer/Makefile 395055 2015-08-22 22:21:44Z mat $

PORTNAME=	XML_Serializer
PORTVERSION=	0.20.2
CATEGORIES=	devel www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR Swiss-army knive for reading and writing XML files

BUILD_DEPENDS=	${PEARDIR}/XML/XML/Parser.php:${PORTSDIR}/devel/pear-XML_Parser \
		${PEARDIR}/XML/Util.php:${PORTSDIR}/devel/pear-XML_Util
RUN_DEPENDS=	${PEARDIR}/XML/XML/Parser.php:${PORTSDIR}/devel/pear-XML_Parser \
		${PEARDIR}/XML/Util.php:${PORTSDIR}/devel/pear-XML_Util

USES=		pear

.include <bsd.port.mk>
