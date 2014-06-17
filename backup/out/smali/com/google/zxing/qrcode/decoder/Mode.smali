.class public final Lcom/google/zxing/qrcode/decoder/Mode;
.super Ljava/lang/Object;


# static fields
.field public static final ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final ECI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;


# instance fields
.field private final a:[I

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x3

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const-string/jumbo v3, "TERMINATOR"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    const-string/jumbo v3, "NUMERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    const-string/jumbo v3, "ALPHANUMERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    const-string/jumbo v2, "STRUCTURED_APPEND"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    const-string/jumbo v3, "BYTE"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v1, 0x7

    const-string/jumbo v2, "ECI"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    const/16 v2, 0x8

    const-string/jumbo v3, "KANJI"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v1, 0x5

    const-string/jumbo v2, "FNC1_FIRST_POSITION"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const/16 v1, 0x9

    const-string/jumbo v2, "FNC1_SECOND_POSITION"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    const/16 v2, 0xd

    const-string/jumbo v3, "HANZI"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>([IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/Mode;->a:[I

    iput p2, p0, Lcom/google/zxing/qrcode/decoder/Mode;->b:I

    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Mode;->c:Ljava/lang/String;

    return-void
.end method

.method public static forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_0
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public final getBits()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->b:I

    return v0
.end method

.method public final getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->a:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Character count doesn\'t apply to this mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/Mode;->a:[I

    aget v0, v1, v0

    return v0

    :cond_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->c:Ljava/lang/String;

    return-object v0
.end method
