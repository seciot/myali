.class final Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/security/cert/Certificate;

.field private final g:[Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->c:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readInt()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readInt()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "expected \"\" but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a(Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->f:[Ljava/security/cert/Certificate;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a(Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->g:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->f:[Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->g:[Ljava/security/cert/Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->c:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->fromMultimap(Ljava/util/Map;Z)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    instance-of v0, p3, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->getHttpEngine()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->e:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->f:[Ljava/security/cert/Certificate;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->g:[Ljava/security/cert/Certificate;

    :goto_3
    return-void

    :cond_0
    check-cast p3, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getHttpEngine()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->f:[Ljava/security/cert/Certificate;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->g:[Ljava/security/cert/Certificate;

    goto :goto_3
.end method

.method private static a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 4

    if-nez p1, :cond_1

    const-string/jumbo v0, "-1\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a:Ljava/lang/String;

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;)[Ljava/security/cert/Certificate;
    .locals 5

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-array v0, v0, [Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->decode([B)[B

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->f:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->g:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v1, p1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final writeTo(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0xa

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->f:[Ljava/security/cert/Certificate;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->g:[Ljava/security/cert/Certificate;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    return-void
.end method
