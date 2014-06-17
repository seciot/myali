.class public Lcom/ut/device/BFoundIt;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile u:Lcom/ut/device/a;

.field private static v:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/ut/device/BFoundIt;->t:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/ut/device/BFoundIt;->u:Lcom/ut/device/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ut/device/BFoundIt;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    const-class v1, Lcom/ut/device/BFoundIt;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/ut/device/BFoundIt;->t:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Lcom/ut/device/a;
    .locals 2

    sget-object v1, Lcom/ut/device/BFoundIt;->v:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ut/device/BFoundIt;->u:Lcom/ut/device/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v8, 0x0

    monitor-enter p0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    :try_start_0
    const-string/jumbo v0, "e"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "d"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "u"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "S"

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/ut/device/BFoundIt;->v:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Lcom/ut/device/a;

    invoke-direct {v7}, Lcom/ut/device/a;-><init>()V

    invoke-virtual {v7, v0}, Lcom/ut/device/a;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/ut/device/a;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/ut/device/a;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/ut/device/a;->r(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Lcom/ut/device/a;->a(J)V

    const-string/jumbo v0, "t"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_0

    invoke-virtual {v7, v0, v1}, Lcom/ut/device/a;->b(J)V

    :cond_0
    invoke-static {v7}, Lcom/ut/device/b;->a(Lcom/ut/device/a;)J

    move-result-wide v0

    sput-object v7, Lcom/ut/device/BFoundIt;->u:Lcom/ut/device/a;

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    sget-object v0, Lcom/ut/device/BFoundIt;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    sput-object v7, Lcom/ut/device/BFoundIt;->u:Lcom/ut/device/a;

    sget-object v0, Lcom/ut/device/BFoundIt;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    sget-object v0, Lcom/ut/device/BFoundIt;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    :goto_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    invoke-static {v7, p1}, Lcom/ut/device/b;->a(Lcom/ut/device/a;Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
