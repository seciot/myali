.class public Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
.super Lcom/alipay/mobile/common/transport/Request;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/Request;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/Request;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/http/Header;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReqData()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "id"

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setHeaders(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public setReqData(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "Url : %s,ReqData: %s,HttpHeader: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
