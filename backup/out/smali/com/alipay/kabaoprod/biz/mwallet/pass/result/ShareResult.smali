.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public shareContent:Ljava/lang/String;

.field public shareImgDesc:Ljava/lang/String;

.field public shareImgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getShareContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;->shareContent:Ljava/lang/String;

    return-object v0
.end method

.method public getShareImgDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;->shareImgDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getShareImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;->shareImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setShareContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;->shareContent:Ljava/lang/String;

    return-void
.end method

.method public setShareImgDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;->shareImgDesc:Ljava/lang/String;

    return-void
.end method

.method public setShareImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;->shareImgUrl:Ljava/lang/String;

    return-void
.end method
