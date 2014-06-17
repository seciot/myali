.class final Lcom/alipay/android/app/monitor/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lcom/alipay/android/app/monitor/MonitorThread;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/monitor/MonitorThread;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/monitor/b;->b:Lcom/alipay/android/app/monitor/MonitorThread;

    iput-object p2, p0, Lcom/alipay/android/app/monitor/b;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/monitor/c;

    sget-object v1, Lcom/alipay/android/app/monitor/MonitorEnum;->f:Lcom/alipay/android/app/monitor/MonitorEnum;

    iget-object v2, p0, Lcom/alipay/android/app/monitor/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/monitor/c;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
