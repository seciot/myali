.class public Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->b:Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->b:Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->b:Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->a:Landroid/content/Context;

    return-void
.end method

.method public saveConnInfoToFile(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getInstance()Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "operationType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "requestType"

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "currentViewID"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1, p2}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveErrorInfoToFile(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getInstance()Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->a:Landroid/content/Context;

    const-string/jumbo v3, "currentViewID"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1, p2}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
