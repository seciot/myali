.class public Lcom/alipay/nfc/card/pboc/PbocCard;
.super Ljava/lang/Object;


# static fields
.field protected static final a:[B

.field protected static final b:[B

.field protected static final c:[B

.field protected static final d:[B


# instance fields
.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/nfc/card/pboc/LogInfoInner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->a:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->b:[B

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->c:[B

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    sput-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->d:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x3ft
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x10t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x31t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data
.end method

.method protected constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a()Lcom/alipay/nfc/tech/Iso7816$ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$ID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/res/Resources;)Lcom/alipay/nfc/model/CardInfo;
    .locals 2

    const-string/jumbo v0, "android.nfc.extra.TAG"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    invoke-static {v0}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;-><init>(Landroid/nfc/tech/IsoDep;)V

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c()V

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->d()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->e()V

    if-eqz v0, :cond_9

    :goto_1
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/alipay/nfc/card/pboc/PbocCard;->a()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/MyBankCard;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/MyBankCard;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->d()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/ShenzhenTong;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->d()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/BeijingMunicipal;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->d()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/ChanganTong;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/ChanganTong;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->d()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/WuhanTong;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/WuhanTong;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->d()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    :cond_6
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/YangchengTong;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/YangchengTong;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->d()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    :cond_7
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/SuzhouTong;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/SuzhouTong;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->d()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {v1, p1}, Lcom/alipay/nfc/card/pboc/HardReader;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;Landroid/content/res/Resources;)Lcom/alipay/nfc/card/pboc/HardReader;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/alipay/nfc/card/pboc/UnknownCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/UnknownCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method private static a(Lcom/alipay/nfc/tech/Iso7816$Response;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/nfc/tech/Iso7816$Response;",
            "Ljava/util/ArrayList",
            "<[B>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816$Response;->b()[B

    move-result-object v2

    array-length v1, v2

    add-int/lit8 v3, v1, -0x17

    if-ltz v3, :cond_0

    :goto_1
    if-gt v0, v3, :cond_2

    add-int/lit8 v1, v0, 0x17

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static b(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/nfc/tech/Iso7816$Tag;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    const/16 v3, 0xa

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b()Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lcom/alipay/nfc/card/pboc/PbocCard;->a(Lcom/alipay/nfc/tech/Iso7816$Response;Ljava/util/ArrayList;)Z

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-gt v0, v3, :cond_0

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(II)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/nfc/card/pboc/PbocCard;->a(Lcom/alipay/nfc/tech/Iso7816$Response;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/alipay/nfc/model/CardInfo;
    .locals 5

    new-instance v2, Lcom/alipay/nfc/model/CardInfo;

    invoke-direct {v2}, Lcom/alipay/nfc/model/CardInfo;-><init>()V

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/model/CardInfo;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/model/CardInfo;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/model/CardInfo;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getCardTypeEnumByCode(Ljava/lang/String;)Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/model/CardInfo;->a(Lcom/alipay/nfc/model/CardTypeEnum;)V

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/model/CardInfo;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/model/CardInfo;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/model/CardInfo;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/model/CardInfo;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/model/CardInfo;->f(Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/nfc/model/CardInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "balance_limit"

    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/nfc/model/CardInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "trans_limit"

    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->m:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/nfc/model/CardInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "idcard"

    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->n:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/nfc/model/CardInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "card_desc"

    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->q:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/nfc/model/CardInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->s:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/nfc/card/pboc/LogInfoInner;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/nfc/model/CardInfo;->a(Lcom/alipay/nfc/model/LogInfo;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/alipay/nfc/model/LogInfo;

    invoke-direct {v1}, Lcom/alipay/nfc/model/LogInfo;-><init>()V

    iget-object v4, v0, Lcom/alipay/nfc/card/pboc/LogInfoInner;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/nfc/model/LogInfo;->a(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/nfc/card/pboc/LogInfoInner;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/nfc/model/LogInfo;->b(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/nfc/card/pboc/LogInfoInner;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/nfc/model/LogInfo;->c(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/nfc/card/pboc/LogInfoInner;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/nfc/model/LogInfo;->d(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/LogInfo;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method protected final a(Lcom/alipay/nfc/tech/Iso7816$Response;)V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->a()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->k:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->b()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/nfc/Util;->a([BII)I

    move-result v0

    const v1, 0x186a0

    if-gt v0, v1, :cond_2

    const v1, -0x186a0

    if-ge v0, v1, :cond_3

    :cond_2
    const/high16 v1, -0x8000

    sub-int/2addr v0, v1

    :cond_3
    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/alipay/nfc/Util;->a(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final a(Lcom/alipay/nfc/tech/Iso7816$Response;IZ)V
    .locals 9

    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->a()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->b()[B

    move-result-object v1

    if-lez p2, :cond_2

    const/16 v0, 0xa

    if-le p2, v0, :cond_3

    :cond_2
    const/16 v0, 0xc

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/alipay/nfc/Util;->b([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->g:Ljava/lang/String;

    :goto_1
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    aget-byte v0, v1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->h:Ljava/lang/String;

    const-string/jumbo v0, "%02X%02X.%02X.%02X - %02X%02X.%02X.%02X"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x14

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x15

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x16

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x17

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x18

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x19

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x1a

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x1b

    aget-byte v1, v1, v4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {v1, p2}, Lcom/alipay/nfc/Util;->a([BI)I

    move-result v0

    :goto_3
    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide v5, 0xffffffffL

    int-to-long v7, v0

    and-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    rsub-int/lit8 v0, p2, 0x14

    invoke-static {v1, v0, p2}, Lcom/alipay/nfc/Util;->a([BII)I

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method protected final varargs a([Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->s:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v0, p1, v2

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "<br />--------------"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x5

    const/4 v6, 0x4

    invoke-static {v0, v1, v6}, Lcom/alipay/nfc/Util;->a([BII)I

    move-result v6

    if-lez v6, :cond_1

    new-instance v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;

    invoke-direct {v7}, Lcom/alipay/nfc/card/pboc/LogInfoInner;-><init>()V

    const-string/jumbo v1, "%02X%02X.%02X.%02X %02X:%02X "

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x10

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x11

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x12

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x13

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/16 v10, 0x14

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/16 v10, 0x15

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const/16 v10, 0x16

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->a:Ljava/lang/String;

    const-string/jumbo v1, "<br />"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->a:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    aget-byte v1, v0, v1

    const/4 v8, 0x6

    if-eq v1, v8, :cond_2

    const/16 v1, 0x9

    aget-byte v1, v0, v1

    const/16 v8, 0x9

    if-ne v1, v8, :cond_3

    :cond_2
    const/16 v1, 0x2d

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v6, v6

    const/high16 v8, 0x42c8

    div-float/2addr v6, v8

    invoke-static {v6}, Lcom/alipay/nfc/Util;->a(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->b:Ljava/lang/String;

    iget-object v1, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    const/4 v6, 0x3

    invoke-static {v0, v1, v6}, Lcom/alipay/nfc/Util;->a([BII)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " ["

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xa

    const/4 v8, 0x6

    invoke-static {v0, v6, v8}, Lcom/alipay/nfc/Util;->b([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->d:Ljava/lang/String;

    iget-object v0, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->s:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x2b

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->r:Ljava/lang/String;

    return-void
.end method
