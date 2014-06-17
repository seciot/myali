.class public Lcom/alipay/publiccore/client/result/GlobalRecommendListResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;


# instance fields
.field private hasNextPage:Z

.field private officialRecommendInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/OfficialRecommendInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/result/GlobalRecommendListResult;->officialRecommendInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getOfficialRecommendInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/OfficialRecommendInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/GlobalRecommendListResult;->officialRecommendInfos:Ljava/util/List;

    return-object v0
.end method

.method public isHasNextPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/publiccore/client/result/GlobalRecommendListResult;->hasNextPage:Z

    return v0
.end method

.method public setHasNextPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/publiccore/client/result/GlobalRecommendListResult;->hasNextPage:Z

    return-void
.end method

.method public setOfficialRecommendInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/OfficialRecommendInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/GlobalRecommendListResult;->officialRecommendInfos:Ljava/util/List;

    return-void
.end method
