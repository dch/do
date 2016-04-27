# Created by: sada
# $FreeBSD: head/japanese/jcode.pl/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	jcode.pl
PORTVERSION=	2.13
PORTREVISION=	2
CATEGORIES=	japanese perl5
MASTER_SITES=	ftp://ftp.iij.ad.jp/pub/IIJ/dist/utashiro/perl/ \
		ftp://ftp.sra.co.jp/pub/lang/perl/sra-scripts/
EXTRACT_SUFX=	# none

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl library for Japanese character code conversion

LICENSE=	BSD

USES=		perl5
USE_PERL5=	run
NO_WRKSUBDIR=	yes
NO_BUILD=	yes
EXTRACT_CMD=	${CP}
EXTRACT_BEFORE_ARGS=	# none
EXTRACT_AFTER_ARGS=	${WRKDIR}/${PORTNAME}
PLIST_FILES=	${SITE_PERL_REL}/${PORTNAME}

do-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/${SITE_PERL_REL}
	${INSTALL_DATA} ${WRKDIR}/${PORTNAME} ${STAGEDIR}${PREFIX}/${SITE_PERL_REL}

.include <bsd.port.mk>
