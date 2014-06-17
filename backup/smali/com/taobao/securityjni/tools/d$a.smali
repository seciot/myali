.class final Lcom/taobao/securityjni/tools/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/securityjni/tools/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/taobao/securityjni/tools/d;->b()Ljava/util/concurrent/DelayQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->take()Ljava/util/concurrent/Delayed;

    move-result-object v0

    check-cast v0, Lcom/taobao/securityjni/tools/SEDelay;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/taobao/securityjni/tools/SEDelay;->run()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
