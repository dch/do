# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/security/fpc-openssl/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	security lang
PKGNAMESUFFIX=	-openssl

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal unit for OpenSSL

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	OPENSSL
OPENSSL_DESC=	Install SSL and crypto library
OPTIONS_DEFAULT=	OPENSSL

OPENSSL_USE=	OPENSSL=yes

.include "${MASTERDIR}/Makefile"
