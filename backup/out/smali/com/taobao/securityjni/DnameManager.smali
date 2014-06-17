.class public Lcom/taobao/securityjni/DnameManager;
.super Ljava/lang/Object;


# static fields
.field private static final AHICK:Lcom/taobao/securityjni/DnameManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taobao/securityjni/DnameManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/securityjni/DnameManager$a;-><init>(B)V

    sput-object v0, Lcom/taobao/securityjni/DnameManager;->AHICK:Lcom/taobao/securityjni/DnameManager$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RegisterConfig(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/securityjni/DnameManager;->RegisterConfig([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static native RegisterConfig([B)V
.end method

.method private static native RegisterName([B)V
.end method

.method public static RegisterName([Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/securityjni/DnameManager;->RegisterName([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static native StartAHick()V
.end method

.method public static StartDsAHick()V
    .locals 1

    sget-object v0, Lcom/taobao/securityjni/DnameManager;->AHICK:Lcom/taobao/securityjni/DnameManager$a;

    invoke-static {v0}, Lcom/taobao/securityjni/tools/d;->a(Lcom/taobao/securityjni/tools/SEDelay;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/taobao/securityjni/DnameManager;->StartAHick()V

    return-void
.end method
