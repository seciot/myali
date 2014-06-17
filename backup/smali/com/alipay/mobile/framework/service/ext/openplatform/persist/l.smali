.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;
.super Ljava/lang/Object;
.source "AppDao.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

.field final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getAppEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "appId"

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 243
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setId(I)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 250
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0
.end method
