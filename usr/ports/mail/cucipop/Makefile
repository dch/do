# Created by: igor@zynaps.ru
# $FreeBSD: head/mail/cucipop/Makefile 386312 2015-05-14 10:15:04Z mat $

# NOTE: APOP works only for virtual hosts as designed!
#       Virtual hosts works only with Berkeley DB2.
#       Berkeley DB2 is in conflict with libc, so commented out. :-(

PORTNAME=	cucipop
PORTVERSION=	1.31
PORTREVISION=	4
CATEGORIES=	mail ipv6
MASTER_SITES=	ftp://ftp.informatik.rwth-aachen.de/pub/packages/cucipop/ \
		http://ftp.riken.go.jp/archives/net/mail/pop/cucipop/ \
		http://horms.net/projects/cucipop/download/

PATCH_SITES=	RINGSERVER/net/kame/misc
PATCHFILES=	cucipop-1.31-v6-20010223.diff.gz
PATCH_DIST_STRIP=	-p1

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Cubic Circle POP3 daemon (fully RFC1939 compliant)

BROKEN=		Dead patch site

.include <bsd.port.mk>
