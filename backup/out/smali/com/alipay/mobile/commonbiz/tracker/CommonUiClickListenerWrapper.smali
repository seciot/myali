.class public Lcom/alipay/mobile/commonbiz/tracker/CommonUiClickListenerWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;-><init>(Ljava/lang/Object;)V

    const-class v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->getProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->getOnClickListenerProxy(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public wrap(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;-><init>(Ljava/lang/Object;)V

    const-class v1, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->getProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method
