.class public Lcom/alipay/mobile/common/logagent/StorageStateInfo;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/common/logagent/StorageStateInfo;


# instance fields
.field private b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/logagent/StorageStateInfo;
    .locals 2

    const-class v1, Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->a:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->a:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->a:Lcom/alipay/mobile/common/logagent/StorageStateInfo;
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
.method public clearValue()V
    .locals 7

    const-string/jumbo v0, "productID"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "productVersion"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "clientID"

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uuID"

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "modelVersion"

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    const-string/jumbo v6, "productID"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    const-string/jumbo v5, "productVersion"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "clientID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "uuID"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "modelVersion"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public isRegisted()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "productID"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "productVersion"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "modelVersion"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "clientID"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "uuID"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegistClient()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
