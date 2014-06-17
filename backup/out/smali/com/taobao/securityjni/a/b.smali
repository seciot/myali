.class public final Lcom/taobao/securityjni/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/tools/SEDelay;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/securityjni/a/b;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    const/4 v2, 0x0

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, v2}, Lcom/taobao/securityjni/a/b;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/taobao/securityjni/a/b;->a:J

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    sub-long v0, v2, v0

    return-wide v0
.end method

.method public final run()V
    .locals 5

    new-instance v1, Lcom/taobao/securityjni/a/a;

    invoke-direct {v1}, Lcom/taobao/securityjni/a/a;-><init>()V

    new-instance v2, Lcom/taobao/securityjni/connector/a;

    invoke-direct {v2}, Lcom/taobao/securityjni/connector/a;-><init>()V

    invoke-virtual {v2, v1}, Lcom/taobao/securityjni/connector/a;->a(Lcom/taobao/securityjni/connector/ConnectorHelper;)V

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/taobao/securityjni/connector/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/securityjni/connector/b;

    iget v3, v0, Lcom/taobao/securityjni/connector/b;->a:I

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/taobao/securityjni/connector/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/securityjni/DnameManager;->RegisterConfig(Ljava/lang/String;)V

    return-void
.end method
