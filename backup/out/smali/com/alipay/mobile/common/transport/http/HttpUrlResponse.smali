.class public Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
.super Lcom/alipay/mobile/common/transport/Response;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/Response;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->f:Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    iput p2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->a:I

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->mResData:[B

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->a:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->c:J

    return-wide v0
.end method

.method public getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->f:Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->d:J

    return-wide v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->e:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->c:J

    return-void
.end method

.method public setHeader(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->f:Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    return-void
.end method

.method public setPeriod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->d:J

    return-void
.end method
