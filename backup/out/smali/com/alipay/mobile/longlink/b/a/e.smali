.class Lcom/alipay/mobile/longlink/b/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/alipay/mobile/longlink/b/a/k;

.field private e:Z

.field private f:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/b/a/e;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/alipay/mobile/longlink/b/a/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/a/e;->d:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/a/e;->a()V

    return-void
.end method

.method private a([BI)I
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/b/a/e;->d:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/b/a/k;->d()I

    move-result v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move v2, v0

    move v1, p2

    :goto_0
    const/4 v0, 0x2

    if-lt v1, v0, :cond_0

    const/4 v0, 0x4

    sget-object v5, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "handleRecvMsg() got valid packet protocolVersion:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", msgByte1st: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v3}, Lcom/alipay/mobile/longlink/b/c/c;->a(I)Lcom/alipay/mobile/longlink/b/c/a;

    move-result-object v5

    sget v0, Lcom/alipay/mobile/longlink/b/c/b;->c:I

    new-array v6, v0, [B

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, 0x4

    sget-object v9, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "handleRecvMsg() read baseHdrLen="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v7, v0, :cond_0

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/longlink/b/c/a;->c([B)V

    invoke-virtual {v5}, Lcom/alipay/mobile/longlink/b/c/a;->g()I

    move-result v6

    sub-int v0, v6, v0

    const/4 v6, 0x4

    sget-object v7, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handleRecvMsg() leftHdrLen="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v1, -0x2

    if-le v0, v6, :cond_1

    const/4 v0, 0x2

    sget-object v5, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    const-string/jumbo v6, "handleRecvMsg() got error header!"

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const/4 v0, 0x5

    sget-object v3, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleRecvMsg() done! leftLen="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", index="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    :try_start_1
    new-array v6, v0, [B

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v0, :cond_6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/longlink/b/c/a;->b([B)V

    invoke-virtual {v5}, Lcom/alipay/mobile/longlink/b/c/a;->c()I

    move-result v6

    invoke-virtual {v5}, Lcom/alipay/mobile/longlink/b/c/a;->g()I

    move-result v0

    sub-int v0, v1, v0

    if-gt v6, v0, :cond_0

    if-ltz v6, :cond_0

    new-array v0, v6, [B

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v5}, Lcom/alipay/mobile/longlink/b/c/a;->c()I

    move-result v6

    invoke-virtual {v5}, Lcom/alipay/mobile/longlink/b/c/a;->g()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5}, Lcom/alipay/mobile/longlink/b/c/a;->f()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/c;->b([B)[B

    move-result-object v0

    array-length v7, v0

    invoke-virtual {v5, v7}, Lcom/alipay/mobile/longlink/b/c/a;->c(I)V

    :cond_2
    invoke-virtual {v5, v0}, Lcom/alipay/mobile/longlink/b/c/a;->a([B)V

    const/4 v0, 0x4

    sget-object v7, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handleRecvMsg() got valid packet! rawData="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/longlink/b/c/a;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v5}, Lcom/alipay/mobile/longlink/b/c/a;->e()I

    move-result v7

    sget v8, Lcom/alipay/mobile/longlink/b/c/b;->a:I

    if-eq v7, v8, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-nez v0, :cond_5

    const/4 v0, 0x2

    sget-object v5, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    const-string/jumbo v7, "handleRecvMsg() it\'s unsupported packet!"

    invoke-static {v0, v5, v7}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int v0, v2, v6

    sub-int/2addr v1, v6

    const/4 v2, 0x4

    sget-object v5, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "handleRecvMsg() current thisLen="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", leftLen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto/16 :goto_0

    :cond_5
    if-eqz v5, :cond_4

    const/4 v0, 0x5

    sget-object v7, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    const-string/jumbo v8, "processPacket() are processing one valid packet!"

    invoke-static {v0, v7, v8}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->d:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/k;->g()V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/alipay/mobile/longlink/b/a/h;

    invoke-direct {v7, p0, v5}, Lcom/alipay/mobile/longlink/b/a/h;-><init>(Lcom/alipay/mobile/longlink/b/a/e;Lcom/alipay/mobile/longlink/b/c/a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, p2

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x2

    :try_start_2
    sget-object v5, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    const-string/jumbo v6, "handleRecvMsg() got error packet!"

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/longlink/b/a/e;)Lcom/alipay/mobile/longlink/b/a/k;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->d:Lcom/alipay/mobile/longlink/b/a/k;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/longlink/b/a/e;Ljava/lang/Thread;)V
    .locals 8

    const/4 v1, 0x0

    const/16 v0, 0x1000

    :try_start_0
    new-array v2, v0, [B

    const/4 v0, 0x4

    sget-object v3, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    const-string/jumbo v4, "parsePackets()..."

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/longlink/b/a/e;->d:Lcom/alipay/mobile/longlink/b/a/k;

    iget-object v3, v3, Lcom/alipay/mobile/longlink/b/a/k;->e:Ljava/io/DataInputStream;

    rsub-int v4, v0, 0x1000

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_2

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reader() count="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and end of stream!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "reader reached the end of stream."

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "-1 : end of stream"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobile/longlink/b/a/n;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/longlink/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "53"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/longlink/b/a/n;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/longlink/b/a/e;->a(Lcom/alipay/mobile/longlink/b/a/n;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x4

    sget-object v5, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "reader() count="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    add-int/2addr v0, v3

    if-lez v0, :cond_4

    const/16 v3, 0x2000

    if-le v3, v0, :cond_4

    new-array v3, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/longlink/b/a/e;->a([BI)I

    move-result v4

    if-ge v4, v0, :cond_3

    const/4 v5, 0x0

    sub-int v6, v0, v4

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    :goto_1
    iget-boolean v3, p0, Lcom/alipay/mobile/longlink/b/a/e;->e:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/longlink/b/a/e;->b:Ljava/lang/Thread;

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/alipay/mobile/longlink/b/a/e;->e:Z

    if-nez v1, :cond_1

    const/4 v1, 0x2

    sget-object v2, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parsePackets() encounter Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reader parsePackets encounter Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "exception : reader"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobile/longlink/b/a/n;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/longlink/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "54"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/longlink/b/a/n;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/longlink/b/a/e;->a(Lcom/alipay/mobile/longlink/b/a/n;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->e:Z

    new-instance v0, Lcom/alipay/mobile/longlink/b/a/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/b/a/f;-><init>(Lcom/alipay/mobile/longlink/b/a/e;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->b:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Packet Reader ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/longlink/b/a/e;->d:Lcom/alipay/mobile/longlink/b/a/k;

    iget v2, v2, Lcom/alipay/mobile/longlink/b/a/k;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->b:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance v0, Lcom/alipay/mobile/longlink/b/a/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/b/a/g;-><init>(Lcom/alipay/mobile/longlink/b/a/e;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method final a(Lcom/alipay/mobile/longlink/b/a/n;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/b/a/n;->printStackTrace()V

    :cond_0
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "notifyConnectionError()...Exception!"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->d:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/k;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/longlink/b/b/c;

    :try_start_0
    invoke-interface {v0, p1}, Lcom/alipay/mobile/longlink/b/b/c;->a(Lcom/alipay/mobile/longlink/b/a/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->f:Ljava/util/concurrent/Semaphore;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->f:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->d:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/k;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/longlink/b/b/c;

    :try_start_0
    invoke-interface {v0}, Lcom/alipay/mobile/longlink/b/b/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->e:Z

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "shutdown()...listenerExecutor.shutdown!"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final d()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/e;->d:Lcom/alipay/mobile/longlink/b/a/k;

    iget-object v0, v0, Lcom/alipay/mobile/longlink/b/a/k;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
