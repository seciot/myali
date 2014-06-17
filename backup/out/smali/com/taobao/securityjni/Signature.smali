.class public Lcom/taobao/securityjni/Signature;
.super Ljava/lang/Object;


# instance fields
.field private handle:J

.field private sha:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/securityjni/Signature;->handle:J

    iput v2, p0, Lcom/taobao/securityjni/Signature;->sha:I

    iput v2, p0, Lcom/taobao/securityjni/Signature;->sha:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/securityjni/Signature;->handle:J

    const/16 v0, 0x100

    iput v0, p0, Lcom/taobao/securityjni/Signature;->sha:I

    iput p1, p0, Lcom/taobao/securityjni/Signature;->sha:I

    return-void
.end method

.method private native destroy()V
.end method

.method private native updated([B)V
.end method

.method private native verifyd(Ljava/lang/String;Ljava/lang/String;)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/taobao/securityjni/Signature;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public update([B)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/Signature;->updated([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/Signature;->verifyd(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
