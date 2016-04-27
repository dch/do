# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/devel/fpc-bfd/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	devel lang
PKGNAMESUFFIX=	-bfd

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface for the GNU Binary Format description

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	LIBBFD
LIBBFD_DESC=	Install Universal BFD library from GNU binutils
OPTIONS_DEFAULT=	LIBBFD

LIBBFD_RUN_DEPENDS=	${LOCALBASE}/lib/libbfd.a:${PORTSDIR}/devel/libbfd

.include "${MASTERDIR}/Makefile"
