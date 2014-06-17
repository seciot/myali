.class public Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static c:Landroid/support/v4/content/LocalBroadcastManager;

.field private static d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "LocalBroadcastManagerWrapper"

    sput-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;
    .locals 2

    const-class v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    :cond_0
    sget-object v2, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerReceiver: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", action: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
