.class public Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedBuyQueryResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/BizItem;",
            ">;"
        }
    .end annotation
.end field

.field public buttonText:Ljava/lang/String;

.field public contract:Lcom/alipay/mobilewealth/core/model/models/common/BizItem;

.field public financialSerialNo:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
