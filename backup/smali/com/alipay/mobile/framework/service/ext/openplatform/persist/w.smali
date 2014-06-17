.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getMyAppEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "appId"

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 112
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method
