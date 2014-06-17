.class public final Lcom/taobao/android/ssologin/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/taobao/android/ssologin/b;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/taobao/android/ssologin/b;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/taobao/android/ssologin/a;->c:I

    iput-boolean v0, p0, Lcom/taobao/android/ssologin/a;->d:Z

    iput-object p1, p0, Lcom/taobao/android/ssologin/a;->a:Lcom/taobao/android/ssologin/b;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ssologin/a;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Landroid/accounts/Account;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/taobao/android/ssologin/a;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;[Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/android/ssologin/a;->d:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/taobao/android/sso/internal/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Lcom/taobao/android/sso/internal/d;->b:[Ljava/lang/String;

    array-length v1, v4

    new-array v5, v1, [Landroid/content/pm/Signature;

    array-length v6, v4

    move v1, v0

    :goto_1
    if-lt v0, v6, :cond_1

    iget-object v0, p0, Lcom/taobao/android/ssologin/a;->b:Landroid/content/Context;

    invoke-static {v0, v5, v2, v3}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;[Landroid/content/pm/Signature;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ssologin/a;->d:Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    aget-object v7, v4, v0

    new-instance v8, Landroid/content/pm/Signature;

    invoke-direct {v8, v7}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v1
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private c()Landroid/accounts/Account;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/android/ssologin/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v4, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    aget-object v0, v3, v2

    const-string/jumbo v5, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/taobao/android/ssologin/c;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;

    invoke-direct {v0}, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/ssologin/a;->b()V

    invoke-direct {p0}, Lcom/taobao/android/ssologin/a;->c()Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologin/a;->b:Landroid/content/Context;

    const-string/jumbo v3, "alibaba:ssotoken"

    invoke-static {v0, v2, v3}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v1, "sso service has err account- empty ssotoken"

    invoke-direct {v0, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/taobao/android/ssologin/a;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/taobao/android/ssologin/a;->a:Lcom/taobao/android/ssologin/b;

    invoke-interface {v3, v0, v2}, Lcom/taobao/android/ssologin/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/ssologin/c;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;

    invoke-direct {v0}, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;-><init>()V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/taobao/android/ssologin/a;->b()V

    invoke-direct {p0}, Lcom/taobao/android/ssologin/a;->c()Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/android/ssologin/a;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/ssologin/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Landroid/accounts/Account;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v0, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;

    invoke-direct {v0}, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;-><init>()V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/taobao/android/ssologin/a;->b()V

    invoke-direct {p0}, Lcom/taobao/android/ssologin/a;->c()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/ssologin/a;->b:Landroid/content/Context;

    const-string/jumbo v2, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    const-string/jumbo v3, "alibaba:ssotoken"

    invoke-static {v1, p2, v2, v3, p1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/taobao/android/ssologin/a;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/taobao/android/ssologin/a;->b:Landroid/content/Context;

    const-string/jumbo v3, "alibaba:ssotoken"

    invoke-static {v2, v1, v3, p1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/taobao/android/ssologin/a;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/android/ssologin/a;->b:Landroid/content/Context;

    const-string/jumbo v2, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    const-string/jumbo v3, "alibaba:ssotoken"

    invoke-static {v1, p2, v2, v3, p1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
