.class final Lcom/ut/b/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ut/b/b;


# static fields
.field private static final aE:Ljava/lang/Object;


# instance fields
.field private final aA:Ljava/io/File;

.field private final aB:I

.field private aC:Ljava/util/Map;

.field private aD:Z

.field private aF:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/ut/b/b$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final az:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ut/b/d$a;->aE:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/b/d$a;->aD:Z

    iput-object p1, p0, Lcom/ut/b/d$a;->az:Ljava/io/File;

    invoke-static {p1}, Lcom/ut/b/d;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/b/d$a;->aA:Ljava/io/File;

    iput p2, p0, Lcom/ut/b/d$a;->aB:I

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/ut/b/d$a;->aC:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/b/d$a;->aF:Ljava/util/WeakHashMap;

    return-void

    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ut/b/d$a;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Lcom/ut/b/d$a;->aF:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/ut/b/d$a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ut/b/d$a;->aC:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/ut/b/d$a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ut/b/d$a;->x()Z

    move-result v0

    return v0
.end method

.method private x()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ut/b/d$a;->az:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ut/b/d$a;->aA:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ut/b/d$a;->az:Ljava/io/File;

    iget-object v2, p0, Lcom/ut/b/d$a;->aA:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ut/b/d$a;->az:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/ut/b/d$a;->az:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/ut/b/d$a;->c(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ut/b/d$a;->aC:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/ut/b/e;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/ut/b/d$a;->aA:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    iget-object v1, p0, Lcom/ut/b/d$a;->az:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ut/b/d$a;->az:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1

    if-eqz p1, :cond_0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ut/b/d$a;->aC:Ljava/util/Map;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/ut/b/d$a;->aD:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ut/b/d$a;->aC:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/b/d$a;->aC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/b/d$a;->aC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lcom/ut/b/d$a;->az:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ut/b/d$a;->az:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Lcom/ut/b/b$a;
    .locals 1

    new-instance v0, Lcom/ut/b/d$a$a;

    invoke-direct {v0, p0}, Lcom/ut/b/d$a$a;-><init>(Lcom/ut/b/d$a;)V

    return-object v0
.end method

.method public final w()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ut/b/d$a;->aD:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
