.class public Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/TaobaoQueryBindingCallback;

.field private c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;

.field private d:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private e:Lcom/alipay/mobile/framework/app/MicroApplication;

.field private f:Z

.field private g:Z

.field private h:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;)Lcom/alipay/mobile/framework/service/common/RpcService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;->getResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;->getBindingStatusMemo()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "200"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;->getBindingStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v2, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity_;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "phoneNo"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->e:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v3, "\u53bb\u767b\u5f55"

    new-instance v4, Lcom/alipay/android/widget/security/service/h;

    invoke-direct {v4, p0, p2}, Lcom/alipay/android/widget/security/service/h;-><init>(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Ljava/lang/String;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    new-instance v6, Lcom/alipay/android/widget/security/service/i;

    invoke-direct {v6, p0, p1}, Lcom/alipay/android/widget/security/service/i;-><init>(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;)V

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/android/widget/security/service/j;

    invoke-direct {v4, p0, p1}, Lcom/alipay/android/widget/security/service/j;-><init>(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;)V

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/android/widget/security/service/k;

    invoke-direct {v4, p0, p1}, Lcom/alipay/android/widget/security/service/k;-><init>(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;)V

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/android/widget/security/service/l;

    invoke-direct {v4, p0, p1}, Lcom/alipay/android/widget/security/service/l;-><init>(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;)V

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$300(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/TaobaoQueryBindingCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/TaobaoQueryBindingCallback;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoQueryBindingCallback;->queryBindingFail(Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindingFinish(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;->quickBindingSuccess(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;->quickBindingFail(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->h:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public queryTaobaoBindingByMobile(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->f:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->h:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v1, Lcom/alipay/android/widget/security/service/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/service/f;-><init>(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->f:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->f:Z

    throw v0
.end method

.method public setBindingCallback(Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;

    return-void
.end method

.method public setMicroApplication(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->e:Lcom/alipay/mobile/framework/app/MicroApplication;

    return-void
.end method

.method public setQueryBindingCallback(Lcom/alipay/mobile/framework/service/ext/security/TaobaoQueryBindingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/TaobaoQueryBindingCallback;

    return-void
.end method

.method public taobaoQuickBinding(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->g:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/bind/TaobaoBindingFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/bind/TaobaoBindingFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;->setNick(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;->setMobile(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/bind/TaobaoBindingFacade;->taobaoQuickBinding(Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->g:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->g:Z

    throw v0
.end method
