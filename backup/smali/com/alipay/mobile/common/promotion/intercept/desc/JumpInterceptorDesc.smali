.class public Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;
.super Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;


# instance fields
.field public targetAppId:Ljava/lang/String;

.field public targetPageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;-><init>()V

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
    instance-of v1, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->appId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->pageId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->pageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetPageId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetPageId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetPageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetAppId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetAppId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->triggerId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->triggerId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->triggerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", targetAppId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", targetPageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetPageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
