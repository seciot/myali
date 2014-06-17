.class public Lcom/alipay/mobile/common/utils/CacheSet;
.super Ljava/lang/Object;


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "AppHall.cache"

.field static final TAG:Ljava/lang/String; = "AlixSet"

.field private static b:Lcom/alipay/mobile/common/utils/CacheSet;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/utils/CacheSet;->b:Lcom/alipay/mobile/common/utils/CacheSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;
    .locals 2

    const-class v1, Lcom/alipay/mobile/common/utils/CacheSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/utils/CacheSet;->b:Lcom/alipay/mobile/common/utils/CacheSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/utils/CacheSet;

    invoke-direct {v0}, Lcom/alipay/mobile/common/utils/CacheSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/utils/CacheSet;->b:Lcom/alipay/mobile/common/utils/CacheSet;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/utils/CacheSet;->b:Lcom/alipay/mobile/common/utils/CacheSet;

    iput-object p0, v0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    sget-object v0, Lcom/alipay/mobile/common/utils/CacheSet;->b:Lcom/alipay/mobile/common/utils/CacheSet;
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
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
