.class public Lcom/alipay/mobile/longlink/a/c;
.super Lcom/alipay/mobile/longlink/a/b;


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/a/c;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/longlink/a/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private b()[Ljava/lang/String;
    .locals 9

    const/4 v7, 0x3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/longlink/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/longlink/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMsgList() perMsgName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x4

    sget-object v4, Lcom/alipay/mobile/longlink/a/c;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getMsgList() listMsgId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v2}, Lcom/alipay/mobile/longlink/c/b;->a(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/alipay/mobile/longlink/a/c;->b:Ljava/lang/String;

    const-string/jumbo v2, "getMsgList() perMsgName isn\'t find!"

    invoke-static {v7, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/longlink/a/c;->b()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    array-length v3, v0

    const/16 v4, 0x32

    if-lt v3, v4, :cond_0

    aput-object p1, v0, v1

    :goto_0
    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/mobile/longlink/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updatePerMsgList() perMsgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", newPubList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez v0, :cond_5

    new-array v0, v1, [Ljava/lang/String;

    move-object v4, v0

    :goto_1
    if-nez p1, :cond_4

    move v0, v1

    :goto_2
    array-length v5, v4

    add-int v3, v5, v0

    new-array v3, v3, [Ljava/lang/String;

    :goto_3
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    if-ne v0, v2, :cond_2

    aput-object p1, v3, v5

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move-object v4, v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/alipay/mobile/longlink/a/a;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/mobile/longlink/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isContainMsg() newPerMsgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/longlink/a/c;->b()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/longlink/c/b;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final b(Lcom/alipay/mobile/longlink/a/a;)V
    .locals 6

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/a/a;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/longlink/a/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveMsgRecord() perMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/longlink/a/c;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobile/longlink/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveMsgRecord() listMsgId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/longlink/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/alipay/mobile/longlink/a/c;->b:Ljava/lang/String;

    const-string/jumbo v1, "saveMsgRecord() encounter exception!"

    invoke-static {v5, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/mobile/longlink/a/c;->b:Ljava/lang/String;

    const-string/jumbo v2, "saveMsgRecord() perMsgId is invalid!"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
