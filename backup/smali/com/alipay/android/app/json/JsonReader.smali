.class public final Lcom/alipay/android/app/json/JsonReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lcom/alipay/android/app/util/StringPool;

.field private final b:Ljava/io/Reader;

.field private c:Z

.field private final d:[C

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Ljava/util/List;

.field private j:Lcom/alipay/android/app/json/JsonToken;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/util/StringPool;

    invoke-direct {v0}, Lcom/alipay/android/app/util/StringPool;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->a:Lcom/alipay/android/app/util/StringPool;

    iput-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->c:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iput v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iput v1, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->g:I

    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    sget-object v0, Lcom/alipay/android/app/json/b;->f:Lcom/alipay/android/app/json/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/b;)V

    iput-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/json/JsonReader;->b:Ljava/io/Reader;

    return-void
.end method

.method private a(Z)Lcom/alipay/android/app/json/JsonToken;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/alipay/android/app/json/b;->b:Lcom/alipay/android/app/json/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->b(Lcom/alipay/android/app/json/b;)V

    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->m()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->j()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->m()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    const-string/jumbo v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->i()Lcom/alipay/android/app/json/b;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->b:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->n()V

    goto :goto_0

    :sswitch_3
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->i()Lcom/alipay/android/app/json/b;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->b:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_1

    :cond_1
    :sswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->n()V

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->i:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    new-instance v0, Lcom/alipay/android/app/json/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(C)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    :goto_0
    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-ge v2, v3, :cond_7

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v2, v2, v3

    if-ne v2, p1, :cond_3

    iget-boolean v2, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    if-eqz v2, :cond_1

    const-string/jumbo v0, "skipped!"

    :goto_1
    return-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->a:Lcom/alipay/android/app/util/StringPool;

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/app/util/StringPool;->a([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_9

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_4
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v5}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_3
    move v7, v0

    move-object v0, v1

    move v1, v7

    goto :goto_0

    :sswitch_0
    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-le v1, v2, :cond_6

    invoke-direct {p0, v6}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->a:Lcom/alipay/android/app/util/StringPool;

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v1, v2, v3, v6}, Lcom/alipay/android/app/util/StringPool;->a([CII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    goto :goto_2

    :sswitch_1
    const/16 v1, 0x9

    goto :goto_2

    :sswitch_2
    const/16 v1, 0x8

    goto :goto_2

    :sswitch_3
    const/16 v1, 0xa

    goto :goto_2

    :sswitch_4
    const/16 v1, 0xd

    goto :goto_2

    :sswitch_5
    const/16 v1, 0xc

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_8
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcom/alipay/android/app/json/JsonToken;)V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()Lcom/alipay/android/app/json/JsonToken;

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->h()Lcom/alipay/android/app/json/JsonToken;

    return-void
.end method

.method private a(Lcom/alipay/android/app/json/b;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    aget-char v3, v3, v0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alipay/android/app/json/JsonReader;->g:I

    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    invoke-static {v0, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iput v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->b:Ljava/io/Reader;

    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iget-object v5, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    array-length v5, v5

    iget v6, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->g:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    aget-char v0, v0, v1

    const v3, 0xfeff

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    :cond_3
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-lt v0, p1, :cond_2

    move v1, v2

    :cond_4
    return v1

    :cond_5
    iput v1, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    goto :goto_2
.end method

.method private b(Z)Lcom/alipay/android/app/json/JsonToken;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->m()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    :sswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->m()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->n()V

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->c(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->i()Lcom/alipay/android/app/json/b;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->d:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->m()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    const-string/jumbo v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->i()Lcom/alipay/android/app/json/b;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->d:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->n()V

    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->k:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/alipay/android/app/json/b;->d:Lcom/alipay/android/app/json/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->b(Lcom/alipay/android/app/json/b;)V

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->e:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Lcom/alipay/android/app/json/b;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Z)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    move v1, v2

    move-object v0, v3

    :cond_0
    :goto_0
    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->n()V

    :goto_1
    :sswitch_1
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    :goto_2
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    array-length v4, v4

    if-ge v1, v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    aput-char v2, v4, v5

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3
    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v0, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    if-eqz v2, :cond_5

    const-string/jumbo v3, "skipped!"

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->a:Lcom/alipay/android/app/util/StringPool;

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/alipay/android/app/util/StringPool;->a([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    move v1, v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private g()Lcom/alipay/android/app/json/JsonToken;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/alipay/android/app/json/a;->a:[I

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/alipay/android/app/json/b;->g:Lcom/alipay/android/app/json/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->b(Lcom/alipay/android/app/json/b;)V

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->j()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v2, Lcom/alipay/android/app/json/JsonToken;->a:Lcom/alipay/android/app/json/JsonToken;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v2, Lcom/alipay/android/app/json/JsonToken;->c:Lcom/alipay/android/app/json/JsonToken;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/alipay/android/app/json/JsonReader;->a(Z)Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v4}, Lcom/alipay/android/app/json/JsonReader;->a(Z)Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v3}, Lcom/alipay/android/app/json/JsonReader;->b(Z)Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->m()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    const-string/jumbo v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_6
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->n()V

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0, v3}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    :cond_3
    :pswitch_7
    sget-object v0, Lcom/alipay/android/app/json/b;->e:Lcom/alipay/android/app/json/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->b(Lcom/alipay/android/app/json/b;)V

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->j()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, v4}, Lcom/alipay/android/app/json/JsonReader;->b(Z)Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->j()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->c:Z

    if-nez v1, :cond_0

    const-string/jumbo v0, "Expected EOF"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->j:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private h()Lcom/alipay/android/app/json/JsonToken;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()Lcom/alipay/android/app/json/JsonToken;

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    iput-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    iput-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->k:Ljava/lang/String;

    return-object v0
.end method

.method private i()Lcom/alipay/android/app/json/b;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/b;

    return-object v0
.end method

.method private j()Lcom/alipay/android/app/json/JsonToken;
    .locals 11

    const/16 v9, 0x65

    const/16 v3, 0x4c

    const/16 v8, 0x45

    const/16 v7, 0x39

    const/16 v6, 0x30

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->m()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->c(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_0
    sget-object v0, Lcom/alipay/android/app/json/b;->c:Lcom/alipay/android/app/json/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/b;)V

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->c:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    :goto_0
    return-object v0

    :sswitch_1
    sget-object v0, Lcom/alipay/android/app/json/b;->a:Lcom/alipay/android/app/json/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/b;)V

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->a:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->n()V

    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->f:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_1

    const/16 v0, 0x4e

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6

    :cond_1
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_2

    const/16 v0, 0x55

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6

    :cond_2
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6

    :cond_3
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6

    :cond_4
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->i:Lcom/alipay/android/app/json/JsonToken;

    :goto_1
    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->f:Lcom/alipay/android/app/json/JsonToken;

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->n()V

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/16 v0, 0x74

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_7

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_7
    const/16 v0, 0x72

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_8

    const/16 v0, 0x52

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_8
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_9

    const/16 v0, 0x55

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v9, v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v8, v0, :cond_b

    :cond_a
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->h:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_1

    :cond_b
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    const/16 v0, 0x66

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_c

    const/16 v0, 0x46

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_c
    const/16 v0, 0x61

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_d

    const/16 v0, 0x41

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_d
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_11

    :cond_e
    const/16 v0, 0x73

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_f

    const/16 v0, 0x53

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_f
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-eq v9, v0, :cond_10

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v8, v0, :cond_11

    :cond_10
    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->h:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->a:Lcom/alipay/android/app/util/StringPool;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/util/StringPool;->a([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    aget-char v0, v3, v2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1c

    add-int/lit8 v1, v2, 0x1

    aget-char v0, v3, v1

    :goto_2
    if-ne v0, v6, :cond_13

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :cond_12
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_15

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :goto_3
    if-lt v0, v6, :cond_15

    if-gt v0, v7, :cond_15

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    goto :goto_3

    :cond_13
    const/16 v5, 0x31

    if-lt v0, v5, :cond_14

    if-gt v0, v7, :cond_14

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :goto_4
    if-lt v0, v6, :cond_12

    if-gt v0, v7, :cond_12

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    goto :goto_4

    :cond_14
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->f:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_1

    :cond_15
    move v10, v0

    move v0, v1

    move v1, v10

    if-eq v1, v9, :cond_16

    if-ne v1, v8, :cond_1a

    :cond_16
    add-int/lit8 v1, v0, 0x1

    aget-char v0, v3, v1

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_17

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_18

    :cond_17
    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :cond_18
    if-lt v0, v6, :cond_19

    if-gt v0, v7, :cond_19

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_5
    if-lt v1, v6, :cond_1a

    if-gt v1, v7, :cond_1a

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v3, v1

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_5

    :cond_19
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->f:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_1

    :cond_1a
    add-int v1, v2, v4

    if-ne v0, v1, :cond_1b

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->g:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_1

    :cond_1b
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->f:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_1

    :cond_1c
    move v1, v2

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private k()I
    .locals 4

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->g:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private l()I
    .locals 4

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method private m()I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    :sswitch_0
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-lt v0, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v0, v0, v3

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    return v0

    :sswitch_1
    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v2}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->n()V

    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    const-string/jumbo v3, "*/"

    :goto_2
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-le v0, v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_4
    if-nez v0, :cond_7

    const-string/jumbo v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    goto/16 :goto_0

    :sswitch_3
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->o()V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->n()V

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->o()V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private n()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/json/JsonReader;->c:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->c:Lcom/alipay/android/app/json/JsonToken;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/JsonToken;)V

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->d:Lcom/alipay/android/app/json/JsonToken;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/JsonToken;)V

    return-void
.end method

.method public final c()Z
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()Lcom/alipay/android/app/json/JsonToken;

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->d:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->b:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    sget-object v1, Lcom/alipay/android/app/json/b;->h:Lcom/alipay/android/app/json/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()Lcom/alipay/android/app/json/JsonToken;

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->e:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->h()Lcom/alipay/android/app/json/JsonToken;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()Lcom/alipay/android/app/json/JsonToken;

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->f:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->g:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->h()Lcom/alipay/android/app/json/JsonToken;

    return-object v0
.end method

.method public final f()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    move v0, v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->h()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/json/JsonToken;->a:Lcom/alipay/android/app/json/JsonToken;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/alipay/android/app/json/JsonToken;->c:Lcom/alipay/android/app/json/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    return-void

    :cond_3
    :try_start_1
    sget-object v3, Lcom/alipay/android/app/json/JsonToken;->b:Lcom/alipay/android/app/json/JsonToken;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/alipay/android/app/json/JsonToken;->d:Lcom/alipay/android/app/json/JsonToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
