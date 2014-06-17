.class public abstract Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;


# instance fields
.field protected desc:Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

.field protected postAction:Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;

.field protected preAction:Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->desc:Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->getDesc()Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->getDesc()Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->getDesc()Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->getDesc()Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDesc()Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->desc:Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    return-object v0
.end method

.method public getPostAction()Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->postAction:Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;

    return-object v0
.end method

.method public getPreAction()Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->preAction:Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;

    return-object v0
.end method

.method public isSwallow()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->desc:Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->desc:Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->isSwallow:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postExec()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->postAction:Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->postAction:Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;->exec()V

    :cond_0
    return-void
.end method

.method public preExec()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->preAction:Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->preAction:Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;->exec()V

    :cond_0
    return-void
.end method

.method public setDesc(Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->desc:Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    return-void
.end method

.method public setPostAction(Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->postAction:Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;

    return-void
.end method

.method public setPreAction(Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->preAction:Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;

    return-void
.end method
