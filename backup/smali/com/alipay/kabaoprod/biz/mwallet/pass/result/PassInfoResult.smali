.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public passInfo:Lcom/alipay/kabaoprod/core/model/model/PassInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->passInfo:Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    return-object v0
.end method

.method public setPassInfo(Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->passInfo:Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    return-void
.end method
