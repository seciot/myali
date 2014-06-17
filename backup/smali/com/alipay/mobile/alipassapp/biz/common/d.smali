.class public final Lcom/alipay/mobile/alipassapp/biz/common/d;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/alipassapp/biz/a/a;

.field private b:Lcom/alipay/mobile/alipassapp/biz/a;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/alipassapp/biz/common/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;

    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->b:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->b:Lcom/alipay/mobile/alipassapp/biz/a;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;ZLcom/alipay/mobile/alipassapp/biz/model/a;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V
    .locals 10

    if-eqz p2, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0, p4, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->c()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassTimelineList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;

    invoke-direct {v7}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->setPassDate(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    iget-object v9, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {v7, v8}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->setPassList(Ljava/util/List;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasPast()I

    move-result v3

    invoke-interface {v0, v1, p1, v3}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/util/List;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0, v2, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0, v2, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->b(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, v2}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v0

    iput-object v0, p3, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    iget-object v0, p3, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->c:Landroid/content/Context;

    const-string/jumbo v2, "alipass_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_5
    iput-object p4, p3, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->c:Landroid/content/Context;

    const-string/jumbo v2, "alipass_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;
    .locals 5

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/common/d;->d:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p2, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v2, v1

    :goto_0
    new-instance v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    invoke-direct {v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-boolean v2, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteAlipass "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catch_0
    move-exception v1

    :goto_2
    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 3

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/common/d;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v2, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->d(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;Z)Lcom/alipay/mobile/alipassapp/biz/model/a;
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    sget-object v8, Lcom/alipay/mobile/alipassapp/biz/common/d;->d:Ljava/lang/Object;

    monitor-enter v8

    if-nez p1, :cond_0

    monitor-exit v8

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/model/a;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/alipassapp/biz/model/a;-><init>(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->getPassCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/common/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setUpdateFlag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->b:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-boolean v0, v9, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    if-nez v0, :cond_3

    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getUpdateFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getUpdateFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->getUpdateFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->getPassCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v4

    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasPast()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setHasPast(I)V

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->getPassCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getUpdateFlag()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;ZLcom/alipay/mobile/alipassapp/biz/model/a;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassListPreLoaderInterval()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v3, v6, v7}, Lcom/alipay/mobile/alipassapp/biz/model/a;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_1
    :try_start_3
    iput-object v9, v3, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    iput-object v0, v3, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    :goto_3
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassListPreLoaderInterval()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassListPreLoaderInterval()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_4

    move-wide v0, v6

    :goto_4
    invoke-virtual {v3, v0, v1}, Lcom/alipay/mobile/alipassapp/biz/model/a;->a(J)V

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->getPassCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getUpdateFlag()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v2, p2

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;ZLcom/alipay/mobile/alipassapp/biz/model/a;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassListPreLoaderInterval()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v0

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/common/d;->d:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    move v2, v0

    :goto_0
    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    iput-boolean v2, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteAlipass "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a

    :cond_0
    :goto_1
    monitor-exit v3

    :goto_2
    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->b:Lcom/alipay/mobile/alipassapp/biz/a;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_3
    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->b(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_c
    move-exception v1

    goto :goto_1

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_e
    move-exception v1

    goto :goto_1

    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_10
    move-exception v1

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/common/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->d(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public final b()Ljava/lang/Long;
    .locals 9

    sget-object v6, Lcom/alipay/mobile/alipassapp/biz/common/d;->d:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v0, "TRAVEL"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/model/a;

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    const/4 v1, 0x2

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/alipassapp/biz/model/a;-><init>(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;I)V

    new-instance v7, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;

    invoke-direct {v7}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "TRAVEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/common/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;->setTravelUpdateFlag(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "COUPON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/common/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;->setCouponUpdateFlag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->b:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-interface {v0, v7}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getTravelUpdateFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;->getTravelUpdateFlag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TRAVEL"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v4

    const-string/jumbo v1, "TRAVEL"

    const/4 v2, 0x1

    invoke-virtual {v8}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getTravelUpdateFlag()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;ZLcom/alipay/mobile/alipassapp/biz/model/a;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v8}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getCouponUpdateFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;->getCouponUpdateFlag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "COUPON"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v4

    const-string/jumbo v1, "COUPON"

    const/4 v2, 0x1

    invoke-virtual {v8}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getCouponUpdateFlag()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;ZLcom/alipay/mobile/alipassapp/biz/model/a;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v8}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getPassListPreLoaderInterval()Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    return-object v0

    :cond_0
    :try_start_2
    const-string/jumbo v1, "TRAVEL"

    const/4 v2, 0x1

    invoke-static {v8}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResultConvertor;->converTravelListFromPreLoadPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v4

    invoke-virtual {v8}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getTravelUpdateFlag()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;ZLcom/alipay/mobile/alipassapp/biz/model/a;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_1
    :try_start_4
    const-string/jumbo v1, "COUPON"

    const/4 v2, 0x1

    invoke-static {v8}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResultConvertor;->converCouponListFromPreLoadPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v4

    invoke-virtual {v8}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->getCouponUpdateFlag()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;ZLcom/alipay/mobile/alipassapp/biz/model/a;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 3

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/common/d;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v2, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/common/d;->a:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method
