.class public Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hasRecommend:Z

.field private publicId:Ljava/lang/String;

.field private publicName:Ljava/lang/String;

.field private thirdPartyNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;->publicName:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPartyNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;->thirdPartyNo:Ljava/lang/String;

    return-object v0
.end method

.method public isHasRecommend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;->hasRecommend:Z

    return v0
.end method

.method public setHasRecommend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;->hasRecommend:Z

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setPublicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;->publicName:Ljava/lang/String;

    return-void
.end method

.method public setThirdPartyNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;->thirdPartyNo:Ljava/lang/String;

    return-void
.end method
