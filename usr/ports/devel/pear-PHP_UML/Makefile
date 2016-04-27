# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/devel/pear-PHP_UML/Makefile 384571 2015-04-23 13:25:03Z vanilla $

PORTNAME=	PHP_UML
PORTVERSION=	1.6.2
CATEGORIES=	devel

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR Class to Create UML Representation of PHP Code

LICENSE=	LGPL3

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear \
		${PEARDIR}/Console/CommandLine.php:${PORTSDIR}/devel/pear-Console_CommandLine
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

USES=		pear
USE_PHP=	spl xsl

.include <bsd.port.mk>
