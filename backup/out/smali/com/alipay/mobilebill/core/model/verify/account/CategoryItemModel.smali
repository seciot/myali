.class public Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categoryName:Ljava/lang/String;

.field public totalFee:Ljava/lang/String;

.field public totalPercent:Ljava/lang/String;

.field public tradeItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/core/model/verify/account/TradeItemModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;->totalFee:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPercent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;->totalPercent:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeItemInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/core/model/verify/account/TradeItemModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;->tradeItemInfos:Ljava/util/List;

    return-object v0
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setTotalFee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;->totalFee:Ljava/lang/String;

    return-void
.end method

.method public setTotalPercent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;->totalPercent:Ljava/lang/String;

    return-void
.end method

.method public setTradeItemInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/core/model/verify/account/TradeItemModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;->tradeItemInfos:Ljava/util/List;

    return-void
.end method
