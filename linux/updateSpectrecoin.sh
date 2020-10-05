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

echo "Upgrading from Spectrecoin to Alias (${versionToInstall}):"

curl ${cacertParam} -L -s https://raw.githubusercontent.com/aliascash/installer/master/linux/migrateSpectrecoinToAlias.sh | sudo bash -s "${versionToInstall}"
