.class public abstract Lcom/alipay/mobile/longlink/b/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static final i:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected final b:Ljava/util/Collection;

.field protected final c:Ljava/util/Map;

.field protected final d:Ljava/util/Map;

.field protected e:Ljava/io/DataInputStream;

.field protected f:Ljava/io/DataOutputStream;

.field protected final g:I

.field protected final h:Lcom/alipay/mobile/longlink/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/longlink/b/a/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v1, Lcom/alipay/mobile/longlink/b/a/a;->a:Z

    :try_start_0
    const-string/jumbo v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/longlink/b/a/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/longlink/b/a/m;->a()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/alipay/mobile/longlink/b/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/a;->b:Ljava/util/Collection;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/a;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/a;->d:Ljava/util/Map;

    sget-object v0, Lcom/alipay/mobile/longlink/b/a/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/longlink/b/a/a;->g:I

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/a/a;->h:Lcom/alipay/mobile/longlink/b/a/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/longlink/b/b/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/a;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/a;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/longlink/b/d/c;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/longlink/b/a/b;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/longlink/b/a/b;-><init>(Lcom/alipay/mobile/longlink/b/d/c;)V

    iget-object v1, p0, Lcom/alipay/mobile/longlink/b/a/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    const-string/jumbo v1, "Connection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "packageListener in the list is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/b/a/a;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a()Z
.end method

.method protected final b()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/a;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final b(Lcom/alipay/mobile/longlink/b/d/c;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
