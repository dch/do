# Created by: Naoki Tsurutani
# $FreeBSD: head/www/linux-f10-flashplugin11/Makefile 393817 2015-08-09 19:14:13Z netchild $

USE_LINUX=		f10
ALSA_RUN_DEPENDS=	linux-${USE_LINUX}-alsa-lib>=1.0.21_5:${PORTSDIR}/audio/linux-f10-alsa-lib
USE_LINUX_APPS=		curl cyrus-sasl2 gtk2 libssh2 nspr nss openldap
MASTERDIR=		${.CURDIR}/../linux-c6-flashplugin11
LINUX_RPM_ARCH=		i686

.include "${MASTERDIR}/Makefile"
