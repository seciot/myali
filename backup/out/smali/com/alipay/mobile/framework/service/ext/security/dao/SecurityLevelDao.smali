.class public Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSecurityLevel(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    return-void
.end method

.method public deleteSecurityLevel(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "logonId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    :cond_0
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    return-void
.end method

.method public findSecurityLevel(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "logonId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForFieldValues(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    :cond_0
    return-object v0
.end method

.method public updateSecurityLevelRefresh(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;->findSecurityLevel(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;-><init>()V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setLogonId(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setLevel(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setRefresh(Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;->addSecurityLevel(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;)V

    return-void
.end method
