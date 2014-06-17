.class public Lcom/taobao/securityjni/errorcode/SErrCode;
.super Ljava/lang/Object;


# static fields
.field private static SERRORCODE:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/securityjni/errorcode/SErrCode;->SERRORCODE:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetErrorCode()Lcom/taobao/securityjni/tools/RetObject;
    .locals 3

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrCode;->SERRORCODE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/securityjni/tools/RetObject;

    sget-object v1, Lcom/taobao/securityjni/errorcode/SErrCode;->SERRORCODE:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static GetRetObject()Lcom/taobao/securityjni/tools/RetObject;
    .locals 2

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrCode;->SERRORCODE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/securityjni/tools/RetObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/securityjni/tools/RetObject;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/RetObject;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/taobao/securityjni/tools/RetObject;->errorCode:I

    goto :goto_0
.end method

.method public static ParseErrorCode(Ljava/lang/Throwable;)Lcom/taobao/securityjni/tools/RetObject;
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/taobao/securityjni/errorcode/SErrCode;->GetRetObject()Lcom/taobao/securityjni/tools/RetObject;

    move-result-object v1

    if-eqz v2, :cond_0

    array-length v3, v2

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    aget-object v0, v2, v5

    if-eqz v0, :cond_2

    aget-object v0, v2, v5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/securityjni/tools/RetObject;->functionName:[B

    :cond_2
    const/4 v0, 0x3

    :try_start_0
    aget-object v0, v2, v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, ""

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/taobao/securityjni/tools/RetObject;->errorCode:I

    :cond_3
    const/4 v0, 0x5

    aget-object v0, v2, v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    const/4 v3, 0x5

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/taobao/securityjni/tools/RetObject;->extraData:I

    :cond_4
    const/4 v0, 0x7

    aget-object v0, v2, v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, ""

    const/4 v3, 0x7

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/taobao/securityjni/tools/RetObject;->reservedData:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static SetErrorCode(Lcom/taobao/securityjni/tools/RetObject;)V
    .locals 1

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrCode;->SERRORCODE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static SetErrorCode(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p0}, Lcom/taobao/securityjni/errorcode/SErrCode;->ParseErrorCode(Ljava/lang/Throwable;)Lcom/taobao/securityjni/tools/RetObject;

    move-result-object v0

    sget-object v1, Lcom/taobao/securityjni/errorcode/SErrCode;->SERRORCODE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
