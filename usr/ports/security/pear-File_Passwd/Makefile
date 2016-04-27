# Created by: Antonio Carlos Venancio Junior <antonio@inf.ufsc.br>
# $FreeBSD: head/security/pear-File_Passwd/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	File_Passwd
PORTVERSION=	1.1.7
CATEGORIES=	security pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR class to manipulate many kinds of password files

USES=	pear

OPTIONS_DEFINE=	PEAR_CRYPT_CHAP
PEAR_CRYPT_CHAP_DESC=	PEAR::Crypt_CHAP support

PEAR_CRYPT_CHAP_RUN_DEPENDS=	${PEARDIR}/Crypt/CHAP.php:${PORTSDIR}/security/pear-Crypt_CHAP

.include <bsd.port.mk>
