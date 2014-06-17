.class public Lcom/alipay/mobile/logmonitor/model/LogFileModel;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->a:J

    iput-wide v4, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->c:Ljava/io/File;

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->a:J

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->c:Ljava/io/File;

    invoke-virtual {p0}, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "op file error."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->a:J

    cmp-long v2, v6, v8

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->c:Ljava/io/File;

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/LogMonitorUtil;->readFileToString(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v7, v0

    add-long v0, v1, v7

    :goto_1
    move-wide v1, v0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_2
    return v0

    :cond_1
    :goto_3
    iget-wide v6, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->a:J

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3

    div-long/2addr v6, v8

    cmp-long v0, v1, v6

    if-lez v0, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v6, v0

    sub-long/2addr v1, v6

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->c:Ljava/io/File;

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_6
    move v0, v4

    goto :goto_2

    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_7
    move v0, v3

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_8
    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_9
    throw v0

    :cond_7
    move v0, v3

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_5

    :cond_8
    move-wide v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/io/BufferedWriter;)Z
    .locals 4

    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->b:J

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->b:J

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
