.class public Lcom/j256/ormlite/misc/VersionUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/j256/ormlite/logger/Logger;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/j256/ormlite/logger/Logger;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->a:Lcom/j256/ormlite/logger/Logger;

    if-nez v0, :cond_0

    const-class v0, Lcom/j256/ormlite/misc/VersionUtils;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/misc/VersionUtils;->a:Lcom/j256/ormlite/logger/Logger;

    :cond_0
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->a:Lcom/j256/ormlite/logger/Logger;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-class v1, Lcom/j256/ormlite/misc/VersionUtils;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->a()Lcom/j256/ormlite/logger/Logger;

    move-result-object v1

    const-string/jumbo v2, "Could not find version file {}"

    invoke-virtual {v1, v2, p0}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->a()Lcom/j256/ormlite/logger/Logger;

    move-result-object v1

    const-string/jumbo v2, "No version specified in {}"

    invoke-virtual {v1, v2, p0}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->a()Lcom/j256/ormlite/logger/Logger;

    move-result-object v3

    const-string/jumbo v4, "Could not read version from {}"

    invoke-virtual {v3, v1, v4, p0}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->a()Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Unknown version for {}, version for {} is \'{}\'"

    invoke-virtual {v0, v1, p0, p2, p3}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->a()Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Unknown version for {}, version for {} is \'{}\'"

    invoke-virtual {v0, v1, p2, p0, p1}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->a()Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Mismatched versions: {} is \'{}\', while {} is \'{}\'"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final checkCoreVersusAndroidVersions()V
    .locals 4

    const-string/jumbo v0, "/com/j256/ormlite/core/VERSION.txt"

    invoke-static {v0}, Lcom/j256/ormlite/misc/VersionUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/com/j256/ormlite/android/VERSION.txt"

    invoke-static {v1}, Lcom/j256/ormlite/misc/VersionUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "core"

    const-string/jumbo v3, "android"

    invoke-static {v2, v0, v3, v1}, Lcom/j256/ormlite/misc/VersionUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkCoreVersusJdbcVersions()V
    .locals 4

    const-string/jumbo v0, "/com/j256/ormlite/core/VERSION.txt"

    invoke-static {v0}, Lcom/j256/ormlite/misc/VersionUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/com/j256/ormlite/jdbc/VERSION.txt"

    invoke-static {v1}, Lcom/j256/ormlite/misc/VersionUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "core"

    const-string/jumbo v3, "jdbc"

    invoke-static {v2, v0, v3, v1}, Lcom/j256/ormlite/misc/VersionUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
