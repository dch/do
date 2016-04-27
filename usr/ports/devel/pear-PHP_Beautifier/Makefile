# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: head/devel/pear-PHP_Beautifier/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	PHP_Beautifier
PORTVERSION=	0.1.15
PORTREVISION=	1
CATEGORIES=	devel www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR beautifier for PHP

BUILD_DEPENDS=	${PEARDIR}/Log.php:${PORTSDIR}/sysutils/pear-Log
RUN_DEPENDS=	${PEARDIR}/Log.php:${PORTSDIR}/sysutils/pear-Log

USES=	pear
USE_PHP=	tokenizer bz2

.include <bsd.port.mk>
