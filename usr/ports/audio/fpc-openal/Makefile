# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD: head/audio/fpc-openal/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	audio lang
PKGNAMESUFFIX=	-openal

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to openal library

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	OPENAL
OPENAL_DESC=	Install openal library
OPTIONS_DEFAULT=	OPENAL

OPENAL_USES=	openal:soft

.include "${MASTERDIR}/Makefile"
