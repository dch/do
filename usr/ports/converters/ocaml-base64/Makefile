# Created by: Veniamin Gvozdikov <vg@FreeBSD.org>
# $FreeBSD: head/converters/ocaml-base64/Makefile 393608 2015-08-05 19:14:43Z vg $

PORTNAME=	base64
PORTVERSION=	2.0.0
CATEGORIES=	converters
PKGNAMEPREFIX=	ocaml-

MAINTAINER=	vg@FreeBSD.org
COMMENT=	Base64 encoding and decoding in OCaml

USE_GITHUB=	yes
GH_ACCOUNT=	mirage
GH_PROJECT=	ocaml-base64
GH_TAGNAME=	v${PORTVERSION}

USES=			gmake
HAS_CONFIGURE=		yes
MAKE_JOBS_UNSAFE=	yes

USE_OCAML=		yes
USE_OCAML_FINDLIB=	yes
USE_OCAMLFIND_PLIST=	yes
USE_OCAML_LDCONFIG=	yes
DOCSDIR=	${PREFIX}/share/doc/pcre-ocaml

CONFIGURE_ARGS=		--destdir="${DESTDIRNAME}"

.include <bsd.port.mk>
