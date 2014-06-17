.class public final Lcom/alipay/mobile/alipassapp/biz/common/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    .locals 7

    new-instance v2, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;-><init>()V

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;-><init>()V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setDisplayInfo(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setPassBaseInfo(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setOperation(Ljava/util/List;)V

    if-eqz p0, :cond_e

    const-string/jumbo v0, "evoucherInfo"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setType(Ljava/lang/String;)V

    const-string/jumbo v1, "product"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setChildType(Ljava/lang/String;)V

    const-string/jumbo v1, "einfo"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v4, "logoText"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setLogoText(Ljava/lang/String;)V

    const-string/jumbo v4, "secondLogoText"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setSecondLogoText(Ljava/lang/String;)V

    const-string/jumbo v4, "headFields"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setHeadFields(Ljava/util/List;)V

    :cond_0
    const-string/jumbo v4, "primaryFields"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setPrimaryFields(Ljava/util/List;)V

    :cond_1
    const-string/jumbo v4, "secondaryFields"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setSecondaryFields(Ljava/util/List;)V

    :cond_2
    const-string/jumbo v4, "auxiliaryFields"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setAuxiliaryFields(Ljava/util/List;)V

    :cond_3
    const-string/jumbo v4, "backFields"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v1, v4}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setBackFields(Ljava/util/List;)V

    :cond_4
    const-string/jumbo v1, "operation"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_a

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    :try_start_0
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v5, "format"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "text"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText;

    invoke-static {v0, v5}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "app"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;

    invoke-static {v0, v5}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "barcode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "qrcode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "stamp"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "url"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "wave"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-static {v0, v5}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    const-string/jumbo v6, "img"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;

    invoke-static {v0, v5}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_a
    const-string/jumbo v0, "fileInfo"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string/jumbo v1, "serialNumber"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setSerialNumber(Ljava/lang/String;)V

    const-string/jumbo v1, "formatVersion"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setFormatVersion(Ljava/lang/String;)V

    :cond_b
    const-string/jumbo v0, "platform"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string/jumbo v1, "channelID"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setPartnerId(Ljava/lang/String;)V

    :cond_c
    const-string/jumbo v0, "appInfo"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setAppInfo(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;)V

    :cond_d
    const-string/jumbo v0, "style"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->setBackgroundColor(Ljava/lang/String;)V

    :cond_e
    return-object p1
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
