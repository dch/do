# Created by: Lars Thegler <lars@thegler.dk>
# $FreeBSD: head/games/p5-Games-Bingo/Makefile 376343 2015-01-05 18:54:44Z lth $

PORTNAME=	Games-Bingo
PORTVERSION=	0.17
CATEGORIES=	games perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Bingo game Perl implementation

USES=		perl5
USE_PERL5=	modbuild

post-patch:
	@${REINPLACE_CMD} -i '' '/Test::/d' ${WRKSRC}/Build.PL

.include <bsd.port.mk>
