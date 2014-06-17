.class public Lcom/taobao/security/ProtocolManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/taobao/security/ProtocalEntry;

.field private static b:Lcom/taobao/security/ProtocalEntry;

.field private static final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final d:Ljava/util/concurrent/locks/Lock;

.field private static final e:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taobao/security/ProtocalEntry;

    invoke-direct {v0}, Lcom/taobao/security/ProtocalEntry;-><init>()V

    sput-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    new-instance v0, Lcom/taobao/security/ProtocalEntry;

    invoke-direct {v0}, Lcom/taobao/security/ProtocalEntry;-><init>()V

    sput-object v0, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/taobao/security/ProtocolManager;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lcom/taobao/security/ProtocolManager;->d:Ljava/util/concurrent/locks/Lock;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lcom/taobao/security/ProtocolManager;->e:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/connector/b;
    .locals 5

    new-instance v1, Lcom/taobao/security/a;

    invoke-direct {v1, p0}, Lcom/taobao/security/a;-><init>(Landroid/content/ContextWrapper;)V

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
    return-object v0
.end method

.method static a(Lcom/taobao/securityjni/connector/b;Landroid/content/ContextWrapper;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/taobao/securityjni/connector/b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/security/ProtocalEntry;

    iget v1, p0, Lcom/taobao/securityjni/connector/b;->a:I

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    if-eqz p1, :cond_2

    const-string/jumbo v5, "pcigdata"

    invoke-virtual {p1, v5, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "Month"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "Day"

    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iget v1, v0, Lcom/taobao/security/ProtocalEntry;->ep:I

    iget-object v4, v0, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    iget v5, v0, Lcom/taobao/security/ProtocalEntry;->bs:I

    iget-object v6, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    invoke-static {v1, v4, v5, v6}, Lcom/taobao/security/ProtocolManager;->a(ILjava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    iget-object v1, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    sget-object v4, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v4, v4, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/taobao/security/ProtocalEntry;->DEFAULT:Lcom/taobao/security/ProtocalEntry;

    iget-object v4, v4, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_2
    if-eqz v1, :cond_0

    iget v1, v0, Lcom/taobao/security/ProtocalEntry;->ep:I

    iget-object v2, v0, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    iget v3, v0, Lcom/taobao/security/ProtocalEntry;->bs:I

    iget-object v0, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/taobao/security/ProtocolManager;->b(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {p1}, Lcom/taobao/security/ProtocolManager;->storeDataToFile(Landroid/content/ContextWrapper;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    const-string/jumbo v1, "000"

    goto :goto_1

    :cond_5
    if-ne v4, v2, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "00"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v4, -0x3

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    move v1, v3

    goto :goto_2
.end method

.method private static a(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 2

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eq p2, v1, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/taobao/security/ProtocolManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v0, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/security/ProtocolManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget v1, v1, Lcom/taobao/security/ProtocalEntry;->ep:I

    iput v1, v0, Lcom/taobao/security/ProtocalEntry;->ep:I

    sget-object v0, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v1, v1, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget v1, v1, Lcom/taobao/security/ProtocalEntry;->bs:I

    iput v1, v0, Lcom/taobao/security/ProtocalEntry;->bs:I

    sget-object v0, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v1, v1, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v1, v1, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iput p0, v0, Lcom/taobao/security/ProtocalEntry;->ep:I

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iput-object p1, v0, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iput p2, v0, Lcom/taobao/security/ProtocalEntry;->bs:I

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iput-object p3, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    new-instance v1, Lcom/taobao/security/c;

    invoke-direct {v1, p1}, Lcom/taobao/security/c;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v0, v0, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    invoke-virtual {v0}, Lcom/taobao/security/c;->a()V

    sget-object v0, Lcom/taobao/security/ProtocolManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public static getCurrentConfig(Lcom/taobao/security/ProtocalEntry;)V
    .locals 1

    sget-object v0, Lcom/taobao/security/ProtocolManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p0, :cond_0

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget v0, v0, Lcom/taobao/security/ProtocalEntry;->bs:I

    iput v0, p0, Lcom/taobao/security/ProtocalEntry;->bs:I

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget v0, v0, Lcom/taobao/security/ProtocalEntry;->ep:I

    iput v0, p0, Lcom/taobao/security/ProtocalEntry;->ep:I

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v0, v0, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v0, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v0, v0, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    iput-object v0, p0, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    :cond_0
    sget-object v0, Lcom/taobao/security/ProtocolManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static protocolHandler(Landroid/content/ContextWrapper;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v2, "pcigdata"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "ep"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "bs"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "fp"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "v"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v5, v4, v2}, Lcom/taobao/security/ProtocolManager;->a(ILjava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3, v5, v4, v2}, Lcom/taobao/security/ProtocolManager;->b(ILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v7, v2, v0

    aput v7, v2, v1

    if-eqz p0, :cond_1

    const-string/jumbo v3, "pcigdata"

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "Month"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v1

    const-string/jumbo v4, "Day"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    :cond_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    aget v4, v2, v1

    if-ltz v4, :cond_5

    aget v4, v2, v1

    const/16 v5, 0xc

    if-ge v4, v5, :cond_5

    aget v4, v2, v0

    if-lez v4, :cond_5

    aget v4, v2, v0

    const/16 v5, 0x20

    if-ge v4, v5, :cond_5

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v3

    aget v5, v2, v1

    if-ne v4, v5, :cond_5

    aget v2, v2, v0

    if-gt v3, v2, :cond_5

    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    :cond_2
    :goto_1
    return v1

    :cond_3
    invoke-static {p0}, Lcom/taobao/security/ProtocolManager;->a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/connector/b;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/taobao/securityjni/connector/b;->a:I

    const/4 v4, -0x5

    if-eq v3, v4, :cond_2

    iget v3, v2, Lcom/taobao/securityjni/connector/b;->a:I

    const/4 v4, -0x7

    if-eq v3, v4, :cond_2

    invoke-static {v2, p0}, Lcom/taobao/security/ProtocolManager;->a(Lcom/taobao/securityjni/connector/b;Landroid/content/ContextWrapper;)V

    sget-object v2, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v2, v2, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    sget-object v3, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    iget-object v3, v3, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_0
.end method

.method public static recoverConfigFromCache()Lcom/taobao/security/ProtocalEntry;
    .locals 5

    sget-object v0, Lcom/taobao/security/ProtocolManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    iget v1, v1, Lcom/taobao/security/ProtocalEntry;->ep:I

    iput v1, v0, Lcom/taobao/security/ProtocalEntry;->ep:I

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    iget-object v1, v1, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    iget v1, v1, Lcom/taobao/security/ProtocalEntry;->bs:I

    iput v1, v0, Lcom/taobao/security/ProtocalEntry;->bs:I

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    iget-object v1, v1, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->b:Lcom/taobao/security/ProtocalEntry;

    iget-object v1, v1, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    new-instance v0, Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget v1, v1, Lcom/taobao/security/ProtocalEntry;->ep:I

    sget-object v2, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget v2, v2, Lcom/taobao/security/ProtocalEntry;->bs:I

    sget-object v3, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v3, v3, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    sget-object v4, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v4, v4, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/security/ProtocalEntry;-><init>(IILcom/taobao/security/c;Ljava/lang/String;)V

    sget-object v1, Lcom/taobao/security/ProtocolManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public static recoverConfigFromOrg()Lcom/taobao/security/ProtocalEntry;
    .locals 5

    sget-object v0, Lcom/taobao/security/ProtocolManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocalEntry;->DEFAULT:Lcom/taobao/security/ProtocalEntry;

    iget v1, v1, Lcom/taobao/security/ProtocalEntry;->ep:I

    iput v1, v0, Lcom/taobao/security/ProtocalEntry;->ep:I

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocalEntry;->DEFAULT:Lcom/taobao/security/ProtocalEntry;

    iget-object v1, v1, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocalEntry;->DEFAULT:Lcom/taobao/security/ProtocalEntry;

    iget v1, v1, Lcom/taobao/security/ProtocalEntry;->bs:I

    iput v1, v0, Lcom/taobao/security/ProtocalEntry;->bs:I

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocalEntry;->DEFAULT:Lcom/taobao/security/ProtocalEntry;

    iget-object v1, v1, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    sget-object v0, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocalEntry;->DEFAULT:Lcom/taobao/security/ProtocalEntry;

    iget-object v1, v1, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    iput-object v1, v0, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    new-instance v0, Lcom/taobao/security/ProtocalEntry;

    sget-object v1, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget v1, v1, Lcom/taobao/security/ProtocalEntry;->ep:I

    sget-object v2, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget v2, v2, Lcom/taobao/security/ProtocalEntry;->bs:I

    sget-object v3, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v3, v3, Lcom/taobao/security/ProtocalEntry;->filter:Lcom/taobao/security/c;

    sget-object v4, Lcom/taobao/security/ProtocolManager;->a:Lcom/taobao/security/ProtocalEntry;

    iget-object v4, v4, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/security/ProtocalEntry;-><init>(IILcom/taobao/security/c;Ljava/lang/String;)V

    sget-object v1, Lcom/taobao/security/ProtocolManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public static storeDataToFile(Landroid/content/ContextWrapper;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "pcigdata"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Lcom/taobao/security/ProtocalEntry;

    invoke-direct {v2}, Lcom/taobao/security/ProtocalEntry;-><init>()V

    invoke-static {v2}, Lcom/taobao/security/ProtocolManager;->getCurrentConfig(Lcom/taobao/security/ProtocalEntry;)V

    const-string/jumbo v3, "ep"

    iget v4, v2, Lcom/taobao/security/ProtocalEntry;->ep:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "bs"

    iget v4, v2, Lcom/taobao/security/ProtocalEntry;->bs:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "fp"

    iget-object v4, v2, Lcom/taobao/security/ProtocalEntry;->fp:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "v"

    iget-object v2, v2, Lcom/taobao/security/ProtocalEntry;->v:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
