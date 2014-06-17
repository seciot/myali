.class public Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;
.super Ljava/lang/Object;
.source "BeanFactory.java"


# static fields
.field private static b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a:Ljava/util/Map;

    return-void
.end method

.method public static final a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    invoke-direct {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    if-nez v0, :cond_2

    .line 81
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a:Ljava/util/Map;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    if-nez v0, :cond_1

    .line 84
    if-eqz p2, :cond_3

    array-length v0, p2

    if-lez v0, :cond_3

    array-length v0, p2

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_0

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "event=[BeanFactory#getBean]  new instance: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    :cond_1
    monitor-exit v2

    .line 95
    :cond_2
    return-object v0

    .line 84
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
