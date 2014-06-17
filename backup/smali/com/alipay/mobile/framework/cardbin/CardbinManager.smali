.class public Lcom/alipay/mobile/framework/cardbin/CardbinManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/framework/cardbin/CardbinManager;


# instance fields
.field private b:Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->c:Landroid/content/Context;

    const-string/jumbo v1, "cardbin.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "cardbin"

    iget-object v2, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/apkutil/MiscUtils;->fileFromAssets(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/cardbin/CardbinManager;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->a:Lcom/alipay/mobile/framework/cardbin/CardbinManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->a:Lcom/alipay/mobile/framework/cardbin/CardbinManager;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->a:Lcom/alipay/mobile/framework/cardbin/CardbinManager;

    return-object v0
.end method


# virtual methods
.method public queryCarbin(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/cardbin/Cardbin;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->b:Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;

    iget-object v2, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->b:Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->b:Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v4

    move-object v0, v1

    :goto_1
    if-ge v3, v5, :cond_4

    add-int/lit8 v2, v3, 0x6

    add-int/2addr v2, v5

    rem-int/2addr v2, v5

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-lez v5, :cond_3

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_6

    :cond_3
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->b:Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->b:Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;->close()V

    :cond_5
    iput-object v1, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->b:Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->b:Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/cardbin/CardbinDBHelper;->getCardbinDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string/jumbo v7, "cardLength"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string/jumbo v7, "binValue"

    invoke-virtual {v6, v7, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1
.end method
