.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;


# static fields
.field public static final ARRAY:I = 0x2

.field public static final END:I = 0x4

.field public static final EOI:B = 0x1at

.field private static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field private static final INT_N_MULTMAX_RADIX_TEN:I = -0xccccccc

.field private static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field private static final N_MULTMAX_RADIX_TEN:J = -0xcccccccccccccccL

.field public static final OBJECT:I = 0x1

.field public static final UNKOWN:I = 0x0

.field public static final VALUE:I = 0x3

.field private static final digits:[I

.field private static final sbufRefLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field

.field private static final typeFieldName:[C

.field private static whitespaceFlags:[Z


# instance fields
.field public final ISO8601_LEN_0:I

.field public final ISO8601_LEN_1:I

.field public final ISO8601_LEN_2:I

.field private bp:I

.field private final buf:[C

.field private final buflen:I

.field private calendar:Ljava/util/Calendar;

.field private ch:C

.field private eofPos:I

.field private features:I

.field hasSpecial:Z

.field private keywods:Lcom/alibaba/fastjson/parser/Keywords;

.field public matchStat:I

.field private np:I

.field private pos:I

.field public resetCount:I

.field private resetFlag:Z

.field private sbuf:[C

.field private sp:I

.field private token:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbufRefLocal:Ljava/lang/ThreadLocal;

    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    const-string/jumbo v0, "\"@type\":\""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    const/16 v0, 0x67

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alibaba/fastjson/parser/Keywords;->DEFAULT_KEYWORDS:Lcom/alibaba/fastjson/parser/Keywords;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->keywods:Lcom/alibaba/fastjson/parser/Keywords;

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetFlag:Z

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetCount:I

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    iput p3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbufRefLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbufRefLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    if-nez v0, :cond_1

    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    :cond_1
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->eofPos:I

    array-length v0, p1

    if-ne p2, v0, :cond_2

    array-length v0, p1

    if-lez v0, :cond_3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p1, v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    const/16 v2, 0x1a

    aput-char v2, v0, v1

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-void

    :cond_3
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto :goto_0
.end method

.method public static final isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void
.end method

.method private final putChar(C)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    aput-char p1, v0, v1

    return-void
.end method


# virtual methods
.method public final bytesValue()[B
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbufRefLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    return-void
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-char v1, v0, v1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-direct {v1, v2, v3, v0}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v1
.end method

.method public final doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final floatValue()F
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final getBufferPosition()I
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    return v0
.end method

.method public final getCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final incrementBufferPosition()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-void
.end method

.method public final intValue()I
    .locals 7

    const/4 v0, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int v5, v1, v3

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    aget-char v1, v1, v3

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    const/high16 v1, -0x8000

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_7

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v6, v1

    aget v0, v0, v1

    neg-int v0, v0

    :goto_1
    if-ge v2, v5, :cond_3

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v6, v2

    const/16 v6, 0x4c

    if-eq v2, v6, :cond_4

    const/16 v6, 0x53

    if-eq v2, v6, :cond_4

    const/16 v6, 0x42

    if-eq v2, v6, :cond_4

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v6, v2

    const v6, -0xccccccc

    if-ge v0, v6, :cond_1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const v1, -0x7fffffff

    move v3, v1

    move v4, v0

    move v1, v2

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0xa

    add-int v6, v3, v2

    if-ge v0, v6, :cond_2

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sub-int/2addr v0, v2

    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    if-eqz v4, :cond_6

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_5

    :goto_2
    return v0

    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    neg-int v0, v0

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 15

    const/16 v2, 0x53

    const/16 v1, 0x4c

    const/16 v3, 0x42

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v4, v0

    const/16 v0, 0x20

    if-lez v4, :cond_0

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v6, v4, -0x1

    aget-char v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    aget-char v5, v5, v6

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    const/4 v10, 0x1

    const-wide/high16 v5, -0x8000

    add-int/lit8 v9, v9, 0x1

    move v11, v10

    move v14, v9

    move-wide v9, v5

    move v6, v14

    :goto_1
    if-ge v6, v4, :cond_d

    sget-object v7, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v5, v6, 0x1

    aget-char v6, v8, v6

    aget v6, v7, v6

    neg-int v6, v6

    int-to-long v6, v6

    move-wide v7, v6

    :goto_2
    if-ge v5, v4, :cond_4

    sget-object v12, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v6, v5, 0x1

    aget-char v5, v13, v5

    aget v5, v12, v5

    const-wide v12, -0xcccccccccccccccL

    cmp-long v12, v7, v12

    if-gez v12, :cond_2

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_3
    return-object v0

    :sswitch_0
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v0, v1

    goto :goto_0

    :sswitch_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v0, v3

    goto :goto_0

    :cond_1
    const-wide v5, -0x7fffffffffffffffL

    move v11, v10

    move v14, v9

    move-wide v9, v5

    move v6, v14

    goto :goto_1

    :cond_2
    const-wide/16 v12, 0xa

    mul-long/2addr v7, v12

    int-to-long v12, v5

    add-long/2addr v12, v9

    cmp-long v12, v7, v12

    if-gez v12, :cond_3

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    int-to-long v12, v5

    sub-long/2addr v7, v12

    move v5, v6

    goto :goto_2

    :cond_4
    if-eqz v11, :cond_9

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v4, v4, 0x1

    if-le v5, v4, :cond_8

    const-wide/32 v4, -0x80000000

    cmp-long v4, v7, v4

    if-ltz v4, :cond_7

    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_5

    long-to-int v0, v7

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_3

    :cond_5
    if-ne v0, v3, :cond_6

    long-to-int v0, v7

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_3

    :cond_6
    long-to-int v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    neg-long v4, v7

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_c

    if-eq v0, v1, :cond_c

    if-ne v0, v2, :cond_a

    long-to-int v0, v4

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_3

    :cond_a
    if-ne v0, v3, :cond_b

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    :cond_c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    move v5, v6

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isBlankInput()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final isEOF()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public final isRef()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isResetFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetFlag:Z

    return v0
.end method

.method public final longValue()J
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int v7, v2, v3

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    aget-char v2, v2, v3

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    const/4 v5, 0x1

    const-wide/high16 v2, -0x8000

    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v10, v4

    move-wide v4, v2

    move v2, v10

    :goto_0
    if-ge v2, v7, :cond_7

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v2

    aget v0, v0, v1

    neg-int v0, v0

    int-to-long v0, v0

    :goto_1
    if-ge v3, v7, :cond_3

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v3, 0x1

    aget-char v3, v8, v3

    const/16 v8, 0x4c

    if-eq v3, v8, :cond_4

    const/16 v8, 0x53

    if-eq v3, v8, :cond_4

    const/16 v8, 0x42

    if-eq v3, v8, :cond_4

    sget-object v8, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v8, v3

    const-wide v8, -0xcccccccccccccccL

    cmp-long v8, v0, v8

    if-gez v8, :cond_1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide v2, -0x7fffffffffffffffL

    move v6, v5

    move v10, v4

    move-wide v4, v2

    move v2, v10

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    int-to-long v8, v3

    add-long/2addr v8, v4

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    int-to-long v8, v3

    sub-long/2addr v0, v8

    move v3, v2

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v6, :cond_6

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_5

    :goto_2
    return-wide v0

    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    neg-long v0, v0

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_1
.end method

.method public final matchField([C)Z
    .locals 6

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-char v3, p1, v1

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    goto :goto_2
.end method

.method public final nextToken()V
    .locals 5

    const/16 v4, 0x14

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanString()V

    :goto_1
    return-void

    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_1

    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_1

    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    if-ne v0, v1, :cond_7

    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v0, v4, :cond_6

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanStringSingleQuote()V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanTrue()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanTreeSet()V

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSet()V

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanFalse()V

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNullOrNew()V

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanIdent()V

    goto/16 :goto_1

    :sswitch_8
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    :sswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    :sswitch_a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    :sswitch_b
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    :sswitch_c
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    :sswitch_d
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    :sswitch_e
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    :cond_6
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    goto/16 :goto_1

    :cond_7
    new-array v0, v3, [Ljava/lang/Object;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_8
        0x29 -> :sswitch_9
        0x3a -> :sswitch_e
        0x44 -> :sswitch_7
        0x53 -> :sswitch_4
        0x54 -> :sswitch_3
        0x5b -> :sswitch_a
        0x5d -> :sswitch_b
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_2
        0x7b -> :sswitch_c
        0x7d -> :sswitch_d
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 7

    const/16 v6, 0x7b

    const/16 v5, 0x5b

    const/16 v4, 0xe

    const/4 v3, 0x0

    const/16 v2, 0xc

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_0

    :sswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v6, :cond_2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_1
    return-void

    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    :sswitch_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    :sswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_1

    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanString()V

    goto/16 :goto_1

    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_8

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v6, :cond_0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    :sswitch_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanString()V

    goto/16 :goto_1

    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto/16 :goto_1

    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_b

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    :cond_b
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v6, :cond_0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    :sswitch_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_c

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v6, :cond_0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    :sswitch_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    :cond_d
    :sswitch_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0xc -> :sswitch_0
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x10 -> :sswitch_1
        0x14 -> :sswitch_6
    .end sparse-switch
.end method

.method public final nextTokenWithColon()V
    .locals 3

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    return-void

    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not match \':\' - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextTokenWithColon(I)V
    .locals 7

    const/16 v6, 0x30

    const/16 v5, 0x22

    const/16 v4, 0xe

    const/16 v3, 0xc

    const/4 v2, 0x0

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v6, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    :goto_2
    return-void

    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not match \':\', actual "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_9

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanString()V

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanString()V

    goto :goto_2

    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v6, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_9

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_2

    :cond_5
    if-ne p1, v3, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_9

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_2

    :cond_7
    if-ne p1, v4, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_8

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_2

    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_9

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_2

    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    goto/16 :goto_2
.end method

.method public final numberString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-char v1, v0, v1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public final pos()I
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    return v0
.end method

.method public final reset(ICI)V
    .locals 1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iput p3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetFlag:Z

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetCount:I

    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    return-void
.end method

.method public final scanFalse()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanFieldBoolean([C)Z
    .locals 10

    const/16 v9, 0x65

    const/16 v8, 0x2c

    const/16 v7, 0x10

    const/4 v6, -0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-char v3, p1, v1

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_0

    const/4 v1, -0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v1, 0x1

    aget-char v1, v2, v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v3, 0x1

    aget-char v1, v1, v3

    const/16 v3, 0x72

    if-eq v1, v3, :cond_2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x75

    if-eq v1, v2, :cond_3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v3, 0x1

    aget-char v1, v1, v3

    if-eq v1, v9, :cond_4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v1, v2

    const/4 v1, 0x1

    :goto_2
    if-ne v2, v8, :cond_b

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_3
    move v0, v1

    goto :goto_1

    :cond_5
    const/16 v2, 0x66

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v3, 0x1

    aget-char v1, v1, v3

    const/16 v3, 0x61

    if-eq v1, v3, :cond_6

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v3, 0x1

    aget-char v1, v1, v3

    const/16 v3, 0x73

    if-eq v1, v3, :cond_8

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v2

    if-eq v1, v9, :cond_9

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_1

    :cond_9
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_1

    :cond_b
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    if-ne v2, v8, :cond_c

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_3

    :cond_c
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_d

    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    :cond_d
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_e

    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    :cond_e
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_f

    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_4

    :cond_f
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_1

    :cond_10
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_1
.end method

.method public final scanFieldDouble([C)D
    .locals 10

    const/4 v0, 0x0

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v7, -0x1

    const-wide/16 v3, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-char v2, p1, v0

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v0

    aget-char v5, v5, v6

    if-eq v2, v5, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v3

    :goto_1
    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v2, v1

    if-lt v1, v8, :cond_5

    if-gt v1, v9, :cond_5

    add-int/lit8 v2, v0, -0x1

    :goto_2
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v5, v0

    if-lt v0, v8, :cond_2

    if-le v0, v9, :cond_c

    :cond_2
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v5, v1

    if-lt v1, v8, :cond_3

    if-gt v1, v9, :cond_3

    :goto_3
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v5, v0

    if-lt v0, v8, :cond_4

    if-gt v0, v9, :cond_4

    move v0, v1

    goto :goto_3

    :cond_3
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v1, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v5, v6, v2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_4
    move-wide v0, v1

    goto :goto_1

    :cond_5
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v3

    goto :goto_1

    :cond_6
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_b

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v5

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_7

    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v3

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_4

    :cond_7
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_8

    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v3

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    :cond_8
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_9

    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v3

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    :cond_9
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_a

    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_5

    :cond_a
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v3

    goto/16 :goto_1

    :cond_b
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v3

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method

.method public final scanFieldFloat([C)F
    .locals 9

    const/4 v0, 0x0

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v6, -0x1

    const/4 v2, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-char v3, p1, v0

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v2

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v3, v1

    if-lt v1, v7, :cond_5

    if-gt v1, v8, :cond_5

    add-int/lit8 v3, v0, -0x1

    :goto_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v4, v0

    if-lt v0, v7, :cond_2

    if-le v0, v8, :cond_c

    :cond_2
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v4, v1

    if-lt v1, v7, :cond_3

    if-gt v1, v8, :cond_3

    :goto_3
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v4, v0

    if-lt v0, v7, :cond_4

    if-gt v0, v8, :cond_4

    move v0, v1

    goto :goto_3

    :cond_3
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v4, v5, v3, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v0, v1

    goto :goto_1

    :cond_5
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v2

    goto :goto_1

    :cond_6
    const/16 v3, 0x7d

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v3

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_7

    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v1

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_8

    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    :cond_8
    const/16 v3, 0x7d

    if-ne v0, v3, :cond_9

    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    :cond_9
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_a

    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_4

    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v2

    goto/16 :goto_1

    :cond_b
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v2

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method

.method public final scanFieldInt([C)I
    .locals 10

    const/16 v9, 0x30

    const/16 v8, 0x2c

    const/16 v7, 0x10

    const/4 v6, -0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    array-length v1, p1

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_2

    aget-char v2, p1, v0

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-eq v2, v4, :cond_1

    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v2, v1

    if-lt v1, v9, :cond_5

    const/16 v2, 0x39

    if-gt v1, v2, :cond_5

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v2, v1

    move v2, v1

    :goto_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v4, v0

    if-lt v0, v9, :cond_3

    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    mul-int/lit8 v2, v2, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v4, v0

    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_3
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-gez v2, :cond_6

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    goto :goto_1

    :cond_5
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    goto :goto_1

    :cond_6
    if-ne v0, v8, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    :cond_7
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    if-ne v0, v8, :cond_8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_8
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_9

    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_9
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_a

    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_a
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_b

    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    :cond_b
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    goto/16 :goto_1
.end method

.method public final scanFieldLong([C)J
    .locals 11

    const/16 v10, 0x2c

    const/16 v9, 0x10

    const/4 v0, 0x0

    const/4 v8, -0x1

    const-wide/16 v4, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-char v2, p1, v0

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v0

    aget-char v3, v3, v6

    if-eq v2, v3, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    :goto_1
    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v0, v1, v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v1, v0

    int-to-long v0, v0

    :goto_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v2, v6, v2

    const/16 v6, 0x30

    if-lt v2, v6, :cond_2

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2

    const-wide/16 v6, 0xa

    mul-long/2addr v0, v6

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v6, v2

    int-to-long v6, v2

    add-long/2addr v0, v6

    move v2, v3

    goto :goto_2

    :cond_2
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move-wide v0, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    cmp-long v3, v0, v4

    if-gez v3, :cond_5

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    goto :goto_1

    :cond_4
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    goto :goto_1

    :cond_5
    if-ne v2, v10, :cond_6

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    :cond_6
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    if-ne v2, v10, :cond_7

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_7
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_8

    const/16 v2, 0xf

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_8
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_9

    const/16 v2, 0xd

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_9
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_a

    const/16 v2, 0x14

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    :cond_a
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    goto/16 :goto_1

    :cond_b
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    goto/16 :goto_1
.end method

.method public final scanFieldString([C)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x7d

    const/16 v7, 0x2c

    const/16 v6, 0x22

    const/4 v0, 0x0

    const/4 v5, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-char v2, p1, v0

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v0

    aget-char v3, v3, v4

    if-eq v2, v3, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v2, v0

    if-eq v0, v6, :cond_2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v0, v3, v0

    if-ne v0, v6, :cond_3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v3, v0, v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    if-ne v3, v7, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_3
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_a

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-ne v3, v8, :cond_9

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    if-ne v1, v7, :cond_5

    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_3
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_5
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_6

    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_6
    if-ne v1, v8, :cond_7

    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_7
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_8

    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    :cond_8
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto/16 :goto_2
.end method

.method public final scanFieldStringArray([C)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v9, 0x22

    const/4 v1, 0x0

    const/16 v8, 0x2c

    const/4 v7, -0x1

    const/4 v4, 0x0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_3

    aget-char v3, p1, v1

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v1

    aget-char v5, v5, v6

    if-eq v3, v5, :cond_2

    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    :goto_2
    return-object v0

    :cond_0
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    if-eq v1, v9, :cond_5

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_3
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v1, 0x1

    aget-char v1, v5, v1

    if-ne v1, v9, :cond_6

    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v1, v5, v2, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v3, 0x1

    aget-char v2, v2, v3

    if-eq v2, v8, :cond_4

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v1, 0x1

    aget-char v1, v2, v1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-ne v1, v8, :cond_8

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_2

    :cond_6
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_e

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    goto/16 :goto_2

    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    goto/16 :goto_2

    :cond_8
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    if-ne v1, v8, :cond_9

    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_2

    :cond_9
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_a

    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    :cond_a
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_b

    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    :cond_b
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_c

    const/16 v2, 0x14

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    :cond_c
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    goto/16 :goto_2

    :cond_d
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    goto/16 :goto_2

    :cond_e
    move v1, v3

    goto/16 :goto_3
.end method

.method public final scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x2c

    const/16 v8, 0x22

    const/4 v0, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-char v3, p1, v1

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v1

    aget-char v5, v5, v6

    if-eq v3, v5, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    if-eq v1, v8, :cond_2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v1, 0x1

    aget-char v1, v5, v1

    if-ne v1, v8, :cond_3

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v5

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v5, v2, v3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    if-ne v1, v9, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    const/16 v5, 0x5c

    if-ne v1, v5, :cond_a

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    goto :goto_1

    :cond_4
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    if-ne v1, v9, :cond_5

    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_3
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_5
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_6

    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_6
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_7

    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_7
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_8

    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    :cond_8
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    goto/16 :goto_1

    :cond_9
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    goto/16 :goto_1

    :cond_a
    move v1, v3

    goto/16 :goto_2
.end method

.method public final scanISO8601DateIfMatch()Z
    .locals 11

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    aget-char v2, v2, v3

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x2

    aget-char v3, v3, v4

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x3

    aget-char v4, v4, v5

    const/16 v5, 0x31

    if-eq v1, v5, :cond_1

    const/16 v5, 0x32

    if-eq v1, v5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v5, 0x30

    if-lt v2, v5, :cond_2

    const/16 v5, 0x39

    if-le v2, v5, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v5, 0x30

    if-lt v3, v5, :cond_4

    const/16 v5, 0x39

    if-le v3, v5, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/16 v5, 0x30

    if-lt v4, v5, :cond_6

    const/16 v5, 0x39

    if-le v4, v5, :cond_7

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x5

    aget-char v5, v5, v6

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x6

    aget-char v6, v6, v7

    const/16 v7, 0x30

    if-ne v5, v7, :cond_a

    const/16 v7, 0x31

    if-lt v6, v7, :cond_9

    const/16 v7, 0x39

    if-le v6, v7, :cond_c

    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    const/16 v7, 0x31

    if-ne v5, v7, :cond_b

    const/16 v7, 0x30

    if-eq v6, v7, :cond_c

    const/16 v7, 0x31

    if-eq v6, v7, :cond_c

    const/16 v7, 0x32

    if-eq v6, v7, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x7

    aget-char v7, v7, v8

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_d

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x8

    aget-char v7, v7, v8

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x9

    aget-char v8, v8, v9

    const/16 v9, 0x30

    if-ne v7, v9, :cond_f

    const/16 v9, 0x31

    if-lt v8, v9, :cond_e

    const/16 v9, 0x39

    if-le v8, v9, :cond_14

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v9, 0x31

    if-eq v7, v9, :cond_10

    const/16 v9, 0x32

    if-ne v7, v9, :cond_12

    :cond_10
    const/16 v9, 0x30

    if-lt v8, v9, :cond_11

    const/16 v9, 0x39

    if-le v8, v9, :cond_14

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    const/16 v9, 0x33

    if-ne v7, v9, :cond_13

    const/16 v9, 0x30

    if-eq v8, v9, :cond_14

    const/16 v9, 0x31

    if-eq v8, v9, :cond_14

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v9, v1

    mul-int/lit16 v1, v1, 0x3e8

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v9, v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v7

    mul-int/lit8 v3, v3, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, v8

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xa

    aget-char v1, v1, v2

    const/16 v2, 0x54

    if-ne v1, v2, :cond_15

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    if-ge v0, v1, :cond_18

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x22

    if-eq v1, v0, :cond_16

    const/16 v0, 0x1a

    if-ne v1, v0, :cond_17

    :cond_16
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_18
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xb

    aget-char v1, v1, v2

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0xc

    aget-char v2, v2, v3

    const/16 v3, 0x30

    if-ne v1, v3, :cond_1a

    const/16 v3, 0x30

    if-lt v2, v3, :cond_19

    const/16 v3, 0x39

    if-le v2, v3, :cond_1f

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x31

    if-ne v1, v3, :cond_1c

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1b

    const/16 v3, 0x39

    if-le v2, v3, :cond_1f

    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x32

    if-ne v1, v3, :cond_1e

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1d

    const/16 v3, 0x34

    if-le v2, v3, :cond_1f

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1f
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0xd

    aget-char v3, v3, v4

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_20

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_20
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0xe

    aget-char v3, v3, v4

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    const/16 v5, 0x30

    if-lt v3, v5, :cond_22

    const/16 v5, 0x35

    if-gt v3, v5, :cond_22

    const/16 v5, 0x30

    if-lt v4, v5, :cond_21

    const/16 v5, 0x39

    if-le v4, v5, :cond_24

    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_22
    const/16 v5, 0x36

    if-ne v3, v5, :cond_23

    const/16 v5, 0x30

    if-eq v4, v5, :cond_24

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_24
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x10

    aget-char v5, v5, v6

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_25

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_25
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x11

    aget-char v5, v5, v6

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x12

    aget-char v6, v6, v7

    const/16 v7, 0x30

    if-lt v5, v7, :cond_27

    const/16 v7, 0x35

    if-gt v5, v7, :cond_27

    const/16 v7, 0x30

    if-lt v6, v7, :cond_26

    const/16 v7, 0x39

    if-le v6, v7, :cond_29

    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_27
    const/16 v7, 0x36

    if-ne v5, v7, :cond_28

    const/16 v7, 0x30

    if-eq v6, v7, :cond_29

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_28
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_29
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v7, v1

    mul-int/lit8 v1, v1, 0xa

    sget-object v7, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v7, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v5

    mul-int/lit8 v3, v3, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x13

    aget-char v1, v1, v2

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2a

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    if-ge v0, v1, :cond_2b

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2b
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    aget-char v0, v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x15

    aget-char v1, v1, v2

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x16

    aget-char v2, v2, v3

    const/16 v3, 0x30

    if-lt v0, v3, :cond_2c

    const/16 v3, 0x39

    if-le v0, v3, :cond_2d

    :cond_2c
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2d
    const/16 v3, 0x30

    if-lt v1, v3, :cond_2e

    const/16 v3, 0x39

    if-le v1, v3, :cond_2f

    :cond_2e
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2f
    const/16 v3, 0x30

    if-lt v2, v3, :cond_30

    const/16 v3, 0x39

    if-le v2, v3, :cond_31

    :cond_30
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_31
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v3, v0

    mul-int/lit8 v0, v0, 0x64

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x17

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final scanIdent()V
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->keywods:Lcom/alibaba/fastjson/parser/Keywords;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/Keywords;->getKeyword(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x12

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0
.end method

.method public final scanNullOrNew()V
    .locals 8

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v7, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v3, :cond_4

    :cond_3
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_0
    return-void

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse e"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x77

    if-eq v0, v1, :cond_7

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse w"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v5, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v7, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v6, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v3, :cond_9

    :cond_8
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 8

    const/16 v7, 0x44

    const/16 v6, 0x2d

    const/4 v1, 0x1

    const/16 v5, 0x39

    const/16 v4, 0x30

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v6, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v4, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v0, v5, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v4, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v0, v5, :cond_2

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_5

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :cond_4
    :goto_2
    if-eqz v0, :cond_10

    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_3
    return-void

    :cond_5
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x53

    if-ne v2, v3, :cond_6

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    :cond_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x42

    if-ne v2, v3, :cond_7

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x46

    if-ne v2, v3, :cond_a

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :cond_9
    move v0, v1

    goto :goto_2

    :cond_a
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v7, :cond_b

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    goto :goto_4

    :cond_b
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x65

    if-eq v2, v3, :cond_c

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x45

    if-ne v2, v3, :cond_4

    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_d

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v6, :cond_e

    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :cond_e
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v4, :cond_f

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-le v0, v5, :cond_d

    :cond_f
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v7, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x46

    if-ne v0, v2, :cond_9

    goto :goto_4

    :cond_10
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_3
.end method

.method public final scanSet()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanString()V
    .locals 11

    const/16 v10, 0x5c

    const/16 v9, 0x22

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    if-eq v0, v9, :cond_6

    if-ne v0, v10, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_2

    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    if-le v1, v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    :cond_0
    new-array v0, v0, [C

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unclosed string : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v2, v0

    mul-int/lit8 v0, v0, 0x10

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v3, v3, v4

    new-instance v4, Ljava/lang/String;

    new-array v5, v8, [C

    aput-char v0, v5, v6

    aput-char v1, v5, v7

    const/4 v0, 0x2

    aput-char v2, v5, v0

    const/4 v0, 0x3

    aput-char v3, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v0, 0x10

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v1, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    aput-char v0, v1, v2

    goto/16 :goto_0

    :cond_6
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x46 -> :sswitch_4
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_9
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method public final scanStringSingleQuote()V
    .locals 11

    const/16 v10, 0x5c

    const/16 v9, 0x27

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    if-eq v0, v9, :cond_6

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed single-quote string"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne v0, v10, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_2

    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed single-quote string"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v2, v0

    mul-int/lit8 v0, v0, 0x10

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v3, v3, v4

    new-instance v4, Ljava/lang/String;

    new-array v5, v8, [C

    aput-char v0, v5, v6

    aput-char v1, v5, v7

    const/4 v0, 0x2

    aput-char v2, v5, v0

    const/4 v0, 0x3

    aput-char v3, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v0, 0x10

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v1, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    aput-char v0, v1, v2

    goto/16 :goto_0

    :cond_6
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-void

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_3
        0x2f -> :sswitch_2
        0x46 -> :sswitch_5
        0x5c -> :sswitch_1
        0x62 -> :sswitch_4
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x72 -> :sswitch_7
        0x74 -> :sswitch_8
        0x75 -> :sswitch_a
        0x78 -> :sswitch_9
    .end sparse-switch
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    const/16 v2, 0x22

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v3, :cond_2

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x5c

    const/4 v10, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v4, v4, v5

    if-eq v4, p2, :cond_7

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed.str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne v4, v11, :cond_4

    if-nez v0, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v4, v4

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    if-le v4, v0, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    :cond_1
    new-array v0, v0, [C

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v5, v5

    invoke-static {v4, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed.str.lit"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x22

    const/16 v4, 0x22

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x5c

    invoke-direct {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_2
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x2f

    const/16 v4, 0x2f

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto :goto_0

    :sswitch_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x8

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_4
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xc

    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_5
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xa

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_6
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xd

    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_7
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x9

    const/16 v4, 0x9

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v4, v4, v5

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v5, v6

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v6, v6, v7

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v7, v7, v8

    new-instance v8, Ljava/lang/String;

    new-array v9, v10, [C

    aput-char v4, v9, v1

    aput-char v5, v9, v3

    const/4 v4, 0x2

    aput-char v6, v9, v4

    const/4 v4, 0x3

    aput-char v7, v9, v4

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    const/16 v4, 0x10

    invoke-static {v8, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    int-to-char v4, v4

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :cond_4
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    if-nez v0, :cond_5

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    goto/16 :goto_0

    :cond_5
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v6, v6

    if-ne v5, v6, :cond_6

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    aput-char v4, v5, v6

    goto/16 :goto_0

    :cond_7
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v3, v3, v4

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x46 -> :sswitch_4
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_8
    .end sparse-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x6c

    const/4 v2, 0x1

    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "illegal identifier : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_4

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const v1, 0x33c587

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    aget-char v1, v1, v2

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x75

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_5

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final scanTreeSet()V
    .locals 4

    const/16 v3, 0x65

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_3

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_5

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_8

    :cond_7
    const/16 v0, 0x16

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanTrue()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 10

    const/16 v9, 0x7d

    const/16 v8, 0x2c

    const/16 v7, 0x10

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    array-length v3, v2

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    aget-char v4, v4, v2

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v2

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_0

    const/4 v0, -0x2

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int v6, v2, v0

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int v0, v2, v3

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    aget-char v2, v2, v0

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v2, v0

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v8, :cond_5

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v9, :cond_6

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v2, v0

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v8, :cond_7

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_3
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    :cond_6
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_8

    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_8
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v9, :cond_9

    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_9
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_a

    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method public final setResetFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetFlag:Z

    return-void
.end method

.method public final skipWhitespace()V
    .locals 2

    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final symbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final token()I
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
