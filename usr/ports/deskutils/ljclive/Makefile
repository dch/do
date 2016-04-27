# Created by: johans
# $FreeBSD: head/deskutils/ljclive/Makefile 357277 2014-06-10 07:39:01Z olgeni $

PORTNAME=	ljclive
PORTVERSION=	0.4.10
PORTREVISION=	1
CATEGORIES=	deskutils
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${DISTNAME}
DISTNAME=	clive-${PORTVERSION}

MAINTAINER=	johans@FreeBSD.org
COMMENT=	Command line client for posting LiveJournal entries

USES=		iconv
GNU_CONFIGURE=	yes

CONFLICTS=	*clive-[1-9]*

.include <bsd.port.pre.mk>

post-patch:
	@${REINPLACE_CMD} 's/iconv "iconv/"iconv/' ${WRKSRC}/configure

.include <bsd.port.post.mk>
