.class public Lcom/ut/device/d;
.super Ljava/lang/Object;


# static fields
.field private static final U:Ljava/lang/Object;

.field private static V:Lcom/ut/device/d;


# instance fields
.field private T:Lcom/ut/b/c;

.field private W:Ljava/lang/String;

.field private X:Lcom/ut/device/e;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ut/device/d;->U:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/ut/device/d;->V:Lcom/ut/device/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ut/device/d;->T:Lcom/ut/b/c;

    iput-object v0, p0, Lcom/ut/device/d;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/ut/device/d;->W:Ljava/lang/String;

    iput-object v0, p0, Lcom/ut/device/d;->X:Lcom/ut/device/e;

    const-string/jumbo v0, "xx_utdid_key"

    iput-object v0, p0, Lcom/ut/device/d;->Y:Ljava/lang/String;

    const-string/jumbo v0, "xx_utdid_domain"

    iput-object v0, p0, Lcom/ut/device/d;->Z:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/ut/device/d;->aa:Z

    iput-object p1, p0, Lcom/ut/device/d;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/ut/b/c;

    const-string/jumbo v2, ".DataStorage"

    const-string/jumbo v3, "ContextData"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ut/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ut/device/d;->T:Lcom/ut/b/c;

    new-instance v0, Lcom/ut/device/e;

    invoke-direct {v0}, Lcom/ut/device/e;-><init>()V

    iput-object v0, p0, Lcom/ut/device/d;->X:Lcom/ut/device/e;

    const-string/jumbo v0, "K_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ut/device/d;->Y:Ljava/lang/String;

    invoke-static {v2}, Lcom/ut/c/g;->s(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/device/d;->Y:Ljava/lang/String;

    const-string/jumbo v0, "D_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ut/device/d;->Z:Ljava/lang/String;

    invoke-static {v2}, Lcom/ut/c/g;->s(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/device/d;->Z:Ljava/lang/String;

    return-void
.end method

.method public static f(Landroid/content/Context;)Lcom/ut/device/d;
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/ut/device/d;->V:Lcom/ut/device/d;

    if-nez v0, :cond_1

    sget-object v1, Lcom/ut/device/d;->U:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ut/device/d;->V:Lcom/ut/device/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ut/device/d;

    invoke-direct {v0, p0}, Lcom/ut/device/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ut/device/d;->V:Lcom/ut/device/d;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ut/device/d;->V:Lcom/ut/device/d;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static f([B)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

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

.method private k()V
    .locals 3

    invoke-direct {p0}, Lcom/ut/device/d;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ut/device/d;->T:Lcom/ut/b/c;

    iget-object v2, p0, Lcom/ut/device/d;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ut/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/ut/device/d;->v(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/ut/device/d;->u(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/ut/c/h;->A()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ut/device/d;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "getPrimaryClip"

    invoke-static {v0, v1}, Lcom/ut/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "getItemCount"

    invoke-static {v0, v1}, Lcom/ut/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/c/e;->getInt(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string/jumbo v1, "getItemAt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ut/c/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "getIntent"

    invoke-static {v0, v1}, Lcom/ut/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ut/device/d;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ut/device/d;->X:Lcom/ut/device/e;

    invoke-virtual {v1, v0}, Lcom/ut/device/e;->x(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final m()[B
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

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_0
    iget-object v0, p0, Lcom/ut/device/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ut/c/d;->h(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/ut/c/g;->s(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ut/c/b;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ut/device/d;->f([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ut/c/g;->s(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ut/c/b;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

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

    goto :goto_0
.end method

.method private u(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/ut/c/h;->A()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ut/device/d;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v0, "android.content.ClipData"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/ut/device/d;->Y:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ut/device/d;->Z:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string/jumbo v1, "newIntent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lcom/ut/c/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-string/jumbo v3, "setPrimaryClip"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v1, v4}, Lcom/ut/c/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private v(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ut/device/d;->T:Lcom/ut/b/c;

    iget-object v1, p0, Lcom/ut/device/d;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ut/b/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ut/device/d;->T:Lcom/ut/b/c;

    const-string/jumbo v1, "v"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/ut/b/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ut/device/d;->T:Lcom/ut/b/c;

    invoke-virtual {v0}, Lcom/ut/b/c;->commit()Z

    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ut/device/d;->u(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ut/device/d;->v(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/device/d;->W:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/device/d;->W:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ut/device/d;->T:Lcom/ut/b/c;

    iget-object v1, p0, Lcom/ut/device/d;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ut/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/ut/device/d;->aa:Z

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/ut/device/d;->k()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ut/device/d;->aa:Z

    :cond_2
    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/ut/device/d;->T:Lcom/ut/b/c;

    iget-object v1, p0, Lcom/ut/device/d;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ut/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ut/device/d;->X:Lcom/ut/device/e;

    invoke-virtual {v1, v0}, Lcom/ut/device/e;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/device/d;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/ut/device/d;->W:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/ut/device/d;->m()[B

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/ut/device/d;->X:Lcom/ut/device/e;

    invoke-virtual {v1, v0}, Lcom/ut/device/e;->g([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/ut/device/d;->w(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ut/a/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/device/d;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/ut/device/d;->W:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/ut/device/e;->n()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/ut/device/d;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ut/device/d;->T:Lcom/ut/b/c;

    iget-object v2, p0, Lcom/ut/device/d;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ut/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/ut/device/d;->v(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/ut/device/d;->u(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
