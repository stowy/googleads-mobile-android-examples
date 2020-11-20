#!/bin/bash
# Script to build projects using build.sh script.
set -eo pipefail

export COMMIT_RANGE="${COMMIT_RANGE}";

export projects=(
"kotlin/advanced/APIDemo"
"kotlin/admob/AdaptiveBannerExample"
"kotlin/admob/BannerExample"
"kotlin/admob/RewardedVideoExample"
"kotlin/admob/NativeAdvancedExample"
"kotlin/admob/InterstitialExample"
"kotlin/admanager/AdaptiveBannerExample"
"kotlin/admanager/BannerExample"
"kotlin/admanager/NativeAdsExample"
"kotlin/admanager/RewardedVideoExample"
"kotlin/admanager/InterstitialExample"
)

. .github/workflows/build/build_all.sh;
