.class final Lcom/alipay/android/ipp/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/alipay/android/ipp/IppFacade;


# direct methods
.method constructor <init>(Lcom/alipay/android/ipp/IppFacade;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/ipp/a;->a:Lcom/alipay/android/ipp/IppFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/alipay/android/ipp/IppFacade;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Service Connected ComponentName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/ipp/a;->a:Lcom/alipay/android/ipp/IppFacade;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/ipp/IppFacade;->access$1(Lcom/alipay/android/ipp/IppFacade;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/ipp/IppFacade;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Illegal Service Abandoned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/ipp/a;->a:Lcom/alipay/android/ipp/IppFacade;

    #getter for: Lcom/alipay/android/ipp/IppFacade;->e:Z
    invoke-static {v0}, Lcom/alipay/android/ipp/IppFacade;->access$2(Lcom/alipay/android/ipp/IppFacade;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/android/ipp/IppFacade;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Just Connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/ipp/a;->a:Lcom/alipay/android/ipp/IppFacade;

    #getter for: Lcom/alipay/android/ipp/IppFacade;->b:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/ipp/IppFacade;->access$3(Lcom/alipay/android/ipp/IppFacade;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/ipp/a;->a:Lcom/alipay/android/ipp/IppFacade;

    #getter for: Lcom/alipay/android/ipp/IppFacade;->f:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/alipay/android/ipp/IppFacade;->access$4(Lcom/alipay/android/ipp/IppFacade;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/alipay/android/ipp/binder/aidl/IppInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/ipp/binder/aidl/IppInterface;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/ipp/d;

    iget-object v3, p0, Lcom/alipay/android/ipp/a;->a:Lcom/alipay/android/ipp/IppFacade;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/alipay/android/ipp/d;-><init>(Lcom/alipay/android/ipp/IppFacade;Lcom/alipay/android/ipp/binder/aidl/IppInterface;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/ipp/IppFacade;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Service Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
