.class public final Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern; = null

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final VERSION_1:Ljava/lang/String; = "1"

.field private static final n:Ljava/io/OutputStream;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private f:J

.field private final g:I

.field private h:J

.field private i:Ljava/io/Writer;

.field private final j:Ljava/util/LinkedHashMap;

.field private k:I

.field private l:J

.field private final m:Ljava/util/concurrent/Callable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$2;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->n:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->h:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->l:J

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->m:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a:Ljava/io/File;

    iput p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->e:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->b:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->d:Ljava/io/File;

    iput p3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    iput-wide p4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->f:J

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->e()V

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->e:J
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1200(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_1
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$702(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DIRTY "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private a()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, -0x1

    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_2
    add-int/lit8 v0, v5, 0x1

    const/16 v2, 0x20

    :try_start_3
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    if-ne v5, v2, :cond_9

    const-string/jumbo v2, "REMOVE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    if-nez v0, :cond_5

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v2, v7}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eq v6, v8, :cond_6

    if-ne v5, v9, :cond_6

    const-string/jumbo v2, "CLEAN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->c:Z
    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$602(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Z)Z

    const/4 v4, 0x0

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$702(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$800(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-ne v6, v8, :cond_7

    if-ne v5, v9, :cond_7

    const-string/jumbo v2, "DIRTY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$702(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    goto :goto_1

    :cond_7
    if-ne v6, v8, :cond_8

    const/4 v0, 0x4

    if-ne v5, v0, :cond_8

    const-string/jumbo v0, "READ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_9
    move-object v2, v0

    goto :goto_2
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)V
    .locals 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->access$1400(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    move-result-object v2

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->c:Z
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    :goto_0
    iget v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    if-ge v1, v3, :cond_4

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->b:[Z
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->access$1500(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->abort()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    if-ge v0, v1, :cond_7

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->b:[J
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->b:[J
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    iget-wide v8, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->h:J

    sub-long v3, v8, v4

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->h:J

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/io/File;)V

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I

    const/4 v0, 0x0

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$702(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->c:Z
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->c:Z
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$602(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->a:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->l:J

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->e:J
    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1202(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;J)J

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->h:J

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->m:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->a:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "REMOVE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->a:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->f()V

    return-void
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Ljava/lang/String;J)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/lang/String;J)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    return v0
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/io/OutputStream;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->n:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->c()V

    return-void
.end method

.method static synthetic access$402(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I

    return p1
.end method

.method private b()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iget v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    if-ge v1, v4, :cond_0

    iget-wide v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->h:J

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->b:[J
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->h:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$702(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move v1, v2

    :goto_2
    iget v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    if-ge v1, v4, :cond_2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->d:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->b:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->b:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void
.end method

.method private d()Z
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    :goto_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->h:J

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_0
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a()V

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->b()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->b:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->logW(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->delete()V

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->c()V

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->f()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final delete()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->close()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public final edit(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/lang/String;J)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->e()V

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->f()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->e()V

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move-object v1, v3

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->c:Z
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    new-array v6, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    :goto_1
    :try_start_2
    iget v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    if-ge v1, v5, :cond_3

    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v6, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    move v1, v4

    :goto_2
    :try_start_3
    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    if-ge v1, v2, :cond_2

    aget-object v2, v6, v1

    if-eqz v2, :cond_2

    aget-object v2, v6, v1

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v3

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "READ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->m:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_4
    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->e:J
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1200(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)J

    move-result-wide v4

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->b:[J
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a:Ljava/io/File;

    return-object v0
.end method

.method public final getMaxSize()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->f:J

    return-wide v0
.end method

.method public final isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized remove(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->e()V

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    if-eqz v0, :cond_0

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->h:J

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->b:[J
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->h:J

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->b:[J
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "failed to delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "REMOVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->m:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized setMaxSize(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->f:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->m:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized size()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
