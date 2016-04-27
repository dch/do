# $FreeBSD: head/net/wireshark-qt5/Makefile 378406 2015-02-04 16:37:21Z marcus $

MASTERDIR=	${.CURDIR}/../wireshark
COMMENT=	Powerful network analyzer/capture tool (QT package)

CONFLICTS=	wireshark-[0-9]*

OPTIONS_EXCLUDE=	GTK3
OPTIONS_DEFAULT=	SNMP ADNS PCRE IPV6 GEOIP GSSAPI X11 QT5

.include "${MASTERDIR}/Makefile"
