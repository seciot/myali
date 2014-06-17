.class public Lcom/alipay/mobile/common/promotion/intercept/PromotionActivityAdvice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "PromotionActivityAdvice"

    iput-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionActivityAdvice;->a:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionActivityAdvice;->b:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    return-void
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
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionActivityAdvice;->b:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionActivityAdvice;->b:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    invoke-interface {v0}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->currentActivityHasInterceptor()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionActivityAdvice;->b:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->setEnable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionActivityAdvice;->b:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->setTriggerView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionActivityAdvice;->b:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->setEnable(Z)V

    goto :goto_1
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
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

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
