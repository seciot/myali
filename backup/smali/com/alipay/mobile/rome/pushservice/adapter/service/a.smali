.class final Lcom/alipay/mobile/rome/pushservice/adapter/service/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/service/a;->a:Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/service/a;->a:Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/android/ipp/IppFacade;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/ipp/IppFacade;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/android/ipp/IppFacade;->performProtect()V

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lorg/android/agoo/service/AgooWakeup;->wakeup(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
