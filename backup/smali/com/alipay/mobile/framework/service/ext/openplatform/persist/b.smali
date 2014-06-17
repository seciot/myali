.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/b;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getAppEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/c;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/c;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/b;Lcom/j256/ormlite/dao/Dao;)V

    .line 300
    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 301
    const/4 v0, 0x0

    return-object v0
.end method
