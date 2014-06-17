.class public Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;
.super Lcom/alipay/mobile/alipassapp/biz/model/f;


# instance fields
.field evoucherInfo:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

.field fileInfo:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;

.field merchant:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;

.field platform:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;

.field status:Ljava/lang/String;

.field style:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;

.field tradeInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/model/f;-><init>()V

    return-void
.end method

.method public static resolveColor(Ljava/lang/String;)I
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "\\(.*\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\(|,|\\)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEvoucherInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->evoucherInfo:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    return-object v0
.end method

.method public getFileInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->fileInfo:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;

    return-object v0
.end method

.method public getMerchant()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->merchant:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;

    return-object v0
.end method

.method public getPlatform()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->platform:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->style:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;

    return-object v0
.end method

.method public getTradeInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->tradeInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setEvoucherInfo(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->evoucherInfo:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    return-void
.end method

.method public setFileInfo(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->fileInfo:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;

    return-void
.end method

.method public setMerchant(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->merchant:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;

    return-void
.end method

.method public setPlatform(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->platform:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->status:Ljava/lang/String;

    return-void
.end method

.method public setStyle(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->style:Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;

    return-void
.end method

.method public setTradeInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->tradeInfo:Ljava/lang/String;

    return-void
.end method
