.class public Lcom/alipay/mobilewealth/biz/service/gw/result/bollywood/BollywoodAssetListResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonPageResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bollywoodAssetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/bollywood/BollywoodAssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public totalAsset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonPageResult;-><init>()V

    return-void
.end method
