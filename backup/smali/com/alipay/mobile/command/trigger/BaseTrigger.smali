.class public abstract Lcom/alipay/mobile/command/trigger/BaseTrigger;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {p1}, Lcom/alipay/mobile/command/util/CommandConfig;->initial(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/command/trigger/BaseTrigger;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u5e7f\u64ad\u63a5\u6536\u5f02\u5e38!"

    aput-object v2, v0, v1

    goto :goto_0
.end method
