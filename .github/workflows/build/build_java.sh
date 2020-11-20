#!/bin/bash
# Script to build projects using build.sh script.
set -eo pipefail

export COMMIT_RANGE="${COMMIT_RANGE}";

export projects=(
"java/advanced/BannerRecyclerViewExample"
"java/advanced/APIDemo"
"java/admob/AdaptiveBannerExample"
"java/admob/BannerExample"
"java/admob/RewardedVideoExample"
"java/admob/NativeAdvancedExample"
"java/admob/InterstitialExample"
"java/admanager/AdaptiveBannerExample"
"java/admanager/BannerExample"
"java/admanager/NativeAdsExample"
"java/admanager/RewardedVideoExample"
"java/admanager/InterstitialExample"
)

.github/workflows/build/build_all.sh;
