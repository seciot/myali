.class public final Lcom/alipay/nfc/tech/Iso7816$BerT;
.super Lcom/alipay/nfc/tech/Iso7816;


# static fields
.field public static final c:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public static final d:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public static final e:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public static final f:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public static final g:Lcom/alipay/nfc/tech/Iso7816$BerT;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v1, -0x5b

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>(B)V

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$BerT;->c:Lcom/alipay/nfc/tech/Iso7816$BerT;

    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v1, -0x78

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>(B)V

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$BerT;->d:Lcom/alipay/nfc/tech/Iso7816$BerT;

    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v1, -0x7c

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>(B)V

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$BerT;->e:Lcom/alipay/nfc/tech/Iso7816$BerT;

    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v1, 0x61

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>(B)V

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$BerT;->f:Lcom/alipay/nfc/tech/Iso7816$BerT;

    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v1, 0x4f

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>(B)V

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$BerT;->g:Lcom/alipay/nfc/tech/Iso7816$BerT;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>([B)V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/Iso7816;-><init>([B)V

    return-void
.end method

.method public static b([BI)I
    .locals 3

    const/4 v0, 0x1

    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    :goto_0
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public static c([BI)Lcom/alipay/nfc/tech/Iso7816$BerT;
    .locals 2

    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    invoke-static {p0, p1}, Lcom/alipay/nfc/tech/Iso7816$BerT;->b([BI)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/nfc/tech/Iso7816$BerT;->b:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
