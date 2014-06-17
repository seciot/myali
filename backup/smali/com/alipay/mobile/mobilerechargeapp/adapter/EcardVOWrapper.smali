.class public Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->setAbsence(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0, p1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->setFacePrice(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getFacePrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getItemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getPromotionPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getShowedPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getChannelType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->isAbsence()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->b:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getFacePrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->isAbsence()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getShowedPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getFacePrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getFacePrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143\uff08\u4f18\u60e0\u4ef7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getShowedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getFacePrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143\uff08\u552e\u4ef7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getShowedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getFacePrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143\uff08\u552e\u4ef7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getShowedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getFacePrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143\uff08\u7f3a\u8d27\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getFacePrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->b:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u552e\u4ef7\u83b7\u53d6\u5931\u8d25"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->isAbsence()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a:Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v1}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getShowedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u7f3a\u8d27"

    goto :goto_0
.end method
