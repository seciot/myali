.class final Lcom/alipay/android/widget/security/service/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/f;->b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/widget/security/service/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/f;->b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;

    #getter for: Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/RpcService;
    invoke-static {v0}, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->access$000(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;)Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/bind/TaobaoBindingFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/bind/TaobaoBindingFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryReq;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/widget/security/service/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryReq;->setMobile(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/bind/TaobaoBindingFacade;->queryTaobaoBindingByMobile(Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryReq;)Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/f;->b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;

    #getter for: Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->access$100(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/alipay/android/widget/security/service/g;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/widget/security/service/g;-><init>(Lcom/alipay/android/widget/security/service/f;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
