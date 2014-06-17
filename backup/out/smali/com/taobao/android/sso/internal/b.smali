.class public final Lcom/taobao/android/sso/internal/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, ".sso.whitelist"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/android/sso/internal/b;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/taobao/android/sso/internal/b;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "whitelist"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-array v0, v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/taobao/android/sso/internal/b;->b:[Landroid/content/pm/Signature;

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Landroid/content/pm/Signature;

    iput-object v2, p0, Lcom/taobao/android/sso/internal/b;->b:[Landroid/content/pm/Signature;

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/sso/internal/b;->b:[Landroid/content/pm/Signature;

    new-instance v3, Landroid/content/pm/Signature;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Malformed signature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - (hidden for security)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method final a()J
    .locals 4

    iget-object v0, p0, Lcom/taobao/android/sso/internal/b;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a([Landroid/content/pm/Signature;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/android/sso/internal/b;->b:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/sso/internal/b;->b:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/taobao/android/sso/internal/d;->b:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/taobao/android/sso/internal/b;->b:[Landroid/content/pm/Signature;

    move v0, v1

    :goto_0
    sget-object v2, Lcom/taobao/android/sso/internal/d;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/taobao/android/sso/internal/b;->b:[Landroid/content/pm/Signature;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    array-length v3, p1

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_3

    :goto_2
    return v1

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/sso/internal/b;->b:[Landroid/content/pm/Signature;

    new-instance v3, Landroid/content/pm/Signature;

    sget-object v4, Lcom/taobao/android/sso/internal/d;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Malformed signature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - (hidden for security)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    :cond_3
    aget-object v4, p1, v0

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final a([Landroid/content/pm/Signature;J)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p1

    new-array v2, v2, [Landroid/content/pm/Signature;

    iput-object v2, p0, Lcom/taobao/android/sso/internal/b;->b:[Landroid/content/pm/Signature;

    iget-object v2, p0, Lcom/taobao/android/sso/internal/b;->b:[Landroid/content/pm/Signature;

    array-length v3, p1

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/taobao/android/sso/internal/b;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "timestamp"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p1

    :goto_1
    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/taobao/android/sso/internal/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "timestamp"

    invoke-interface {v0, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "whitelist"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v4, p1, v0

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
