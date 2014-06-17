.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public hasCurrent:I

.field public hasMore:I

.field public hasPast:I

.field public passListPreLoaderInterval:Ljava/lang/Long;

.field public passTimelineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public updateFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    iput v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasCurrent:I

    iput v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasPast:I

    iput v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasMore:I

    return-void
.end method


# virtual methods
.method public getHasCurrent()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasCurrent:I

    return v0
.end method

.method public getHasMore()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasMore:I

    return v0
.end method

.method public getHasPast()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasPast:I

    return v0
.end method

.method public getPassListPreLoaderInterval()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    return-object v0
.end method

.method public getPassTimelineList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passTimelineList:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->updateFlag:Ljava/lang/String;

    return-object v0
.end method

.method public setHasCurrent(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasCurrent:I

    return-void
.end method

.method public setHasMore(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasMore:I

    return-void
.end method

.method public setHasPast(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasPast:I

    return-void
.end method

.method public setPassListPreLoaderInterval(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    return-void
.end method

.method public setPassTimelineList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passTimelineList:Ljava/util/List;

    return-void
.end method

.method public setUpdateFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->updateFlag:Ljava/lang/String;

    return-void
.end method
