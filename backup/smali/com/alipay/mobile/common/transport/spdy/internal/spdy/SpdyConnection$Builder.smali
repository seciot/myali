.class public Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;

.field private d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;

.field private e:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;->SPDY3:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->e:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->f:Z

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->b:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->c:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 2

    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(ZLjava/net/Socket;)V
    .locals 3

    const-string/jumbo v0, ""

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->e:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->f:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->c:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;)V

    return-object v0
.end method

.method public handler(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;

    return-object p0
.end method

.method public http20Draft06()Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;->HTTP_20_DRAFT_06:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->e:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    return-object p0
.end method

.method public spdy3()Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;->SPDY3:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->e:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    return-object p0
.end method
