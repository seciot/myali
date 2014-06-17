.class public Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;
.super Ljava/lang/Object;


# instance fields
.field public appId:Ljava/lang/String;

.field public isSwallow:Z

.field public pageId:Ljava/lang/String;

.field public triggerId:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->isSwallow:Z

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
    instance-of v1, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->appId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->pageId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->pageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->type:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->isSwallow:Z

    iget-boolean v2, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->isSwallow:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->triggerId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->triggerId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->triggerId:Ljava/lang/String;

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

    const-string/jumbo v1, "InterceptDesc: appId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",pageId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->pageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",triggerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->triggerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",isSwallow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->isSwallow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
