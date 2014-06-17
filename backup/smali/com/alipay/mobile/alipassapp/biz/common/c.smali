.class public final Lcom/alipay/mobile/alipassapp/biz/common/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alipay/mobile/alipassapp/biz/common/a;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0xa

    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;-><init>()V

    invoke-virtual {p3, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setPassBaseInfo(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getEvoucherInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setType(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getEvoucherInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setChildType(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getFileInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getFileInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;->getSerialNumber()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getFileInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;->getSerialNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setSerialNumber(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getPlatform()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getPlatform()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;->getChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setPartnerId(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getMerchant()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;->getMname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setLogoText(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u53ef\u4f7f\u7528"

    const-string/jumbo v6, ""

    invoke-direct {v3, v4, v9, v5, v6}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setHeadFields(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getEvoucherInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setPrimaryFields(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getEvoucherInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->getEndDate()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "\u6709\u6548\u671f\u81f3\uff1a"

    aget-object v3, v3, v0

    const-string/jumbo v7, ""

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setSecondaryFields(Ljava/util/List;)V

    new-instance v2, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;-><init>()V

    const-string/jumbo v3, ".alipass"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".alipass"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/alipassapp/biz/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_5

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "logo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->setLogo(Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "strip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->setStrip(Ljava/lang/String;)V

    invoke-virtual {p3, v9}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setPrimaryFields(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getStyle()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;->getBackgroundColorString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->setBackgroundColor(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setDisplayInfo(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getEvoucherInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->geteInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;->getBarcodeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    const-string/jumbo v3, "qrcode"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "barcode"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_7
    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;->getAltText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;->getMessageEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "stamp"

    const-string/jumbo v4, ""

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p3, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setOperation(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getEvoucherInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->getLocations()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getMerchant()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;->getMname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->getAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "\u4f18\u60e0\u8be6\u60c5"

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getEvoucherInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "\u53ef\u7528\u95e8\u5e97"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, ""

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "\u514d\u8d23\u7533\u660e"

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->getEvoucherInfo()Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->getDisclaimer()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setBackFields(Ljava/util/List;)V

    return-object p3
.end method
