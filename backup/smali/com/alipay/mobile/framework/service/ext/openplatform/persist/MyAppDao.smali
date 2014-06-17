.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;
.source "MyAppDao.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MyAppDao"

.field private static instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;-><init>()V

    .line 21
    return-void
.end method

.method public static getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    .line 26
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    return-object v0
.end method


# virtual methods
.method public getAllMyAppIds(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAllMyApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/t;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/t;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 48
    return-object v0
.end method

.method public getMinRank()J
    .locals 4

    .prologue
    .line 236
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ab;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ab;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->getUserRank()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 253
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getMyAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;
    .locals 1
    .parameter

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    goto :goto_0
.end method

.method public isAddedToMyApp(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 217
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public moveToAppCenter(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getMyAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->setAppDisplayPlace(I)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->saveOrUpdateMyAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;)V

    .line 214
    :cond_0
    return-void
.end method

.method public moveToHome(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getMyAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->setAppDisplayPlace(I)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->saveOrUpdateMyAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;)V

    .line 204
    :cond_0
    return-void
.end method

.method public removeMyAppById(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public saveOrUpdateMyAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/x;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/x;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public saveOrUpdateMyAppEntitys(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/y;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/y;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;Ljava/util/List;)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 194
    return-void
.end method
