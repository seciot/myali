.class public final Lcom/taobao/securityjni/tools/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:[B

.field private static k:Z

.field private static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/securityjni/tools/e;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/securityjni/tools/e;->b:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/securityjni/tools/e;->c:Ljava/lang/String;

    const-string/jumbo v0, "/lib/"

    sput-object v0, Lcom/taobao/securityjni/tools/e;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/taobao/securityjni/tools/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/securityjni/tools/e;->e:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "FileNotFindError"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "IOError"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "SecurityError"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "ExceptionError"

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/securityjni/tools/e;->f:[Ljava/lang/String;

    const-string/jumbo v0, "SOSha256Check"

    sput-object v0, Lcom/taobao/securityjni/tools/e;->g:Ljava/lang/String;

    sget-object v0, Lcom/taobao/securityjni/soversion/SoVersion;->a:[Ljava/lang/String;

    sput-object v0, Lcom/taobao/securityjni/tools/e;->h:[Ljava/lang/String;

    const-string/jumbo v0, "libSSECeg-mini-1.2.9.4.so"

    sput-object v0, Lcom/taobao/securityjni/tools/e;->i:Ljava/lang/String;

    new-array v0, v3, [B

    sput-object v0, Lcom/taobao/securityjni/tools/e;->j:[B

    sput-boolean v3, Lcom/taobao/securityjni/tools/e;->k:Z

    sput-boolean v3, Lcom/taobao/securityjni/tools/e;->l:Z

    return-void
.end method

.method public static a(Landroid/content/ContextWrapper;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/taobao/securityjni/tools/e;->l:Z

    if-nez v0, :cond_5

    sget-object v5, Lcom/taobao/securityjni/tools/e;->j:[B

    monitor-enter v5

    :try_start_0
    sget-boolean v0, Lcom/taobao/securityjni/tools/e;->l:Z

    if-nez v0, :cond_4

    const/4 v0, 0x6

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v4, 0x0

    aput-object v4, v6, v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v0, v1

    :cond_1
    :goto_1
    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetSecurityDebugMode()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getExternalPackagePath:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_9

    sget-object v4, Lcom/taobao/securityjni/tools/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/taobao/securityjni/tools/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/taobao/securityjni/tools/e;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    :goto_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    sget-object v7, Lcom/taobao/securityjni/tools/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    sget-object v7, Lcom/taobao/securityjni/tools/e;->e:Ljava/lang/String;

    aput-object v7, v6, v0

    :goto_3
    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetSecurityDebugMode()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getExternalPackagePath:path[0]="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v6, v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getExternalPackagePath:path[1]="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    const/4 v0, 0x1

    aget-object v0, v6, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/files/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    :goto_4
    const/4 v0, 0x3

    const-string/jumbo v4, "cust/preinstalled/public/lib/"

    aput-object v4, v6, v0

    const/4 v0, 0x4

    const-string/jumbo v4, "system/vender/lib/"

    aput-object v4, v6, v0

    const/4 v0, 0x5

    sget-object v4, Lcom/taobao/securityjni/tools/e;->a:Ljava/lang/String;

    aput-object v4, v6, v0

    move-object v0, v1

    move v4, v2

    :goto_5
    const/4 v7, 0x6

    if-ge v4, v7, :cond_d

    aget-object v7, v6, v4

    if-eqz v7, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v6, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/taobao/securityjni/tools/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/securityjni/tools/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/taobao/securityjni/tools/e;->f:[Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/taobao/securityjni/tools/e;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    move-object v1, v0

    :goto_6
    if-eqz v1, :cond_f

    move v0, v2

    :goto_7
    sget-object v4, Lcom/taobao/securityjni/tools/e;->h:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_f

    sget-object v4, Lcom/taobao/securityjni/tools/e;->h:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v2, v3

    :goto_8
    sput-boolean v2, Lcom/taobao/securityjni/tools/e;->k:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/securityjni/tools/e;->l:Z

    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    sget-boolean v0, Lcom/taobao/securityjni/tools/e;->k:Z

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string/jumbo v0, "file.separator"

    const-string/jumbo v7, "/"

    invoke-static {v0, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/taobao/securityjni/tools/e;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v0, Lcom/taobao/securityjni/tools/e;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    sget-object v7, Lcom/taobao/securityjni/tools/e;->c:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v0, Lcom/taobao/securityjni/tools/e;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v0, "SD"

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x1

    const/4 v7, 0x0

    aput-object v7, v6, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_a
    const/4 v0, 0x0

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/taobao/securityjni/tools/e;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    goto/16 :goto_3

    :cond_b
    const/4 v0, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/files/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_d
    sget-object v4, Lcom/taobao/securityjni/tools/e;->g:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "##Error"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "1.2.9.4"

    invoke-static {v4, v0, v1, v6}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Error"

    move-object v1, v0

    goto/16 :goto_6

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/securityjni/tools/e;->h:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/taobao/securityjni/tools/e;->h:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/taobao/securityjni/tools/e;->h:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/taobao/securityjni/tools/e;->h:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/taobao/securityjni/tools/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "##"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "1.2.9.4"

    invoke-static {v3, v1, v0, v4}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_8
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/taobao/securityjni/tools/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/taobao/securityjni/tools/e;->h:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/taobao/securityjni/tools/e;->h:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-static {v1}, Lcom/taobao/securityjni/tools/a;->b(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string/jumbo v0, "FileNotFindError"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v0, "IOError"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v0

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    const-string/jumbo v0, "SecurityError"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_0

    :catch_6
    move-exception v0

    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "ExceptionError"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_1

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_1
    :goto_6
    throw v0

    :catch_8
    move-exception v1

    goto :goto_0

    :catch_9
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_b
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_c
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_d
    move-exception v0

    goto :goto_1
.end method
