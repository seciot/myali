.class public final Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final WINDOW_UPDATE_THRESHOLD:I = 0x8000


# instance fields
.field private final a:I

.field private final b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

.field private final c:I

.field private d:J

.field private e:I

.field private final f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private final h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

.field private final i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

.field private j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;ZZILjava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->d:J

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p6, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a:I

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->e:Z
    invoke-static {v0, p4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$202(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->d:Z
    invoke-static {v0, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$302(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;Z)Z

    iput p5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->c:I

    iput-object p6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->f:Ljava/util/List;

    invoke-direct {p0, p7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V
    .locals 2

    const/high16 v0, 0x1

    sget-boolean v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->e:I

    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    if-eqz v1, :cond_1

    monitor-exit p0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->e:Z
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$200(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->d:Z
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;)V
    .locals 2

    sget-boolean v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->e:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$200(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->d:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$400(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->d:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->c:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$500(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->isOpen()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->CANCEL:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->close(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    goto :goto_1
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->e:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a:I

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->d:J

    return-wide v0
.end method


# virtual methods
.method public final close(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->writeSynReset(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public final closeLater(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public final getConnection()Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method public final declared-synchronized getErrorCode()Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply before requesting the output stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    return-object v0
.end method

.method final getPriority()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->c:I

    return v0
.end method

.method public final getReadTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->d:J

    return-wide v0
.end method

.method public final getRequestHeaders()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->f:Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public final isLocallyInitiated()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget-boolean v3, v3, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->client:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final declared-synchronized isOpen()Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->e:Z
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$200(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->d:Z
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$400(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->d:Z
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->c:Z
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$500(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final receiveData(Ljava/io/InputStream;I)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->receive(Ljava/io/InputStream;I)V

    return-void
.end method

.method final receiveFin()V
    .locals 2

    sget-boolean v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->h:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->e:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$202(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;Z)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->isOpen()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final receiveHeaders(Ljava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;)V
    .locals 4

    sget-boolean v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->failIfHeadersAbsent()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->closeLater(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->isOpen()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->failIfHeadersPresent()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    goto :goto_1
.end method

.method final declared-synchronized receiveRstStream(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->j:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final receiveSettings(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method final declared-synchronized receiveWindowUpdate(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$620(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;I)I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final reply(Ljava/util/List;Z)V
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "responseHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot reply to a locally initiated stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply already sent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->g:Ljava/util/List;

    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    const/4 v2, 0x1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->d:Z
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$302(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;Z)Z

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->a:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->writeSynReply(IZLjava/util/List;)V

    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final setReadTimeout(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->d:J

    return-void
.end method
