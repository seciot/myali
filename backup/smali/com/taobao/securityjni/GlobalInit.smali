.class public final Lcom/taobao/securityjni/GlobalInit;
.super Ljava/lang/Object;


# static fields
.field private static CHECK_SO_EXIST:Z = false

.field private static final COP_LOAD_APK_ERROR:I = 0x10000000

.field private static final COP_LOAD_ERROR:I = 0x40000000

.field private static final COP_LOAD_SUCCESS:I = 0x20000000

.field private static final DATA_DIR:Ljava/lang/String; = "/data/data/"

.field private static final EXIST_ERROR:I = 0x2

.field private static final HS_P_KEY:I = 0x2000

.field private static final HS_S_KEY:I = 0x1000

.field private static volatile INIT_FIRST_OK:Z = false

.field public static final KIND_ERROR_CODE:I = 0x1

.field public static final KIND_ERROR_EXCEPTION:I = 0x2

.field public static final KIND_ERROR_NOT_CARE:I = 0x0

.field private static final LOAD_ERROR:I = 0x1

.field public static volatile LOAD_FLAG:I = 0x0

.field private static final NEQ_KEY_NULL:I = 0x40

.field private static final PS_KEY_NULL:I = 0x20

.field private static final PS_RK_NULL:I = 0x200

.field private static final SECURITY_DEBUG:Z = true

.field private static SEDEBUGMODE:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final ST_KEY_NULL:I = 0x10

.field private static final ST_RK_NULL:I = 0x100

.field private static final SYS_CT_NULL:I = 0x80

.field private static context:Landroid/content/ContextWrapper;

.field private static sAppKey:Ljava/lang/String;

.field private static final security:Lcom/taobao/securityjni/impl/SESecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/taobao/securityjni/GlobalInit;->CHECK_SO_EXIST:Z

    sput v1, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    sput-object v0, Lcom/taobao/securityjni/GlobalInit;->sAppKey:Ljava/lang/String;

    sput-object v0, Lcom/taobao/securityjni/GlobalInit;->context:Landroid/content/ContextWrapper;

    sput-boolean v1, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taobao/securityjni/GlobalInit;->SEDEBUGMODE:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/taobao/securityjni/impl/SESecurity;

    invoke-direct {v0}, Lcom/taobao/securityjni/impl/SESecurity;-><init>()V

    sput-object v0, Lcom/taobao/securityjni/GlobalInit;->security:Lcom/taobao/securityjni/impl/SESecurity;

    :try_start_0
    const-string/jumbo v0, "SSECeg-mini-1.2.9.4"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput v2, Lcom/taobao/securityjni/a;->a:I

    return-void

    :catch_0
    move-exception v0

    sget v1, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    invoke-static {v2}, Lcom/taobao/securityjni/GlobalInit;->setCheckSoFlag(Z)V

    const-string/jumbo v1, "System.loadLibrary(SSECeg-mini-1.2.9.4)"

    invoke-static {v1, v0}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AppFilesDirExists(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/GlobalInit$a;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/taobao/securityjni/GlobalInit$a;

    invoke-direct {v2, v0}, Lcom/taobao/securityjni/GlobalInit$a;-><init>(B)V

    iput-boolean v0, v2, Lcom/taobao/securityjni/GlobalInit$a;->b:Z

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, v2, Lcom/taobao/securityjni/GlobalInit$a;->b:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iput-object v0, v2, Lcom/taobao/securityjni/GlobalInit$a;->a:Ljava/io/File;

    return-object v2

    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->GetPackageDataPath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/files/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, v2, Lcom/taobao/securityjni/GlobalInit$a;->b:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method private static declared-synchronized CompatibleLoadKnownSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "libSSECeg-mini-1.2.9.4.so"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetSecurityDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lcom/taobao/securityjni/GlobalInit;->LoadSoToMem(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    sput-object p1, Lcom/taobao/securityjni/tools/e;->a:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetSecurityDebugMode()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized CompatibleSchemeLoadSo(Landroid/content/ContextWrapper;)V
    .locals 5

    const/high16 v4, 0x4000

    const/high16 v3, 0x2000

    const-class v1, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    sput-object v0, Lcom/taobao/securityjni/GlobalInit;->context:Landroid/content/ContextWrapper;

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_1

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_1

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->LoadSoFromApk(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    const/high16 v2, 0x1000

    or-int/2addr v0, v2

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->LoadSoFromAssert(Landroid/content/ContextWrapper;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_2

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/2addr v0, v3

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/2addr v0, v4

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static CopySoToFiles(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4

    const/16 v0, 0x1000

    new-array v3, v0, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const/16 v2, 0x1000

    :try_start_1
    invoke-virtual {p0, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v0, 0x0

    const/16 v2, 0x1000

    invoke-virtual {p0, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private static ForeverTrue(Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private GetBssidPR(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/taobao/securityjni/tools/PhoneInfo;->getBssid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetCellIdPR(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/taobao/securityjni/tools/PhoneInfo;->getCellId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static GetExternalPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized GetGlobalAppKey()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/taobao/securityjni/GlobalInit;->sAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private GetImeiPR(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/taobao/securityjni/tools/PhoneInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetImsiPR(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/taobao/securityjni/tools/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static GetPackageCodePath(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static GetPackageDataPath(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->GetPackageName(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static GetPackageName(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static GetPackageResPath(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static GetSecurityDebugMode()Z
    .locals 1

    sget-object v0, Lcom/taobao/securityjni/GlobalInit;->SEDEBUGMODE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private GetSsidPR(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/taobao/securityjni/tools/PhoneInfo;->getSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GlobalSecurityInitAsync(Landroid/content/ContextWrapper;)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    if-nez v0, :cond_0

    sput-boolean v3, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->CompatibleSchemeLoadSo(Landroid/content/ContextWrapper;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/securityjni/GlobalInit$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/taobao/securityjni/GlobalInit$b;-><init>(Landroid/content/ContextWrapper;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static GlobalSecurityInitAsyncSDK(Landroid/content/ContextWrapper;)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    if-nez v0, :cond_0

    sput-boolean v3, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->CompatibleSchemeLoadSo(Landroid/content/ContextWrapper;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/securityjni/GlobalInit$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/taobao/securityjni/GlobalInit$b;-><init>(Landroid/content/ContextWrapper;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;)V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->CompatibleSchemeLoadSo(Landroid/content/ContextWrapper;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/securityjni/GlobalInit$b;

    invoke-direct {v1, p0, v2, v2}, Lcom/taobao/securityjni/GlobalInit$b;-><init>(Landroid/content/ContextWrapper;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    invoke-static {p0, p1}, Lcom/taobao/securityjni/GlobalInit;->CompatibleLoadKnownSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/securityjni/GlobalInit$b;

    invoke-direct {v1, p0, v2, v2}, Lcom/taobao/securityjni/GlobalInit$b;-><init>(Landroid/content/ContextWrapper;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;)V

    goto :goto_0
.end method

.method private static GlobalSecurityInitJava(Landroid/content/ContextWrapper;Z)V
    .locals 2

    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->delayQueueInit()V

    new-instance v0, Lcom/taobao/securityjni/GlobalInit$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/securityjni/GlobalInit$d;-><init>(B)V

    invoke-static {v0}, Lcom/taobao/securityjni/tools/d;->a(Lcom/taobao/securityjni/tools/SEDelay;)V

    new-instance v0, Lcom/taobao/securityjni/GlobalInit$c;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/GlobalInit$c;-><init>(Z)V

    invoke-static {v0}, Lcom/taobao/securityjni/tools/d;->a(Lcom/taobao/securityjni/tools/SEDelay;)V

    invoke-static {p0}, Lcom/ut/secbody/SecurityMatrix;->MatrixInitAsync(Landroid/content/ContextWrapper;)V

    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetSecurityDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/taobao/dp/a;->a(Landroid/content/Context;)Lcom/taobao/dp/a;

    invoke-static {}, Lcom/taobao/dp/a;->b()V

    :cond_0
    invoke-static {p0}, Lcom/taobao/dp/a;->a(Landroid/content/Context;)Lcom/taobao/dp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/dp/a;->a()V

    return-void
.end method

.method public static GlobalSecurityInitSync(Landroid/content/ContextWrapper;)V
    .locals 1

    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->CompatibleSchemeLoadSo(Landroid/content/ContextWrapper;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitJava(Landroid/content/ContextWrapper;Z)V

    :cond_0
    return-void
.end method

.method public static GlobalSecurityInitSyncSDK(Landroid/content/ContextWrapper;)V
    .locals 1

    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->CompatibleSchemeLoadSo(Landroid/content/ContextWrapper;)V

    new-instance v0, Lcom/taobao/securityjni/StaticDataStore;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static GlobalSecurityInitSyncSo(Landroid/content/ContextWrapper;)V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->CompatibleSchemeLoadSo(Landroid/content/ContextWrapper;)V

    new-instance v0, Lcom/taobao/securityjni/StaticDataStore;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey()Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitJava(Landroid/content/ContextWrapper;Z)V

    :cond_0
    return-void
.end method

.method public static GlobalSecurityInitSyncSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/taobao/securityjni/GlobalInit;->INIT_FIRST_OK:Z

    invoke-static {p0, p1}, Lcom/taobao/securityjni/GlobalInit;->CompatibleLoadKnownSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    new-instance v0, Lcom/taobao/securityjni/StaticDataStore;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey()Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitJava(Landroid/content/ContextWrapper;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitSyncSo(Landroid/content/ContextWrapper;)V

    goto :goto_0
.end method

.method private static LoadSoFromApk(Landroid/content/ContextWrapper;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->GetPackageCodePath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->AppFilesDirExists(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/GlobalInit$a;

    move-result-object v3

    iget-boolean v4, v3, Lcom/taobao/securityjni/GlobalInit$a;->b:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/io/File;

    iget-object v3, v3, Lcom/taobao/securityjni/GlobalInit$a;->a:Ljava/io/File;

    const-string/jumbo v5, "libSSECeg-mini-1.2.9.4.so"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v4}, Lcom/taobao/securityjni/GlobalInit;->validateSha256(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v3, Ljava/util/zip/ZipFile;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lib/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "libSSECeg-mini-1.2.9.4.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v6, "armeabi-v7a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lib/armeabi/libSSECeg-mini-1.2.9.4.so"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_7
    :try_start_4
    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/taobao/securityjni/GlobalInit;->CopySoToFiles(Ljava/io/InputStream;Ljava/io/File;)V

    :goto_1
    invoke-static {v4}, Lcom/taobao/securityjni/GlobalInit;->LoadSoToMem(Ljava/io/File;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    move-result v0

    if-eqz v2, :cond_8

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object v3, v2

    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_9

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_9
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_3
    if-eqz v2, :cond_a

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_a
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :goto_4
    throw v0

    :catch_5
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :cond_b
    move-object v3, v2

    goto :goto_1
.end method

.method private static LoadSoFromAssert(Landroid/content/ContextWrapper;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->AppFilesDirExists(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/GlobalInit$a;

    move-result-object v1

    iget-boolean v3, v1, Lcom/taobao/securityjni/GlobalInit$a;->b:Z

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/taobao/securityjni/GlobalInit$a;->a:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v5, "armeabi-v7a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "armeabi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "armeabi/libSSECeg-mini-1.2.9.4.so"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "libSSECeg-mini-1.2.9.4.so"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v3}, Lcom/taobao/securityjni/GlobalInit;->validateSha256(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/taobao/securityjni/GlobalInit;->CopySoToFiles(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_1
    invoke-static {v3}, Lcom/taobao/securityjni/GlobalInit;->LoadSoToMem(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_2
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private static LoadSoToMem(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->ForeverTrue(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static final PubKeyTestSimplify(Landroid/content/ContextWrapper;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/taobao/securityjni/test/pubkey/SecurityTestCode;->a()Lcom/taobao/securityjni/tools/RetObject;

    move-result-object v2

    if-nez v2, :cond_1

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/taobao/securityjni/test/pubkey/SecurityTestCode;->b()Lcom/taobao/securityjni/tools/RetObject;

    move-result-object v3

    if-nez v3, :cond_2

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lcom/taobao/securityjni/tools/RetObject;->rightData:[B

    if-nez v0, :cond_5

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit16 v0, v0, 0x100

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    move-object v0, v1

    :goto_1
    iget-object v2, v3, Lcom/taobao/securityjni/tools/RetObject;->rightData:[B

    if-nez v2, :cond_6

    sget v2, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit16 v2, v2, 0x200

    sput v2, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    :goto_2
    invoke-static {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->StringCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget v2, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit8 v2, v2, 0x40

    sput v2, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    :cond_3
    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->getPKey(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit16 v0, v0, 0x1000

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    :cond_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit16 v0, v0, 0x2000

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v2, v2, Lcom/taobao/securityjni/tools/RetObject;->rightData:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/String;

    iget-object v2, v3, Lcom/taobao/securityjni/tools/RetObject;->rightData:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_7
    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit16 v0, v0, 0x80

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    goto :goto_0
.end method

.method public static declared-synchronized SetGlobalAppKey(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->sAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static SetSecurityDebugMode(Z)V
    .locals 1

    sget-object v0, Lcom/taobao/securityjni/GlobalInit;->SEDEBUGMODE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method private static StringCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static final VerifySoExistence(Landroid/content/ContextWrapper;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->GetPackageDataPath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/lib/libSSECeg-mini-1.2.9.4.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    const-string/jumbo v0, "VerifySoExistence"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " :[File Exists Return False]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v4, v0, v5, v5, v2}, Lcom/taobao/securityjni/usertrack/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    invoke-static {v4}, Lcom/taobao/securityjni/GlobalInit;->setCheckSoFlag(Z)V

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/content/ContextWrapper;
    .locals 1

    sget-object v0, Lcom/taobao/securityjni/GlobalInit;->context:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->GetPackageDataPath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/ContextWrapper;)V
    .locals 0

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->PubKeyTestSimplify(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->CHECK_SO_EXIST:Z

    return v0
.end method

.method static synthetic access$400(Landroid/content/ContextWrapper;)V
    .locals 0

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->VerifySoExistence(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/ContextWrapper;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitJava(Landroid/content/ContextWrapper;Z)V

    return-void
.end method

.method private static delayQueueInit()V
    .locals 1

    invoke-static {}, Lcom/taobao/securityjni/tools/d;->a()V

    new-instance v0, Lcom/taobao/securityjni/a/b;

    invoke-direct {v0}, Lcom/taobao/securityjni/a/b;-><init>()V

    invoke-static {v0}, Lcom/taobao/securityjni/tools/d;->a(Lcom/taobao/securityjni/tools/SEDelay;)V

    return-void
.end method

.method private static getPKey(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized setCheckSoFlag(Z)V
    .locals 2

    const-class v0, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/taobao/securityjni/GlobalInit;->CHECK_SO_EXIST:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setEnableOutPutExpInfo(Z)V
    .locals 0

    invoke-static {p0}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->setEnableOutPutExpInfo(Z)V

    invoke-static {p0}, Lcom/taobao/securityjni/usertrack/a;->a(Z)V

    return-void
.end method

.method public static setExpInfoReportKind(I)V
    .locals 0

    invoke-static {p0}, Lcom/taobao/securityjni/usertrack/a;->a(I)V

    return-void
.end method

.method private static validateSha256(Ljava/io/File;)Z
    .locals 2

    sget-object v0, Lcom/taobao/securityjni/GlobalInit;->security:Lcom/taobao/securityjni/impl/SESecurity;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/impl/SESecurity;->SOValidateSha256(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final native InitData(Landroid/content/ContextWrapper;)V
.end method

.method public final getPackageData(Landroid/content/ContextWrapper;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Lcom/taobao/securityjni/GlobalInit;->GetPackageCodePath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lcom/taobao/securityjni/GlobalInit;->GetPackageName(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    invoke-static {p1}, Lcom/taobao/securityjni/GlobalInit;->GetPackageDataPath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    invoke-static {p1}, Lcom/taobao/securityjni/GlobalInit;->GetPackageResPath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetExternalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
