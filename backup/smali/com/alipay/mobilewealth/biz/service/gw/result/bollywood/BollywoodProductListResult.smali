.class public Lcom/alipay/mobilewealth/biz/service/gw/result/bollywood/BollywoodProductListResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonPageResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasNextPage:Z

.field public listCommon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/bollywood/BollywoodProductInfo;",
            ">;"
        }
    .end annotation
.end field

.field public listRecommend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/bollywood/BollywoodProductInfo;",
            ">;"
        }
    .end annotation
.end field

.field public productMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonPageResult;-><init>()V

    return-void
.end method
