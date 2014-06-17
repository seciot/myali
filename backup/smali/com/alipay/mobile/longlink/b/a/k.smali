.class public Lcom/alipay/mobile/longlink/b/a/k;
.super Lcom/alipay/mobile/longlink/b/a/a;


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field protected i:Ljava/net/Socket;

.field j:Ljava/lang/String;

.field k:Lcom/alipay/mobile/longlink/b/a/i;

.field l:Lcom/alipay/mobile/longlink/b/a/e;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:I

.field private r:Ljava/util/Timer;

.field private s:I

.field private t:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/b/a/k;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/longlink/b/a/c;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/longlink/b/a/a;-><init>(Lcom/alipay/mobile/longlink/b/a/c;)V

    iput-object v1, p0, Lcom/alipay/mobile/longlink/b/a/k;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/longlink/b/a/k;->n:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/mobile/longlink/b/a/k;->o:Z

    sget v0, Lcom/alipay/mobile/longlink/b/c/b;->a:I

    iput v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->p:I

    iput v2, p0, Lcom/alipay/mobile/longlink/b/a/k;->q:I

    iput-object v1, p0, Lcom/alipay/mobile/longlink/b/a/k;->r:Ljava/util/Timer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->s:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->t:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/longlink/b/a/k;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->s:I

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/longlink/b/a/k;->p:I

    return-void
.end method

.method public final a(Lcom/alipay/mobile/longlink/b/b/a;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->h:Lcom/alipay/mobile/longlink/b/a/c;

    invoke-virtual {v3}, Lcom/alipay/mobile/longlink/b/a/c;->d()Lcom/alipay/mobile/longlink/b/a/d;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/longlink/b/a/d;->a:Lcom/alipay/mobile/longlink/b/a/d;

    if-ne v4, v0, :cond_2

    move v0, v2

    :goto_0
    invoke-virtual {v3}, Lcom/alipay/mobile/longlink/b/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/longlink/b/a/c;->b()I

    move-result v5

    const/4 v6, 0x3

    sget-object v7, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "PushConnection_connectUsingConfiguration:host="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " port="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " sslUsed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/longlink/b/a/c;->c()Lcom/alipay/mobile/longlink/b/a/a/c;
    :try_end_0
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    :try_start_1
    invoke-virtual {v3}, Lcom/alipay/mobile/longlink/b/a/c;->f()Ljavax/net/SocketFactory;

    move-result-object v7

    if-nez v7, :cond_3

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    sget-object v3, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v6, "connectUsingConfiguration socket is ready!"

    invoke-static {v0, v3, v6}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v1

    :goto_2
    const/16 v0, 0x14

    if-ge v3, v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v0, :cond_8

    :cond_1
    move v0, v2

    :goto_3
    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/alipay/mobile/longlink/b/a/k;->e:Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/alipay/mobile/longlink/b/a/k;->f:Ljava/io/DataOutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v1, 0x4

    :try_start_5
    sget-object v2, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v3, "initConnection Reader and Writer are created!"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_9

    :try_start_6
    new-instance v0, Lcom/alipay/mobile/longlink/b/a/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/b/a/i;-><init>(Lcom/alipay/mobile/longlink/b/a/k;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    new-instance v0, Lcom/alipay/mobile/longlink/b/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/b/a/e;-><init>(Lcom/alipay/mobile/longlink/b/a/k;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/i;->b()V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/e;->b()V

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initConnection packetReader="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", and packetWriter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "initConnection Reader and Writer are ready!"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/longlink/b/b/a;->a()V
    :try_end_6
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v0, 0x3

    :try_start_7
    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "connected successfully"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_7 .. :try_end_7} :catch_1

    :goto_5
    return-void

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_6

    const/4 v0, 0x3

    :try_start_8
    sget-object v7, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v8, "connectUsingConfiguration ssl is needed!"

    invoke-static {v0, v7, v8}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/longlink/b/a/a/d;->c:Lcom/alipay/mobile/longlink/b/a/a/d;

    invoke-virtual {v6}, Lcom/alipay/mobile/longlink/b/a/a/c;->a()Lcom/alipay/mobile/longlink/b/a/a/d;

    move-result-object v7

    if-ne v0, v7, :cond_4

    const/4 v0, 0x4

    sget-object v7, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ProxyType.SOCKS ProxyAddress:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/longlink/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ProxyPort:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/alipay/mobile/longlink/b/a/a/c;->c()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/longlink/b/a/c;->f()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v6}, Lcom/alipay/mobile/longlink/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/alipay/mobile/longlink/b/a/a/c;->c()I

    move-result v6

    const/4 v8, 0x1

    invoke-virtual {v0, v3, v7, v6, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not connect to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/longlink/b/a/n;

    invoke-direct {v2, v1, v0}, Lcom/alipay/mobile/longlink/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    invoke-interface {p1}, Lcom/alipay/mobile/longlink/b/b/a;->b()V

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/n;->printStackTrace()V

    goto/16 :goto_5

    :cond_4
    :try_start_a
    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    const-string/jumbo v7, "mobilepmgw.alipay.com"

    invoke-interface {v6, v7, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "connectUsingConfiguration hostname verify failed!"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Expected hostname verify failed when creating socket, found"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "HostnameVerifier : failed!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobile/longlink/b/a/n;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/longlink/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_a .. :try_end_a} :catch_1

    :catch_2
    move-exception v0

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error connecting to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/longlink/b/a/n;

    invoke-direct {v2, v1, v0}, Lcom/alipay/mobile/longlink/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_b
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_b .. :try_end_b} :catch_1

    :cond_5
    :try_start_c
    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/alipay/mobile/longlink/b/a/c;->f()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_1

    :cond_7
    const-wide/16 v6, 0x1f4

    :try_start_d
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_d .. :try_end_d} :catch_1

    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_8
    move v0, v1

    goto/16 :goto_3

    :catch_4
    move-exception v0

    new-instance v1, Lcom/alipay/mobile/longlink/b/a/n;

    const-string/jumbo v2, "Error establishing connection with server."

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/longlink/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_e .. :try_end_e} :catch_1

    :cond_9
    :try_start_f
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/i;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/e;->a()V
    :try_end_f
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_4

    :catch_5
    move-exception v0

    :try_start_10
    throw v0

    :cond_a
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "connectUsingConfiguration socket is failed!"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "create socket is failed."

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "socket : null!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobile/longlink/b/a/n;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/longlink/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lcom/alipay/mobile/longlink/b/a/n; {:try_start_10 .. :try_end_10} :catch_1
.end method

.method public final a(Lcom/alipay/mobile/longlink/b/c/a;)V
    .locals 4

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacket()... isConnected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/a/k;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/a/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Have not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacket()... writer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->f:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->e:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacket()... packet.id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/b/c/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/longlink/b/a/i;->a(Lcom/alipay/mobile/longlink/b/c/a;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 4

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isConnected()...called="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->o:Z

    return v0
.end method

.method protected final b(I)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/a/k;->g()V

    :cond_0
    iput p1, p0, Lcom/alipay/mobile/longlink/b/a/k;->s:I

    iget-object v1, p0, Lcom/alipay/mobile/longlink/b/a/k;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->r:Ljava/util/Timer;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->r:Ljava/util/Timer;

    new-instance v2, Lcom/alipay/mobile/longlink/b/a/l;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/longlink/b/a/l;-><init>(Lcom/alipay/mobile/longlink/b/a/k;)V

    invoke-static {}, Lcom/alipay/mobile/longlink/b/a/m;->b()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "setConnected()...isConnected=true"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->o:Z

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->p:I

    return v0
.end method

.method public final e()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "disconnect()... called!"

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "shutdown() called..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/alipay/mobile/longlink/b/a/k;->o:Z

    iput v5, p0, Lcom/alipay/mobile/longlink/b/a/k;->q:I

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/a/k;->g()V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/e;->c()V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/i;->c()V

    :cond_3
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->e:Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    iput-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->e:Ljava/io/DataInputStream;

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->f:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->f:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iput-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->f:Ljava/io/DataOutputStream;

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    sget-object v0, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "shutdown()... Done!"

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/i;->d()V

    iput-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/e;->d()V

    iput-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    sget-object v0, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "disconnect()... done!"

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public final f()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "resetConnection()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/a/k;->g()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/i;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    iput-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->k:Lcom/alipay/mobile/longlink/b/a/i;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/e;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    iput-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->l:Lcom/alipay/mobile/longlink/b/a/e;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->e:Ljava/io/DataInputStream;

    if-eqz v0, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->e:Ljava/io/DataInputStream;

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->f:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_4

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->f:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    iput-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->f:Ljava/io/DataOutputStream;

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;

    if-eqz v0, :cond_5

    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    iput-object v3, p0, Lcom/alipay/mobile/longlink/b/a/k;->i:Ljava/net/Socket;

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->o:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method protected final g()V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/longlink/b/a/k;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->r:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/k;->r:Ljava/util/Timer;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
