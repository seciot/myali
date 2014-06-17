.class public Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;


# instance fields
.field private a:Lcom/alipay/mobile/mobilerechargeapp/history/KVStore;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/history/KVStore;

    const-string/jumbo v1, "RECHARGE_HISTORY"

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/mobilerechargeapp/history/KVStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->a:Lcom/alipay/mobile/mobilerechargeapp/history/KVStore;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->getA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->getD()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->a:Lcom/alipay/mobile/mobilerechargeapp/history/KVStore;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/history/KVStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    const-class v1, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->getA()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/history/ListUtil;

    invoke-direct {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/ListUtil;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/mobilerechargeapp/history/ListUtil;->a(Ljava/util/List;Ljava/lang/Comparable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->a:Lcom/alipay/mobile/mobilerechargeapp/history/KVStore;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/mobilerechargeapp/history/KVStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->getA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->getB()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->a:Lcom/alipay/mobile/mobilerechargeapp/history/KVStore;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/history/KVStore;->b(Ljava/lang/String;)V

    return-void
.end method
