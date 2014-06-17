.class public Lcom/alipay/mobile/common/promotion/intercept/PromotionStartActivityAdvice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "PromotionStartActivityAdvice"

    iput-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionStartActivityAdvice;->a:Ljava/lang/String;

    return-void
.end method

.method private static a([Ljava/lang/Object;)Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    const-string/jumbo v1, "jump"

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->match([Ljava/lang/Object;Ljava/lang/String;)Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " onExecutionAround"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, ""

    aput-object v4, v3, v0

    const-string/jumbo v0, ""

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string/jumbo v4, ""

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string/jumbo v4, ""

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/alipay/mobile/common/promotion/intercept/PromotionStartActivityAdvice;->a([Ljava/lang/Object;)Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;->preExec()V

    invoke-interface {v3}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;->isSwallow()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_1
    invoke-static {p3}, Lcom/alipay/mobile/common/promotion/intercept/PromotionStartActivityAdvice;->a([Ljava/lang/Object;)Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
