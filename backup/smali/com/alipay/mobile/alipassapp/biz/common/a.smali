.class public final Lcom/alipay/mobile/alipassapp/biz/common/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "alipassDir"

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/a;->b:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    .locals 9

    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "pass.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-direct {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;-><init>()V

    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-static {v4}, Lcom/alipay/mobile/alipassapp/a/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    if-nez v5, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    :try_start_3
    const-string/jumbo v0, "fileInfo"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v1, "formatVersion"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;-><init>()V

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;

    const-string/jumbo v1, "platform"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;

    invoke-static {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->setPlatform(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;)V

    :cond_1
    const-string/jumbo v1, "evoucherInfo"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    invoke-static {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->setEvoucherInfo(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;)V

    const-string/jumbo v2, "type"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->setType(Ljava/lang/String;)V

    const-string/jumbo v2, "product"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->setProduct(Ljava/lang/String;)V

    const-string/jumbo v2, "einfo"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    const-class v8, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;

    invoke-static {v2, v8}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->seteInfo(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;)V

    const-string/jumbo v8, "barcode"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;

    invoke-static {v7, v8}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;->setBarcodeList(Ljava/util/List;)V

    :cond_2
    const-string/jumbo v2, "locations"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v2

    const-class v6, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;

    invoke-static {v2, v6}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;->setLocations(Ljava/util/List;)V

    :cond_3
    const-string/jumbo v1, "style"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;

    invoke-static {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->setStyle(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;)V

    :cond_4
    const-string/jumbo v1, "merchant"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;

    invoke-static {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->setMerchant(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;)V

    :cond_5
    const-string/jumbo v1, "fileInfo"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;

    invoke-static {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->setFileInfo(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;)V

    :cond_6
    const-string/jumbo v1, "can_use"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->setStatus(Ljava/lang/String;)V

    invoke-static {p0, p2, v0, v3}, Lcom/alipay/mobile/alipassapp/biz/common/c;->a(Lcom/alipay/mobile/alipassapp/biz/common/a;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    :cond_7
    :goto_2
    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;-><init>()V

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setPassBaseInfo(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setDisplayInfo(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V

    :cond_8
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "logo.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->setLogo(Ljava/lang/String;)V

    :cond_9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "icon.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->setIcon(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "strip.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->setStrip(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_b
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_c
    :goto_3
    move-object v0, v3

    goto/16 :goto_1

    :cond_d
    :try_start_5
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v5, v3}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v0, v4

    :goto_4
    if-eqz v0, :cond_c

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_5
    if-eqz v4, :cond_e

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_e
    :goto_6
    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4
.end method

.method private b(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    if-eqz v3, :cond_5

    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/alipassapp/biz/common/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    const/16 v1, 0x2800

    :try_start_2
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_1
    :goto_4
    return v0

    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/common/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-result-object v3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_6
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_7
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_7
    :goto_9
    throw v0

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catch_8
    move-exception v2

    move-object v2, v1

    goto :goto_2

    :catch_9
    move-exception v2

    move-object v2, v3

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/alipassapp/biz/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/alipassapp/biz/common/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/common/a;->a:Landroid/content/Context;

    const-string/jumbo v2, "alipassDir"

    invoke-static {v1, v2}, Lcom/alipay/mobile/alipassapp/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/biz/common/a;->b(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".alipass"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/alipassapp/biz/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/alipassapp/biz/common/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/helper/ZipHelper;->unZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/common/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/alipassapp/biz/common/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    const/16 v3, 0x2000

    :try_start_2
    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_0
    :goto_2
    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_1
    :goto_4
    return-object v0

    :cond_2
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v2, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_3

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_3
    :goto_7
    if-eqz v1, :cond_4

    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_4
    :goto_8
    throw v0

    :catch_3
    move-exception v0

    move-object v0, v1

    :goto_9
    if-eqz v2, :cond_1

    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_5

    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_5
    :goto_a
    throw v0

    :catch_5
    move-exception v2

    goto :goto_5

    :catch_6
    move-exception v2

    goto :goto_2

    :catch_7
    move-exception v2

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_8

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v1

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_1

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_4

    :cond_7
    move-object v2, v0

    goto :goto_3
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/alipassapp/biz/common/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :try_start_0
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/a/b;->a(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/a/b;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/a/b;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/a/b;->a(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method
