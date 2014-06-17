.class final Lcom/alipay/android/mini/window/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/mini/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniWindowManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/z;->b:Lcom/alipay/android/mini/window/MiniWindowManager;

    iput p2, p0, Lcom/alipay/android/mini/window/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/z;->b:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->a(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IFormShower;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/z;->b:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v1}, Lcom/alipay/android/mini/window/MiniWindowManager;->h(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IUIForm;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/mini/window/z;->a:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/mini/window/IFormShower;->a(Lcom/alipay/android/mini/window/IUIForm;I)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v1

    const-string/jumbo v2, "main thread crash"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
