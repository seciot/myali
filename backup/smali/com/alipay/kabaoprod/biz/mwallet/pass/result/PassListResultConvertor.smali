.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResultConvertor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static converCouponListFromPreLoadPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getCouponList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getCouponList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getCouponList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setPassTimelineList(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getPassListPreLoaderInterval()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setPassListPreLoaderInterval(Ljava/lang/Long;)V

    iget-boolean v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->success:Z

    iput-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    goto :goto_0
.end method

.method public static converTravelListFromPreLoadPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getTravelList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getTravelList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getTravelList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setPassTimelineList(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getPassListPreLoaderInterval()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setPassListPreLoaderInterval(Ljava/lang/Long;)V

    iget-boolean v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->success:Z

    iput-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    goto :goto_0
.end method
