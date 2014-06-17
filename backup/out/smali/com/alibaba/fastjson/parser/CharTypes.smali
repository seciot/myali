.class public final Lcom/alibaba/fastjson/parser/CharTypes;
.super Ljava/lang/Object;


# static fields
.field public static final ASCII_CHARS:[C

.field public static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field public static final specicalFlags_doubleQuotes:[Z

.field public static final specicalFlags_singleQuotes:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x8

    const/16 v3, 0x5c

    const/4 v2, 0x1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_3

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    aput-boolean v2, v1, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    aput-boolean v2, v1, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    aput-boolean v2, v1, v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_8

    const/16 v1, 0x41

    if-lt v0, v1, :cond_5

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_5

    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v2, v1, v0

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_2

    :cond_5
    const/16 v1, 0x61

    if-lt v0, v1, :cond_6

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_6

    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v2, v1, v0

    goto :goto_3

    :cond_6
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_7

    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v2, v1, v0

    goto :goto_3

    :cond_7
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v2, v1, v0

    goto :goto_3

    :cond_8
    const/16 v0, 0x80

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    const/16 v0, 0x80

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    const/16 v0, 0x80

    new-array v0, v0, [C

    sput-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aput-boolean v2, v0, v4

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aput-boolean v2, v0, v5

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aput-boolean v2, v0, v3

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aput-boolean v2, v0, v6

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    aput-boolean v2, v0, v4

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    aput-boolean v2, v0, v5

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    aput-boolean v2, v0, v3

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    aput-boolean v2, v0, v6

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v1, 0x62

    aput-char v1, v0, v4

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v1, 0x6e

    aput-char v1, v0, v5

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v1, 0xc

    const/16 v2, 0x66

    aput-char v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v1, 0xd

    const/16 v2, 0x72

    aput-char v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v1, 0x22

    const/16 v2, 0x22

    aput-char v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v1, 0x27

    const/16 v2, 0x27

    aput-char v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aput-char v3, v0, v3

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v1, 0x9

    const/16 v2, 0x74

    aput-char v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v1, 0x76

    aput-char v1, v0, v6

    const/16 v0, 0x60

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x30t 0x0t
        0x32t 0x0t
        0x30t 0x0t
        0x33t 0x0t
        0x30t 0x0t
        0x34t 0x0t
        0x30t 0x0t
        0x35t 0x0t
        0x30t 0x0t
        0x36t 0x0t
        0x30t 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x38t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x41t 0x0t
        0x30t 0x0t
        0x42t 0x0t
        0x30t 0x0t
        0x43t 0x0t
        0x30t 0x0t
        0x44t 0x0t
        0x30t 0x0t
        0x45t 0x0t
        0x30t 0x0t
        0x46t 0x0t
        0x31t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x31t 0x0t
        0x33t 0x0t
        0x31t 0x0t
        0x34t 0x0t
        0x31t 0x0t
        0x35t 0x0t
        0x31t 0x0t
        0x36t 0x0t
        0x31t 0x0t
        0x37t 0x0t
        0x31t 0x0t
        0x38t 0x0t
        0x31t 0x0t
        0x39t 0x0t
        0x31t 0x0t
        0x41t 0x0t
        0x31t 0x0t
        0x42t 0x0t
        0x31t 0x0t
        0x43t 0x0t
        0x31t 0x0t
        0x44t 0x0t
        0x31t 0x0t
        0x45t 0x0t
        0x31t 0x0t
        0x46t 0x0t
        0x32t 0x0t
        0x30t 0x0t
        0x32t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x32t 0x0t
        0x34t 0x0t
        0x32t 0x0t
        0x35t 0x0t
        0x32t 0x0t
        0x36t 0x0t
        0x32t 0x0t
        0x37t 0x0t
        0x32t 0x0t
        0x38t 0x0t
        0x32t 0x0t
        0x39t 0x0t
        0x32t 0x0t
        0x41t 0x0t
        0x32t 0x0t
        0x42t 0x0t
        0x32t 0x0t
        0x43t 0x0t
        0x32t 0x0t
        0x44t 0x0t
        0x32t 0x0t
        0x45t 0x0t
        0x32t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isEmoji(C)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0xe001

    if-lt p0, v1, :cond_1

    const v1, 0xe05a

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0xe101

    if-lt p0, v1, :cond_2

    const v1, 0xe15a

    if-le p0, v1, :cond_0

    :cond_2
    const v1, 0xe201

    if-lt p0, v1, :cond_3

    const v1, 0xe253

    if-le p0, v1, :cond_0

    :cond_3
    const v1, 0xe401

    if-lt p0, v1, :cond_4

    const v1, 0xe44c

    if-le p0, v1, :cond_0

    :cond_4
    const v1, 0xe501

    if-lt p0, v1, :cond_5

    const v1, 0xe537

    if-le p0, v1, :cond_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpecial_doubleQuotes(C)Z
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
