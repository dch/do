# Created by: TAKATSU Tomonari <tota@rtfm.jp>
# $FreeBSD: head/misc/ruby-progressbar/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	progressbar
PORTVERSION=	0.9
CATEGORIES=	misc ruby
MASTER_SITES=	http://0xcc.net/ruby-progressbar/ \
		LOCAL/tota/progressbar
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	ruby-${PORTNAME}-${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Text progress bar library for Ruby

USE_RUBY=	yes
NO_BUILD=	yes

RUBY_RD_FILES=	progressbar.en.rd progressbar.ja.rd
DOCS=	ChangeLog ${RUBY_RD_FILES}

OPTIONS_DEFINE=	DOCS

do-install:
	${MKDIR} ${STAGEDIR}${RUBY_SITELIBDIR}
	${INSTALL_DATA} ${INSTALL_WRKSRC}/${PORTNAME}.rb ${STAGEDIR}${RUBY_SITELIBDIR}
	${MKDIR} ${STAGEDIR}${RUBY_MODDOCDIR}
	cd ${INSTALL_WRKSRC}; ${INSTALL_DATA} ${DOCS} ${STAGEDIR}${RUBY_MODDOCDIR}

.include <bsd.port.mk>
