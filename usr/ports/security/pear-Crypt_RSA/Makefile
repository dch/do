# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: head/security/pear-Crypt_RSA/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Crypt_RSA
PORTVERSION=	1.2.1
PORTREVISION=	1
CATEGORIES=	security www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR class allows you to use two-key strong cryptography

USES=	pear

OPTIONS_DEFINE=	BCMATH GMP
BCMATH_DESC=	PHP BCMath extension support
GMP_DESC=	PHP GMP extension support

BCMATH_USE=	PHP=bcmath
GMP_USE=	PHP=gmp

.include <bsd.port.mk>
