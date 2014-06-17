.class public Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;
.super Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;


# instance fields
.field protected isOneTime:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;-><init>(Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;)V

    iput-boolean v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->isOneTime:Z

    iput-boolean v0, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->isSwallow:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "matchString: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "matchString result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->desc:Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    check-cast v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;

    iget-object v1, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->appId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->pageId:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetAppId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetPageId:Ljava/lang/String;

    invoke-static {p4, v1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->triggerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->triggerId:Ljava/lang/String;

    invoke-static {p5, v0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionMatchHelper;->matchViewTrigger(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postExec()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->desc:Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->desc:Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
