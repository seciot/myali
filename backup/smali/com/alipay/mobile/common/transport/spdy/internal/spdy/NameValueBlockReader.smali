.class Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/DataInputStream;

.field private final b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;

.field private c:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$1;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;Ljava/io/InputStream;)V

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$2;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;)V

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->a:Ljava/io/DataInputStream;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->a:Ljava/io/DataInputStream;

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->readFully(Ljava/io/InputStream;[B)V

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->c:I

    return v0
.end method

.method static synthetic access$020(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;I)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->c:I

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .locals 6

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->c:I

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numberOfPairs < 0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/16 v0, 0x400

    if-le v1, v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numberOfPairs > 1024: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "name.length == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->c:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;->fill()V

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->c:I

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "compressedLimit > 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-object v2
.end method
