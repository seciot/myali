.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected buf:[C

.field protected count:I

.field private features:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v0, :cond_1

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    :cond_1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Negative initial size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v0, :cond_1

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    :cond_1
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    return-void
.end method

.method static final isSpecial(CI)Z
    .locals 4

    const/16 v3, 0x5c

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x20

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x2f

    if-ne p0, v2, :cond_2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x23

    if-le p0, v2, :cond_3

    if-ne p0, v3, :cond_0

    :cond_3
    const/16 v2, 0x8

    if-eq p0, v2, :cond_4

    const/16 v2, 0xa

    if-eq p0, v2, :cond_4

    const/16 v2, 0xd

    if-eq p0, v2, :cond_4

    const/16 v2, 0xc

    if-eq p0, v2, :cond_4

    if-eq p0, v3, :cond_4

    const/16 v2, 0x22

    if-eq p0, v2, :cond_4

    const/16 v2, 0x9

    if-ne p0, v2, :cond_0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-nez p3, :cond_1

    const/4 v1, 0x4

    add-int/lit8 v3, v2, 0x8

    add-int/2addr v0, v3

    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v3, v4

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, 0x2

    add-int v4, v3, v2

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x22

    aput-char v7, v5, v6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p2, v5, v2, v6, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x22

    aput-char v3, v2, v4

    add-int/lit8 v2, v4, 0x1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x3a

    aput-char v5, v3, v2

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x6e

    aput-char v2, v0, v4

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x6c

    aput-char v3, v0, v2

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int v3, v2, v1

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    const/16 v3, 0x22

    aput-char v3, v2, v4

    add-int v7, v6, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p3, v2, v1, v3, v6}, Ljava/lang/String;->getChars(II[CI)V

    if-eqz p4, :cond_6

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    move v3, v6

    :goto_2
    if-ge v3, v7, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v1, v1, v3

    const/16 v8, 0x5d

    if-ge v1, v8, :cond_b

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v1, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v8

    if-eqz v8, :cond_b

    add-int/lit8 v2, v5, 0x1

    move v4, v2

    move v2, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    move v4, v2

    move v2, v1

    goto :goto_2

    :cond_3
    if-lez v5, :cond_5

    add-int/2addr v0, v5

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_4
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :cond_5
    const/4 v0, 0x1

    if-ne v5, v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v4, 0x2

    sub-int v6, v7, v4

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v4

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    sget-object v3, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    if-le v5, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v4, 0x2

    sub-int v8, v7, v4

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v1, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v4

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v1, v1, v2

    aput-char v1, v0, v3

    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v0, v3, -0x2

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_4
    if-lt v1, v6, :cond_6

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    const/16 v3, 0x8

    if-eq v2, v3, :cond_9

    const/16 v3, 0xa

    if-eq v2, v3, :cond_9

    const/16 v3, 0xd

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc

    if-eq v2, v3, :cond_9

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_9

    const/16 v3, 0x22

    if-eq v2, v3, :cond_9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_a

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_b
    move v1, v2

    move v2, v4

    move v4, v5

    goto/16 :goto_3
.end method

.method private writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 12

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v2

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v4, v2

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v3, v2, v6, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    move v2, v4

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v6, v2

    array-length v7, v5

    if-ge v6, v7, :cond_2

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_2

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v2, 0x3

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-static {v3, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v9, 0x1

    invoke-static {v3, v7, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x22

    aput-char v7, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x5c

    aput-char v7, v3, v2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v7, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v6, v7, v6

    aput-char v6, v3, v2

    add-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, -0x2

    const/16 v7, 0x22

    aput-char v7, v3, v6

    const/4 v3, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v1, v7, :cond_4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_4
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x2

    sub-int v11, v0, v2

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v2

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v8, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v6, v8, v6

    aput-char v6, v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    return-void
.end method

.method private writeKeyWithSingleQuote(Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0x27

    sget-object v3, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v4

    add-int/lit8 v1, v0, 0x3

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v0, 0x1

    add-int v0, v2, v4

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v5, v6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v5, v4, v6, v2}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :goto_0
    if-ge v2, v0, :cond_6

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v4, v4, v2

    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-boolean v5, v3, v4

    if-nez v5, :cond_3

    :cond_1
    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_5

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v1, v5, :cond_4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_4
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x2

    sub-int v9, v0, v2

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v2

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v6, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v4, v6, v4

    aput-char v4, v5, v2

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    aput-char v10, v0, v1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    return-void
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 12

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v2

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v4, v2

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v3, v2, v6, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    move v2, v4

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v6, v2

    array-length v7, v5

    if-ge v6, v7, :cond_2

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_2

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v2, 0x3

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-static {v3, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v9, 0x1

    invoke-static {v3, v7, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x27

    aput-char v7, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x5c

    aput-char v7, v3, v2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v7, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v6, v7, v6

    aput-char v6, v3, v2

    add-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, -0x2

    const/16 v7, 0x27

    aput-char v7, v3, v6

    const/4 v3, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v1, v7, :cond_4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_4
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x2

    sub-int v11, v0, v2

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v2

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v8, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v6, v8, v6

    aput-char v6, v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    return-void
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    return-void
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
    .locals 9

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v2, 0x1

    add-int v7, v6, v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v4, 0x22

    aput-char v4, v2, v3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v2, v1, v3, v6}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, -0x1

    move v2, v6

    :goto_1
    if-ge v2, v7, :cond_9

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v3, v2

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    const/16 v4, 0xc

    if-eq v3, v4, :cond_6

    const/16 v4, 0xa

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd

    if-eq v3, v4, :cond_6

    const/16 v4, 0x9

    if-ne v3, v4, :cond_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_7
    const/16 v4, 0x20

    if-ge v3, v4, :cond_8

    add-int/lit8 v0, v0, 0x5

    move v1, v2

    goto :goto_2

    :cond_8
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_4

    add-int/lit8 v0, v0, 0x5

    move v1, v2

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_a
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move v0, v7

    :goto_3
    if-lt v1, v6, :cond_11

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    const/16 v3, 0x8

    if-eq v2, v3, :cond_b

    const/16 v3, 0xc

    if-eq v2, v3, :cond_b

    const/16 v3, 0xa

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-eq v2, v3, :cond_b

    const/16 v3, 0x9

    if-ne v2, v3, :cond_d

    :cond_b
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_d
    const/16 v3, 0x22

    if-eq v2, v3, :cond_e

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_e

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_f

    :cond_e
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    aput-char v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    const/16 v3, 0x20

    if-ge v2, v3, :cond_10

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x6

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x2

    const/16 v5, 0x30

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x3

    const/16 v5, 0x30

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x4

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    mul-int/lit8 v7, v2, 0x2

    aget-char v5, v5, v7

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x5

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    add-int/lit8 v0, v0, 0x5

    goto :goto_4

    :cond_10
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_c

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x6

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x2

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v5, v5, v7

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x3

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v7, v2, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v5, v5, v7

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x4

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v7, v2, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v5, v5, v7

    aput-char v5, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x5

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_4

    :cond_11
    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_13
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_18

    move v4, v6

    :goto_5
    if-ge v4, v7, :cond_18

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v4

    const/16 v8, 0x5d

    if-ge v2, v8, :cond_21

    const/16 v8, 0x20

    if-eq v2, v8, :cond_21

    const/16 v8, 0x30

    if-lt v2, v8, :cond_14

    const/16 v8, 0x5c

    if-ne v2, v8, :cond_21

    :cond_14
    sget-object v8, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    array-length v8, v8

    if-ge v2, v8, :cond_15

    sget-object v8, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aget-boolean v8, v8, v2

    if-nez v8, :cond_17

    :cond_15
    const/16 v8, 0x9

    if-ne v2, v8, :cond_16

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-nez v8, :cond_17

    :cond_16
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_21

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-eqz v8, :cond_21

    :cond_17
    add-int/lit8 v1, v5, 0x1

    move v3, v1

    move v1, v2

    move v2, v4

    :goto_6
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v3, v2

    goto :goto_5

    :cond_18
    add-int/2addr v0, v5

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_19

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_19
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v0, 0x1

    if-ne v5, v0, :cond_1b

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x2

    sub-int v6, v7, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v2, 0x5c

    aput-char v2, v0, v3

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v3, 0x1

    sget-object v3, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    :cond_1a
    if-eqz p2, :cond_20

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_0

    :cond_1b
    const/4 v0, 0x1

    if-le v5, v0, :cond_1a

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x2

    sub-int v8, v7, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v2, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v2, 0x5c

    aput-char v2, v0, v3

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v3, 0x1

    sget-object v3, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    add-int/lit8 v0, v7, 0x1

    add-int/lit8 v1, v2, -0x2

    :goto_7
    if-lt v1, v6, :cond_1a

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    sget-object v3, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_1c

    sget-object v3, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1e

    :cond_1c
    const/16 v3, 0x9

    if-ne v2, v3, :cond_1d

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1f

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1e
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_20
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_21
    move v2, v3

    move v3, v5

    goto/16 :goto_6
.end method

.method private writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 14

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/16 v10, 0x27

    const/4 v0, 0x0

    const/16 v9, 0x5c

    if-nez p1, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    const-string/jumbo v2, "null"

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v2, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v6, v2, 0x2

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v6, v2, :cond_2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v2, 0x1

    add-int v7, v5, v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v2, v3

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v0, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, -0x1

    move v3, v5

    move v4, v0

    :goto_1
    if-ge v3, v7, :cond_5

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v1, v1, v3

    if-eq v1, v12, :cond_4

    const/16 v8, 0xa

    if-eq v1, v8, :cond_4

    const/16 v8, 0xd

    if-eq v1, v8, :cond_4

    const/16 v8, 0xc

    if-eq v1, v8, :cond_4

    if-eq v1, v9, :cond_4

    if-eq v1, v10, :cond_4

    const/16 v8, 0x9

    if-ne v1, v8, :cond_3

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    const/16 v8, 0x2f

    if-ne v1, v8, :cond_c

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v2, v0

    move v0, v1

    move v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v2, v1

    goto :goto_1

    :cond_5
    add-int v1, v6, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_6
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-ne v4, v11, :cond_8

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v2, 0x2

    sub-int v6, v7, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v9, v1, v2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v0, v3, v0

    aput-char v0, v1, v2

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char v10, v0, v1

    goto/16 :goto_0

    :cond_8
    if-le v4, v11, :cond_7

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v2, 0x2

    sub-int v8, v7, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v3, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v9, v1, v2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v0, v3, v0

    aput-char v0, v1, v2

    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v0, v2, -0x2

    move v13, v0

    move v0, v1

    move v1, v13

    :goto_3
    if-lt v1, v5, :cond_7

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    if-eq v2, v12, :cond_a

    const/16 v3, 0xa

    if-eq v2, v3, :cond_a

    const/16 v3, 0xd

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    if-eq v2, v9, :cond_a

    if-eq v2, v10, :cond_a

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_b

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v9, v3, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v6, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v2, v6, v2

    aput-char v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_c
    move v1, v2

    move v2, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public final append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public final bridge synthetic append(C)Ljava/io/Writer;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0
.end method

.method public final expandCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p1, :cond_0

    :goto_0
    new-array v0, p1, [C

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public final toBytes(Ljava/lang/String;)[B
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo p1, "UTF-8"

    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;->encode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public final toCharArray()[C
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final write(C)V
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v1, v2

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public final write(I)V
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public final write([CII)V
    .locals 3

    if-ltz p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int v0, p2, p3

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0
.end method

.method public final writeBooleanArray([Z)V
    .locals 7

    const/16 v6, 0x65

    const/4 v1, 0x0

    array-length v0, p1

    new-array v4, v0, [I

    const/4 v0, 0x2

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    aget-boolean v3, p1, v0

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    :goto_1
    aput v3, v4, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v3, v0, v2

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v3, v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v4, 0x5b

    aput-char v4, v0, v2

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_6

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0x2c

    aput-char v5, v4, v0

    move v0, v2

    :cond_4
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x74

    aput-char v5, v2, v0

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v4, 0x1

    const/16 v5, 0x72

    aput-char v5, v0, v4

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x75

    aput-char v5, v0, v2

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v4, 0x1

    aput-char v6, v2, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x66

    aput-char v5, v2, v0

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v4, 0x1

    const/16 v5, 0x61

    aput-char v5, v0, v4

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x6c

    aput-char v5, v0, v2

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v4, 0x1

    const/16 v5, 0x73

    aput-char v5, v0, v4

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v2, 0x1

    aput-char v6, v4, v2

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v2, 0x5d

    aput-char v2, v1, v0

    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public final writeByteArray([B)V
    .locals 14

    const/16 v1, 0x3d

    const/16 v13, 0x22

    const/4 v12, 0x2

    const/4 v0, 0x0

    array-length v4, p1

    if-nez v4, :cond_0

    const-string/jumbo v0, "\"\""

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v5, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    div-int/lit8 v2, v4, 0x3

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v2, v4, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v7

    add-int/lit8 v7, v2, 0x2

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v7, v2, :cond_1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_1
    iput v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v3, 0x1

    aput-char v13, v8, v3

    move v3, v2

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_2

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v2

    add-int/lit8 v2, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    ushr-int/lit8 v11, v8, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v5, v11

    aput-char v11, v9, v3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v10, 0x1

    ushr-int/lit8 v11, v8, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v5, v11

    aput-char v11, v3, v10

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v9, 0x1

    ushr-int/lit8 v11, v8, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v5, v11

    aput-char v11, v3, v9

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v10, 0x1

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v5, v8

    aput-char v8, v9, v10

    goto :goto_1

    :cond_2
    sub-int v2, v4, v6

    if-lez v2, :cond_4

    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    if-ne v2, v12, :cond_3

    add-int/lit8 v0, v4, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    :cond_3
    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v7, -0x5

    shr-int/lit8 v6, v0, 0xc

    aget-char v6, v5, v6

    aput-char v6, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v7, -0x4

    ushr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v5, v6

    aput-char v6, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v7, -0x3

    if-ne v2, v12, :cond_5

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v5, v0

    :goto_2
    aput-char v0, v3, v4

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v7, -0x2

    aput-char v1, v0, v2

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v7, -0x1

    aput-char v13, v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public final writeFieldEmptyList(CLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    const-string/jumbo v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "null:"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuote(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeFieldNull(CLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void
.end method

.method public final writeFieldNullBoolean(CLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public final writeFieldNullList(CLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public final writeFieldNullNumber(CLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public final writeFieldNullString(CLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public final writeFieldValue(CLjava/lang/String;C)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    if-nez p3, :cond_0

    const-string/jumbo v0, "\u0000"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeFieldValue(CLjava/lang/String;D)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeFieldValue(CLjava/lang/String;F)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeFieldValue(CLjava/lang/String;I)V
    .locals 6

    const/high16 v0, -0x8000

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x27

    move v1, v0

    :goto_1
    if-gez p3, :cond_4

    neg-int v0, p3

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v0, v3

    add-int v0, v3, v2

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v1, v4, v5

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v4, v2, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v3

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x22

    move v1, v0

    goto :goto_1

    :cond_4
    int-to-long v2, p3

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_2
.end method

.method public final writeFieldValue(CLjava/lang/String;J)V
    .locals 6

    const-wide/high16 v0, -0x8000

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;J)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x27

    move v1, v0

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_4

    neg-long v2, p3

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v0, v3

    add-int v0, v3, v2

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v1, v4, v5

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v4, v2, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v3

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, p4, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x22

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_2
.end method

.method public final writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_0
.end method

.method public final writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/16 v0, 0x3a

    invoke-direct {p0, p2, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    invoke-direct {p0, p3, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeFieldValue(CLjava/lang/String;Z)V
    .locals 8

    const/4 v1, 0x5

    const/4 v7, 0x0

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x27

    move v2, v0

    :goto_0
    if-eqz p3, :cond_2

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-le v0, v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v0, v4

    add-int v0, v4, v3

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    aput-char v2, v5, v6

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p2, v7, v3, v5, v4}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v0, 0x1

    aput-char v2, v3, v4

    if-eqz p3, :cond_3

    const-string/jumbo v2, ":true"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    invoke-static {v2, v7, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-void

    :cond_1
    const/16 v0, 0x22

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v1, ":false"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    const/4 v3, 0x6

    invoke-static {v1, v7, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public final writeFieldValue1(CLjava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void
.end method

.method public final writeFieldValue1(CLjava/lang/String;J)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void
.end method

.method public final writeFieldValue1(CLjava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeInt(I)V
    .locals 2

    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_2

    neg-int v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    :cond_2
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1
.end method

.method public final writeIntAndChar(IC)V
    .locals 3

    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_2

    neg-int v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p2, v2, v0

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    :cond_2
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1
.end method

.method public final writeIntArray([I)V
    .locals 9

    const/high16 v8, -0x8000

    const/4 v1, 0x0

    array-length v0, p1

    new-array v4, v0, [I

    const/4 v0, 0x2

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    aget v3, p1, v0

    if-ne v3, v8, :cond_1

    const/16 v3, 0xb

    :goto_1
    aput v3, v4, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    neg-int v3, v3

    int-to-long v5, v3

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    int-to-long v5, v3

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v5, v0, v2

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v5, v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v3, 0x5b

    aput-char v3, v0, v2

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    move v0, v1

    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_7

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v7, 0x2c

    aput-char v7, v6, v2

    move v2, v3

    :cond_5
    aget v3, p1, v0

    if-ne v3, v8, :cond_6

    const-string/jumbo v3, "-2147483648"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget v7, v4, v0

    invoke-static {v3, v1, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v3, v4, v0

    add-int/2addr v2, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    aget v6, v4, v0

    add-int/2addr v2, v6

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v3, v2, v6}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5d

    aput-char v1, v0, v2

    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public final writeKeyWithDoubleQuote(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuote(Ljava/lang/String;Z)V

    return-void
.end method

.method public final writeKeyWithDoubleQuote(Ljava/lang/String;Z)V
    .locals 11

    const/16 v10, 0x22

    sget-object v3, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v4

    add-int/lit8 v1, v0, 0x3

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v0, 0x1

    add-int v0, v2, v4

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v5, v6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v5, v4, v6, v2}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-eqz p2, :cond_6

    :goto_0
    if-ge v2, v0, :cond_6

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v4, v4, v2

    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-boolean v5, v3, v4

    if-nez v5, :cond_3

    :cond_1
    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_5

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v1, v5, :cond_4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_4
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x2

    sub-int v9, v0, v2

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v2

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v6, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v4, v6, v4

    aput-char v4, v5, v2

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    aput-char v10, v0, v1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    return-void
.end method

.method public final writeLong(J)V
    .locals 2

    const-wide/high16 v0, -0x8000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    neg-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1
.end method

.method public final writeLongAndChar(JC)V
    .locals 3

    const-wide/high16 v0, -0x8000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    neg-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v0, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p3, v2, v0

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1
.end method

.method public final writeLongArray([J)V
    .locals 11

    const-wide/high16 v9, -0x8000

    const/4 v1, 0x0

    array-length v0, p1

    new-array v4, v0, [I

    const/4 v0, 0x2

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    aget-wide v5, p1, v0

    cmp-long v3, v5, v9

    if-nez v3, :cond_1

    const/16 v3, 0x14

    :goto_1
    aput v3, v4, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_2

    neg-long v5, v5

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v5, v0, v2

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v5, v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v3, 0x5b

    aput-char v3, v0, v2

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    move v0, v1

    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_7

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v7, 0x2c

    aput-char v7, v6, v2

    move v2, v3

    :cond_5
    aget-wide v6, p1, v0

    cmp-long v3, v6, v9

    if-nez v3, :cond_6

    const-string/jumbo v3, "-9223372036854775808"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget v7, v4, v0

    invoke-static {v3, v1, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v3, v4, v0

    add-int/2addr v2, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    aget v3, v4, v0

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v7, v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5d

    aput-char v1, v0, v2

    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public final writeNull()V
    .locals 5

    const/16 v4, 0x6c

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v1, v2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v2, 0x2

    aput-char v4, v1, v2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v2, 0x3

    aput-char v4, v1, v2

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public final writeShortArray([S)V
    .locals 7

    const/4 v1, 0x0

    array-length v0, p1

    new-array v3, v0, [I

    const/4 v0, 0x2

    move v2, v0

    move v0, v1

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    aget-short v4, p1, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v4

    aput v4, v3, v0

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v4, v0, v2

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v4, v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v5, 0x5b

    aput-char v5, v0, v2

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v0, 0x1

    const/16 v6, 0x2c

    aput-char v6, v5, v0

    move v0, v2

    :cond_3
    aget-short v2, p1, v1

    aget v5, v3, v1

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v2, v0, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v2, 0x5d

    aput-char v2, v1, v0

    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_0
.end method

.method public final writeString(Ljava/lang/String;C)V
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_0
.end method

.method public final writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final writeTo(Ljava/io/Writer;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
