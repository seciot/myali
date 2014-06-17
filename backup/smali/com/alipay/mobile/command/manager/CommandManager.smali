.class public Lcom/alipay/mobile/command/manager/CommandManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    sput-object v1, Lcom/alipay/mobile/command/manager/CommandManager;->b:Ljava/lang/String;

    sput-object v1, Lcom/alipay/mobile/command/manager/CommandManager;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/alipay/mobile/command/model/CommandMetaCollect;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/command/model/CommandMetaCollect;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/model/CommandMetaWrap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-class v4, Lcom/alipay/mobile/command/manager/CommandManager;

    monitor-enter v4

    if-nez p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/alipay/mobile/command/model/CommandMetaCollect;

    invoke-direct {p0}, Lcom/alipay/mobile/command/model/CommandMetaCollect;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaCollect;->getCommandWrapMap()Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/CommandMetaWrap;

    if-eqz v0, :cond_1

    sget-object v6, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/CommandMetaWrap;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/CommandMetaWrap;

    move v2, v1

    :goto_3
    if-ge v2, v9, :cond_9

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/command/util/CommandUtil;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v0}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Lcom/alipay/mobile/command/model/CommandMetaWrap;)V

    move v2, v3

    :goto_4
    if-nez v2, :cond_4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "command md5\u68c0\u67e5\u5f02\u5e38.Command:"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    aput-object v0, v2, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "File isExsit:"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v2, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "command md5\u68c0\u67e5\u5f02\u5e38.Command:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "File isExsit:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v6}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getJarContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/command/util/CommandUtil;->decoderBase64File(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :try_start_2
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->CMD:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    invoke-static {v2}, Lcom/alipay/mobile/command/util/CommandUtil;->getDownLoadFilePath(Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v3, v2

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_8

    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/command/model/CommandMetaCollect;->containsCommandFileName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/alipay/mobile/command/util/CommandUtil;->delFile(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u6e05\u9664command\u5931\u8d25"

    aput-object v2, v0, v1

    :cond_8
    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->COMMAND:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0, p0}, Lcom/alipay/mobile/command/util/CommandUtil;->writerMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u5f53\u524d\u5185\u5b58\u7ef4\u62a4 command:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-void

    :cond_9
    move v2, v1

    goto/16 :goto_4
.end method

.method private static declared-synchronized a(Lcom/alipay/mobile/command/model/CommandMetaWrap;)V
    .locals 7

    const-class v1, Lcom/alipay/mobile/command/manager/CommandManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/command/util/SignVerifyTool;->getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "classes.dex"

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/command/util/SignVerifyTool;->verifyApk([Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchCommandClassPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/command/manager/CommandManager;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "installApkCache"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/command/manager/CommandManager;->b:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/alipay/mobile/command/manager/CommandManager;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "installApkOtpCache"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/command/manager/CommandManager;->c:Ljava/lang/String;

    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/alipay/mobile/command/manager/CommandManager;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/command/util/CommandUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/command/manager/CommandManager;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const-class v6, Lcom/alipay/mobile/command/manager/CommandManager;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sget-object v2, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    invoke-virtual {v3, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/facade/BaseCommand;

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v0, v6}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;-><init>(Ldalvik/system/DexClassLoader;Lcom/alipay/mobile/command/facade/BaseCommand;Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "\u52a0\u8f7dcommand\u5b89\u88c5\u5305\u6210\u529f.detail:"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ",name:"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :cond_4
    const/4 v0, 0x6

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u52a0\u8f7dcommand\u5b89\u88c5\u5305\u5931\u8d25.detail:"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",name:"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ",targetFileIsExisit:"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u52a0\u8f7dcommand\u5b89\u88c5\u5305\u5f02\u5e38."

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u52a0\u8f7dcommand\u5b89\u88c5\u5305\u5f02\u5e38."

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    const/4 v2, 0x4

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "apk verify signInfo error. apkFile:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",verify:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "apk verify signInfo error. apkFile:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ",verify:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    return-object v0
.end method
