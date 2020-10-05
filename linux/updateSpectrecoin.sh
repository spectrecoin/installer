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

# ----------------------------------------------------------------------------
# Use ca-certificates if available
if [[ -e /etc/ssl/certs/ca-certificates.crt ]] ; then
    cacertParam='--cacert /etc/ssl/certs/ca-certificates.crt'
fi

echo "Upgrading from Spectrecoin to Alias:"

curl ${cacertParam} -L -s https://raw.githubusercontent.com/aliascash/installer/master/linux/updateAliaswallet.sh | sudo bash -s "${versionToInstall}"
