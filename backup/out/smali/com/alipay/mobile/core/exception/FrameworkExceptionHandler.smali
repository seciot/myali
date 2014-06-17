.class public Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->e:I

    return-void
.end method

.method private static a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearState()V

    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 2

    const-string/jumbo v0, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;

    move-result-object v0

    const-string/jumbo v1, "MonitorPoint_Exception"

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->saveErrorInfoToFile(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->b:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->b:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->b:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Thread:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    move-object v0, p2

    :goto_0
    instance-of v2, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/16 v4, 0x190

    if-lt v0, v4, :cond_2

    const/16 v4, 0x1f4

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/framework/R$string;->network_error_check_network:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    :cond_0
    :goto_1
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/framework/R$string;->network_error_check_network:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/framework/R$string;->network_error_wait_retry:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/framework/R$string;->network_error_interupted:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/framework/R$string;->network_error_ssl_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/framework/R$string;->server_error_wait_retry:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_6
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/framework/R$string;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x64

    if-lt v0, v3, :cond_3

    const/16 v3, 0x258

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    sget v3, Lcom/alipay/mobile/framework/R$string;->network_error_wait_retry:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    sget v4, Lcom/alipay/mobile/framework/R$string;->confirm:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;

    sget v4, Lcom/alipay/mobile/framework/R$string;->confirm:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    const-string/jumbo v1, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v4}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "com.alipay.android.launcher.TabLauncherApp"

    invoke-static {v4}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {v0}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Throwable;)V

    move v2, v3

    :goto_2
    :try_start_0
    iget v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->e:I

    if-ge v2, v1, :cond_7

    invoke-static {v4}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "com.alipay.android.launcher.TabLauncherApp"

    invoke-static {v4}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v4}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v3

    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v5, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;

    invoke-direct {v5, p0, v4, v3}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;-><init>(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/app/MicroApplication;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_8
    move-object v0, p2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_6
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_3
        0x3ea -> :sswitch_5
        0xbb8 -> :sswitch_0
        0xbb9 -> :sswitch_5
        0xfa1 -> :sswitch_5
        0xfa2 -> :sswitch_5
        0xfa3 -> :sswitch_5
        0x1770 -> :sswitch_0
        0x1771 -> :sswitch_0
        0x1a0a -> :sswitch_0
    .end sparse-switch
.end method
