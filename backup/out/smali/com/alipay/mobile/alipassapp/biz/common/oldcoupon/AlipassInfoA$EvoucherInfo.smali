.class public final Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;
.super Ljava/lang/Object;


# instance fields
.field description:Ljava/lang/String;

.field disclaimer:Ljava/lang/String;

.field eInfo:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;

.field endDate:Ljava/lang/String;

.field goodsId:Ljava/lang/String;

.field locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;",
            ">;"
        }
    .end annotation
.end field

.field product:Ljava/lang/String;

.field startDate:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisclaimer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->disclaimer:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndDate()Ljava/lang/String;
    .locals 3

    const/16 v2, 0xa

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->endDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->endDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->endDate:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->endDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getGoodsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->locations:Ljava/util/List;

    return-object v0
.end method

.method public final getProduct()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartDate()Ljava/lang/String;
    .locals 3

    const/16 v2, 0xa

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->startDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->startDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->startDate:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->startDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final geteInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->eInfo:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDisclaimer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->disclaimer:Ljava/lang/String;

    return-void
.end method

.method public final setEndDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->endDate:Ljava/lang/String;

    return-void
.end method

.method public final setGoodsId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public final setLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->locations:Ljava/util/List;

    return-void
.end method

.method public final setProduct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->product:Ljava/lang/String;

    return-void
.end method

.method public final setStartDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->startDate:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public final seteInfo(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->eInfo:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;

    return-void
.end method
