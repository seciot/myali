.class final Lcom/alipay/mobile/appstoreapp/receiver/b;
.super Ljava/lang/Object;
.source "ClientSetupReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/receiver/b;->a:Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/receiver/b;->a:Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;

    #getter for: Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;->DelayTime:J
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;->access$000(Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 57
    const-class v1, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    .line 58
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 59
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->initAndSyncApps()V

    .line 60
    return-void

    .line 51
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
