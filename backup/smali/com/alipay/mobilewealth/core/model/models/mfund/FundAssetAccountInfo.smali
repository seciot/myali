.class public Lcom/alipay/mobilewealth/core/model/models/mfund/FundAssetAccountInfo;
.super Lcom/alipay/mobilewealth/core/model/models/mfund/FundBaseAssetAccountInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public historyProfit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/mfund/FundTradeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/core/model/models/mfund/FundBaseAssetAccountInfo;-><init>()V

    return-void
.end method
