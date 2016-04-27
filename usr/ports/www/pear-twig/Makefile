# Created by: Joe Horn <joehorn@gmail.com>
# $FreeBSD: head/www/pear-twig/Makefile 369314 2014-09-26 09:30:02Z bapt $

PORTNAME=	twig
PORTVERSION=	1.15.1
CATEGORIES=	www pear
MASTER_SITES=	http://pear.twig-project.org/get/
DISTNAME=	Twig-${PORTVERSION}

MAINTAINER=	joehorn@gmail.com
COMMENT=	The flexible, fast, and secure template engine for PHP

LICENSE=	BSD3CLAUSE

BUILD_DEPENDS=	${PEARDIR}/.channels/pear.twig-project.org.reg:${PORTSDIR}/devel/pear-channel-twig
RUN_DEPENDS=	${PEARDIR}/.channels/pear.twig-project.org.reg:${PORTSDIR}/devel/pear-channel-twig

USES=	pear
PEAR_CHANNEL=	twig

USE_PHP=	ctype hash
WANT_PHP_CLI=	yes

.include <bsd.port.mk>
