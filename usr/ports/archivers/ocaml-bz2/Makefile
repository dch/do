# Created by: Jaap Boender <jaapb@kerguelen.org>
# $FreeBSD: head/archivers/ocaml-bz2/Makefile 395034 2015-08-22 14:31:38Z marino $

PORTNAME=	bz2
PORTVERSION=	0.6.0
PORTREVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	http://forge.ocamlcore.org/frs/download.php/72/
PKGNAMEPREFIX=	ocaml-
DISTNAME=	caml${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	OCaml library to manipulate bz2 files

DESTDIRNAME=	DONTUSEIT
GNU_CONFIGURE=	yes
USES=		gmake
USE_OCAML=		yes
USE_OCAML_LDCONFIG=	yes
USE_OCAML_WASH=		yes
USE_OCAML_FINDLIB=	yes
USE_OCAMLFIND_PLIST=	yes

PORTDOCS=	*
DOCSDIR=	${OCAML_DOCSDIR}/${PORTNAME}

OPTIONS_DEFINE=	DOCS

MAKE_JOBS_UNSAFE=	yes

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC}/doc && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR})

.include <bsd.port.mk>
