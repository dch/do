# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: head/security/pear-File_SMBPasswd/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	File_SMBPasswd
PORTVERSION=	1.0.3
CATEGORIES=	security www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR class for managing SAMBA style password files

BUILD_DEPENDS=	${PEARDIR}/Crypt/CHAP.php:${PORTSDIR}/security/pear-Crypt_CHAP
RUN_DEPENDS=	${PEARDIR}/Crypt/CHAP.php:${PORTSDIR}/security/pear-Crypt_CHAP

USES=	pear
USE_PHP=	mhash

.include <bsd.port.mk>
