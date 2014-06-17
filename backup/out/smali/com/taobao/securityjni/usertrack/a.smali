.class public final Lcom/taobao/securityjni/usertrack/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:I

.field private static volatile d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "1.2.9.4"

    sput-object v0, Lcom/taobao/securityjni/usertrack/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taobao/securityjni/usertrack/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput v1, Lcom/taobao/securityjni/usertrack/a;->c:I

    sput v1, Lcom/taobao/securityjni/usertrack/a;->d:I

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Throwable is null!!"

    goto :goto_0
.end method

.method public static declared-synchronized a(I)V
    .locals 2

    const-class v0, Lcom/taobao/securityjni/usertrack/a;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/taobao/securityjni/usertrack/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "[LoadCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "R: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string/jumbo v0, "E: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Cert: [null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ExtData: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p4

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    array-length v2, p4

    if-ge v0, v2, :cond_3

    aget-object v2, p4, v0

    if-eqz v2, :cond_2

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p4, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    const-string/jumbo v0, "R: [null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "E: [null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "::}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_4

    const-string/jumbo v1, "SecurityAllData"

    sget-object v2, Lcom/taobao/securityjni/usertrack/a;->a:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_4
    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    const-string/jumbo v1, "SecurityRightData"

    sget-object v2, Lcom/taobao/securityjni/usertrack/a;->a:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x2

    if-ne p0, v1, :cond_6

    const-string/jumbo v1, "SecurityErrorData"

    sget-object v2, Lcom/taobao/securityjni/usertrack/a;->a:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string/jumbo v1, "SecurityLoginData"

    sget-object v2, Lcom/taobao/securityjni/usertrack/a;->a:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    const/16 v7, 0x10

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/taobao/securityjni/errorcode/SErrCode;->ParseErrorCode(Ljava/lang/Throwable;)Lcom/taobao/securityjni/tools/RetObject;

    move-result-object v2

    sget-object v3, Lcom/taobao/securityjni/usertrack/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/taobao/securityjni/tools/RetObject;->functionName:[B

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/taobao/securityjni/tools/RetObject;->functionName:[B

    aget-byte v4, v3, v0

    const/16 v5, 0x54

    if-ne v4, v5, :cond_3

    aget-byte v3, v3, v1

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    sget v3, Lcom/taobao/securityjni/usertrack/a;->d:I

    const/16 v4, 0xc

    if-le v3, v4, :cond_2

    :goto_0
    if-nez v0, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget v0, Lcom/taobao/securityjni/usertrack/a;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/taobao/securityjni/usertrack/a;->d:I

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    if-eqz v2, :cond_5

    iget v0, v2, Lcom/taobao/securityjni/tools/RetObject;->errorCode:I

    invoke-static {v0}, Lcom/taobao/securityjni/errorcode/SErrMap;->GetErrorKind(I)I

    move-result v0

    :cond_5
    if-eq v0, v6, :cond_6

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/lang/Error;

    invoke-static {v0}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[LoadCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    invoke-static {v5, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SecurityException"

    sget-object v4, Lcom/taobao/securityjni/usertrack/a;->a:Ljava/lang/String;

    invoke-static {v3, p0, v0, v4}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    sget v0, Lcom/taobao/securityjni/usertrack/a;->c:I

    if-ne v0, v1, :cond_8

    invoke-static {v2}, Lcom/taobao/securityjni/errorcode/SErrCode;->SetErrorCode(Lcom/taobao/securityjni/tools/RetObject;)V

    goto :goto_1

    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/lang/Exception;

    invoke-static {v0}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[LoadCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/taobao/securityjni/GlobalInit;->LOAD_FLAG:I

    invoke-static {v5, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SecurityException"

    sget-object v4, Lcom/taobao/securityjni/usertrack/a;->a:Ljava/lang/String;

    invoke-static {v3, p0, v0, v4}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    sget v0, Lcom/taobao/securityjni/usertrack/a;->c:I

    if-ne v0, v6, :cond_1

    if-eqz v2, :cond_1

    iget v0, v2, Lcom/taobao/securityjni/tools/RetObject;->errorCode:I

    invoke-static {v0}, Lcom/taobao/securityjni/errorcode/SErrMap;->GetErrorDescption(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v2, Lcom/taobao/securityjni/tools/RetObject;->errorCode:I

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    new-instance v1, Lcom/taobao/securityjni/errorcode/SEStaticFileVersionError;

    invoke-direct {v1, v0, p1}, Lcom/taobao/securityjni/errorcode/SEStaticFileVersionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_1
    new-instance v1, Lcom/taobao/securityjni/errorcode/SEInvalidParametersException;

    invoke-direct {v1, v0, p1}, Lcom/taobao/securityjni/errorcode/SEInvalidParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_2
    new-instance v1, Lcom/taobao/securityjni/errorcode/SEStaticFileNotStoreValueException;

    invoke-direct {v1, v0, p1}, Lcom/taobao/securityjni/errorcode/SEStaticFileNotStoreValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_3
    new-instance v1, Lcom/taobao/securityjni/errorcode/SEKeyNotEqualError;

    invoke-direct {v1, v0, p1}, Lcom/taobao/securityjni/errorcode/SEKeyNotEqualError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x12e -> :sswitch_0
        -0x6f -> :sswitch_2
        -0x6e -> :sswitch_1
        -0x68 -> :sswitch_3
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, Lcom/taobao/securityjni/usertrack/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method
