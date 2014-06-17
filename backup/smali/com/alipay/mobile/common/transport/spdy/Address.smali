.class public final Lcom/alipay/mobile/common/transport/spdy/Address;
.super Ljava/lang/Object;


# instance fields
.field final authenticator:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final proxy:Ljava/net/Proxy;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final transports:Ljava/util/List;

.field final uriHost:Ljava/lang/String;

.field final uriPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;Ljava/net/Proxy;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uriHost == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uriPort <= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p7, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transports == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p6, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->proxy:Ljava/net/Proxy;

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->uriHost:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->uriPort:I

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p4, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object p5, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    invoke-static {p7}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->transports:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/alipay/mobile/common/transport/spdy/Address;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->proxy:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/spdy/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->uriHost:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/spdy/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->uriPort:I

    iget v2, p1, Lcom/alipay/mobile/common/transport/spdy/Address;->uriPort:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->transports:Ljava/util/List;

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/spdy/Address;->transports:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getAuthenticator()Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final getProxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final getTransports()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->transports:Ljava/util/List;

    return-object v0
.end method

.method public final getUriHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->uriHost:Ljava/lang/String;

    return-object v0
.end method

.method public final getUriPort()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->uriPort:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->uriPort:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Address;->transports:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
