.class public final Lcom/taobao/securityjni/tools/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/DelayQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/DelayQueue;

    invoke-direct {v0}, Ljava/util/concurrent/DelayQueue;-><init>()V

    sput-object v0, Lcom/taobao/securityjni/tools/d;->a:Ljava/util/concurrent/DelayQueue;

    return-void
.end method

.method public static a()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/securityjni/tools/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/taobao/securityjni/tools/d$a;-><init>(B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Lcom/taobao/securityjni/tools/SEDelay;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/taobao/securityjni/tools/d;->a:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/DelayQueue;->add(Ljava/util/concurrent/Delayed;)Z

    :cond_0
    return-void
.end method

.method static synthetic b()Ljava/util/concurrent/DelayQueue;
    .locals 1

    sget-object v0, Lcom/taobao/securityjni/tools/d;->a:Ljava/util/concurrent/DelayQueue;

    return-object v0
.end method
