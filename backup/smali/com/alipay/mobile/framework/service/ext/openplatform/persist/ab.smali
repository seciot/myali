.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ab;
.super Ljava/lang/Object;
.source "MyAppDao.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ab;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getMyAppEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "userRank"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    return-object v0
.end method
