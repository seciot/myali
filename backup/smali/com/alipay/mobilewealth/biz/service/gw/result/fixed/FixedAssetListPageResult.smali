.class public Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedAssetListPageResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonPageResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public assetInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/fixed/FixedAssetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonPageResult;-><init>()V

    return-void
.end method
