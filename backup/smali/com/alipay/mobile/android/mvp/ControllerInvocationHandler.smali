.class public Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;
.super Ljava/lang/Object;
.source "ControllerInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Lcom/alipay/mobile/android/mvp/MvpBaseController;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/android/mvp/MvpBaseController;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    .line 28
    return-void
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 75
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doInvoke occur exception. controller=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] method=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] uiThreadComeIn=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    :cond_0
    if-eqz p3, :cond_1

    .line 66
    new-instance v1, Lcom/alipay/mobile/android/mvp/model/MvpResult;

    invoke-direct {v1}, Lcom/alipay/mobile/android/mvp/model/MvpResult;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/android/mvp/model/MvpResult;->exception:Ljava/lang/Exception;

    const-string/jumbo v0, "SYSTEM_ERROR"

    iput-object v0, v1, Lcom/alipay/mobile/android/mvp/model/MvpResult;->resultCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/mobile/android/mvp/model/MvpResult;->success:Z

    new-instance v0, Lcom/alipay/mobile/android/mvp/DataEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/android/mvp/DataEvent;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/android/mvp/DataEvent;->data:Ljava/lang/Object;

    const-string/jumbo v1, "systemErrorEvent"

    iput-object v1, v0, Lcom/alipay/mobile/android/mvp/DataEvent;->eventCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/android/mvp/MvpBaseController;->notifyDataObserversException(Lcom/alipay/mobile/android/mvp/DataEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 71
    throw v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    move v0, v5

    .line 39
    :goto_0
    if-nez v0, :cond_1

    .line 40
    invoke-direct {p0, p2, p3, v1}, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 52
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 35
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;-><init>(Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 52
    const/4 v0, 0x0

    goto :goto_1
.end method
