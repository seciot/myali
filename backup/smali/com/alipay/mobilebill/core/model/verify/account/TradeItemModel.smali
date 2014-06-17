.class public Lcom/alipay/mobilebill/core/model/verify/account/TradeItemModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public amount:Ljava/lang/String;

.field public traderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/TradeItemModel;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getTraderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/TradeItemModel;->traderName:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/TradeItemModel;->amount:Ljava/lang/String;

    return-void
.end method

.method public setTraderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/TradeItemModel;->traderName:Ljava/lang/String;

    return-void
.end method
