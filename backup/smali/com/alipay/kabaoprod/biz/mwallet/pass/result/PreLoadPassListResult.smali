.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public couponList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public couponUpdateFlag:Ljava/lang/String;

.field public passListPreLoaderInterval:Ljava/lang/Long;

.field public travelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public travelUpdateFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCouponList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->couponList:Ljava/util/List;

    return-object v0
.end method

.method public getCouponUpdateFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->couponUpdateFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getPassListPreLoaderInterval()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    return-object v0
.end method

.method public getTravelList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->travelList:Ljava/util/List;

    return-object v0
.end method

.method public getTravelUpdateFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->travelUpdateFlag:Ljava/lang/String;

    return-object v0
.end method

.method public setCouponList(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->couponList:Ljava/util/List;

    return-void
.end method

.method public setCouponUpdateFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->couponUpdateFlag:Ljava/lang/String;

    return-void
.end method

.method public setPassListPreLoaderInterval(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    return-void
.end method

.method public setTravelList(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->travelList:Ljava/util/List;

    return-void
.end method

.method public setTravelUpdateFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->travelUpdateFlag:Ljava/lang/String;

    return-void
.end method
