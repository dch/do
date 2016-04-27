# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: head/devel/pear-PEAR_PackageFileManager/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	PEAR_PackageFileManager
PORTVERSION=	1.7.0
CATEGORIES=	devel www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR class to maintain PEAR packages

OPTIONS_DEFINE=	PEAR_PHP_COMPATINFO PEAR_XML_TREE
PEAR_PHP_COMPATINFO_DESC=	PEAR::PHP_CompatInfo support
PEAR_XML_TREE_DESC=	PEAR::XML_Tree support

USES=	pear

PEAR_PHP_COMPATINFO_RUN_DEPENDS=	${PEARDIR}/PHP/CompatInfo.php:${PORTSDIR}/devel/pear-PHP_CompatInfo
PEAR_XML_TREE_RUN_DEPENDS=	${PEARDIR}/XML/Tree.php:${PORTSDIR}/devel/pear-XML_Tree

.include <bsd.port.mk>
