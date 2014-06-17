.class public Lcom/alipay/mobile/common/share/ShareException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0x6979ee5a4b2fff8L


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    iput p1, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    iput p2, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    iput p3, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return v0
.end method

.method public setStatusCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return-void
.end method
