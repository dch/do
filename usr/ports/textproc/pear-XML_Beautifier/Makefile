# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: head/textproc/pear-XML_Beautifier/Makefile 395055 2015-08-22 22:21:44Z mat $

PORTNAME=	XML_Beautifier
PORTVERSION=	1.2.2
CATEGORIES=	textproc devel pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR class to format XML documents

BUILD_DEPENDS=	${PEARDIR}/XML/XML/Parser.php:${PORTSDIR}/devel/pear-XML_Parser \
		${PEARDIR}/XML/Util.php:${PORTSDIR}/devel/pear-XML_Util
RUN_DEPENDS=	${PEARDIR}/XML/XML/Parser.php:${PORTSDIR}/devel/pear-XML_Parser \
		${PEARDIR}/XML/Util.php:${PORTSDIR}/devel/pear-XML_Util

USES=	pear

.include <bsd.port.mk>
