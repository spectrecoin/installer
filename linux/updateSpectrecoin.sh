#!/usr/bin/env bash
# ============================================================================
#
# FILE:         updateSpectrecoin.sh
#
# SPDX-FileCopyrightText: © 2020 Alias Developers
# SPDX-FileCopyrightText: © 2016 SpectreCoin Developers
# SPDX-License-Identifier: MIT
#
# DESCRIPTION:  Simple wrapper script for the transition
#               from Spectrecoin to Alias
#
# AUTHOR:       HLXEasy
# PROJECT:      https://alias.cash/
#               https://github.com/aliascash/alias-wallet
#
# ============================================================================

versionToInstall=$1
# The update script on the local machines don't know about the possible
# existing releases on the new repository. So if something else than
# 'latest' is given, pin it to the first Alias release
#if [ "${versionToInstall}" = 'latest' ] ; then
#    echo "Upgrading from Spectrecoin to latest Alias wallet release"
#else
#    versionToInstall="4.3.0"
#    echo "Upgrading from Spectrecoin to Alias v${versionToInstall}"
#fi

# ----------------------------------------------------------------------------
# Use ca-certificates if available
if [[ -e /etc/ssl/certs/ca-certificates.crt ]] ; then
    cacertParam='--cacert /etc/ssl/certs/ca-certificates.crt'
fi

echo
echo "You are running Spectrecoin on this machine but the project has rebranded to"
echo "Alias (https://alias.cash/). To update to the Alias wallet, execute the"
echo "following cmd on the same cmdline, where you use the Shell-UI:"
echo
echo "curl ${cacertParam} -L -s https://raw.githubusercontent.com/aliascash/installer/master/linux/migrateSpectrecoinToAlias.sh | bash -s '${versionToInstall}'"
echo
echo "If you want to perform the update now, you need to"
echo "cancel the restart of Spectrecoin with 'Ctrl C'!"
echo
exit
