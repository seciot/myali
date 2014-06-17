.class public Lcom/ut/device/b;
.super Ljava/lang/Object;


# static fields
.field static R:Ljava/lang/String;

.field static final S:Ljava/lang/Object;

.field private static u:Lcom/ut/device/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ut/device/b;->u:Lcom/ut/device/a;

    const-string/jumbo v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    sput-object v0, Lcom/ut/device/b;->R:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ut/device/b;->S:Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/ut/device/a;)J
    .locals 5

    if-eqz p0, :cond_0

    const-string/jumbo v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ut/device/a;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ut/device/a;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/ut/device/a;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/ut/device/a;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/ut/device/a;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Lcom/ut/device/a;
    .locals 6

    new-instance v0, Lcom/ut/device/a;

    invoke-direct {v0}, Lcom/ut/device/a;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Lcom/ut/c/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/ut/c/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/ut/device/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/ut/device/a;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ut/device/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ut/device/a;->b(J)V

    invoke-virtual {v0, v4}, Lcom/ut/device/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/ut/device/a;->r(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ut/device/b;->a(Lcom/ut/device/a;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ut/device/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Lcom/ut/device/a;Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ut/device/a;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/ut/device/b;->b(Landroid/content/Context;)Lcom/ut/device/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/ut/device/b;->b(Lcom/ut/device/a;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static b(Landroid/content/Context;)Lcom/ut/device/a;
    .locals 9

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/ut/device/c;->e(Landroid/content/Context;)Lcom/ut/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "EI"

    invoke-virtual {v0, v1}, Lcom/ut/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SI"

    invoke-virtual {v0, v2}, Lcom/ut/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTDID"

    invoke-virtual {v0, v3}, Lcom/ut/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DID"

    invoke-virtual {v0, v4}, Lcom/ut/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "timestamp"

    invoke-virtual {v0, v5}, Lcom/ut/b/c;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string/jumbo v7, "S"

    invoke-virtual {v0, v7}, Lcom/ut/b/c;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ut/device/a;

    invoke-direct {v0}, Lcom/ut/device/a;-><init>()V

    invoke-virtual {v0, v4}, Lcom/ut/device/a;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ut/device/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ut/device/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ut/device/a;->r(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/ut/device/a;->b(J)V

    invoke-virtual {v0, v7, v8}, Lcom/ut/device/a;->a(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/ut/device/a;Landroid/content/Context;)V
    .locals 5

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/ut/device/c;->e(Landroid/content/Context;)Lcom/ut/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ut/device/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/ut/device/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/ut/device/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/ut/device/a;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/ut/b/c;->clear()V

    const-string/jumbo v1, "EI"

    invoke-virtual {p0}, Lcom/ut/device/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ut/b/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SI"

    invoke-virtual {p0}, Lcom/ut/device/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ut/b/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "UTDID"

    invoke-virtual {p0}, Lcom/ut/device/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ut/b/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DID"

    invoke-virtual {p0}, Lcom/ut/device/a;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ut/b/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "S"

    invoke-static {p0}, Lcom/ut/device/b;->a(Lcom/ut/device/a;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ut/b/c;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/ut/device/a;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string/jumbo v1, "timestamp"

    invoke-virtual {p0}, Lcom/ut/device/a;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ut/b/c;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {v0}, Lcom/ut/b/c;->commit()Z

    :cond_1
    return-void
.end method

.method private static c(Landroid/content/Context;)Lcom/ut/device/a;
    .locals 7

    if-eqz p0, :cond_6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    invoke-static {p0}, Lcom/ut/device/b;->b(Landroid/content/Context;)Lcom/ut/device/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ut/device/a;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ut/device/a;->d()J

    move-result-wide v1

    invoke-static {v0}, Lcom/ut/device/b;->a(Lcom/ut/device/a;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/ut/device/d;->f(Landroid/content/Context;)Lcom/ut/device/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/device/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/device/d;->t(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/ut/device/BFoundIt;->c()Lcom/ut/device/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ut/device/BFoundIt;->c()Lcom/ut/device/a;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ut/device/b;->b(Lcom/ut/device/a;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "src"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "UT.QueryWhoHasOne"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.ut.permission.DEVICE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0}, Lcom/ut/device/BFoundIt;->a(Ljava/util/concurrent/CountDownLatch;)V

    const-wide/16 v1, 0xbb8

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/ut/device/BFoundIt;->c()Lcom/ut/device/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ut/device/BFoundIt;->c()Lcom/ut/device/a;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ut/device/b;->b(Lcom/ut/device/a;Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/ut/device/b;->S:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-static {p0}, Lcom/ut/device/d;->f(Landroid/content/Context;)Lcom/ut/device/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/device/d;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/ut/device/a;

    invoke-direct {v0}, Lcom/ut/device/a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0}, Lcom/ut/c/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/ut/c/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5}, Lcom/ut/device/a;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/ut/device/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/ut/device/a;->b(J)V

    invoke-virtual {v0, v6}, Lcom/ut/device/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ut/device/a;->r(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ut/device/b;->a(Lcom/ut/device/a;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ut/device/a;->a(J)V

    invoke-static {v0, p0}, Lcom/ut/device/b;->b(Lcom/ut/device/a;Landroid/content/Context;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_2
    invoke-static {p0}, Lcom/ut/device/b;->a(Landroid/content/Context;)Lcom/ut/device/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, p0}, Lcom/ut/device/b;->b(Lcom/ut/device/a;Landroid/content/Context;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_5
    monitor-exit v1

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v0}, Lcom/ut/c/b;->getBytes(I)[B

    move-result-object v0

    invoke-static {v2}, Lcom/ut/c/b;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1, v2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0}, Lcom/ut/c/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/ut/device/b;->s(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ut/c/b;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ut/device/b;->f([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ut/device/b;->s(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ut/c/b;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ut/a/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f([B)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/ut/device/b;->R:Ljava/lang/String;

    const-string/jumbo v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ut/a/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDevice(Landroid/content/Context;)Lcom/ut/device/a;
    .locals 7

    const/4 v2, 0x0

    const-class v5, Lcom/ut/device/b;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/ut/device/b;->u:Lcom/ut/device/a;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ut/device/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ut/device/b;->b(Landroid/content/Context;)Lcom/ut/device/a;

    :cond_0
    sget-object v0, Lcom/ut/device/b;->u:Lcom/ut/device/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v5

    return-object v0

    :cond_1
    if-eqz p0, :cond_b

    :try_start_1
    invoke-static {p0}, Lcom/ut/device/b;->c(Landroid/content/Context;)Lcom/ut/device/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_6

    :try_start_2
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->o(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ut/device/a;->n(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->m(Ljava/lang/String;)V

    const-string/jumbo v1, "Android"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/ut/device/b;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "aliyunos"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->p(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->q(Ljava/lang/String;)V

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v4, :cond_9

    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ut/device/a;->g(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ut/device/a;->h(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v6, 0x36ee80

    div-int/2addr v1, v6

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->i(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    :try_start_5
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->b(I)V

    invoke-virtual {v3, v4}, Lcom/ut/device/a;->c(I)V

    if-le v1, v4, :cond_4

    xor-int/2addr v1, v4

    xor-int/2addr v4, v1

    xor-int/2addr v1, v4

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->j(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    :try_start_6
    invoke-static {p0}, Lcom/ut/c/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/ut/device/a;->k(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const-string/jumbo v6, "2G/3G"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->l(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, ""

    :cond_5
    invoke-virtual {v3, v0}, Lcom/ut/device/a;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/ut/c/h;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ut/device/a;->c(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    :try_start_8
    sput-object v3, Lcom/ut/device/b;->u:Lcom/ut/device/a;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_9
    const-string/jumbo v1, "Unknown"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->o(Ljava/lang/String;)V

    const-string/jumbo v1, "Unknown"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->n(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "8"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->i(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_8
    :try_start_a
    const-string/jumbo v1, "8"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->i(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v1, "Unknown"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->g(Ljava/lang/String;)V

    const-string/jumbo v1, "Unknown"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->h(Ljava/lang/String;)V

    const-string/jumbo v1, "8"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->i(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    const-string/jumbo v1, "Unknown"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->j(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    :cond_a
    :try_start_b
    const-string/jumbo v1, "Unknown"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->l(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    :catch_3
    move-exception v1

    :try_start_c
    const-string/jumbo v1, "Unknown"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->k(Ljava/lang/String;)V

    const-string/jumbo v1, "Unknown"

    invoke-virtual {v3, v1}, Lcom/ut/device/a;->l(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_4

    :cond_b
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private static i()Z
    .locals 2

    const-string/jumbo v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lemur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ro.yunos.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static s(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    aget-char v3, v2, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method
