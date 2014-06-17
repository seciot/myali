.class public Landroid/taobao/service/appdevice/net/mtop/MtopRequestHelper;
.super Ljava/lang/Object;


# static fields
.field public static final SPLIT_STR:Ljava/lang/String; = "&"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppKeyAndAppSecret(Landroid/taobao/service/appdevice/net/mtop/MtopRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->setAppKey(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->setAppSecret(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUrlWithRequestParams(Landroid/content/Context;Landroid/taobao/service/appdevice/net/mtop/MtopRequest;)Landroid/taobao/service/appdevice/net/async/RequestParams;
    .locals 20

    new-instance v19, Landroid/taobao/service/appdevice/net/async/RequestParams;

    invoke-direct/range {v19 .. v19}, Landroid/taobao/service/appdevice/net/async/RequestParams;-><init>()V

    const-string/jumbo v1, "api"

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getApi()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "v"

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getV()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/taobao/service/appdevice/net/mtop/MtopRequestHelper;->getTime()J

    move-result-wide v6

    const-string/jumbo v1, "t"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Landroid/taobao/service/appdevice/util/PhoneInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "imei"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v4}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Landroid/taobao/service/appdevice/util/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "imsi"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v5}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ttid"

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getTtId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "appKey"

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getAppKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "deviceId"

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getAppKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getAppSecret()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "appKey is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "MtopRequestHelper"

    const-string/jumbo v2, "appSecret is null,to sign lib.*.*.so"

    invoke-static {v1, v2}, Landroid/taobao/service/appdevice/util/LogHelper;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getEcode()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v9}, Landroid/taobao/service/appdevice/net/mtop/MtopRequestHelper;->toV3Sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "data"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sign"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v1}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getSId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getSId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "sid"

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getSId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/taobao/service/appdevice/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v19

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getApi()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getV()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->getEcode()Ljava/lang/String;

    move-result-object v18

    move-object v13, v4

    move-object v14, v5

    move-wide v15, v6

    move-object/from16 v17, v8

    invoke-static/range {v9 .. v18}, Landroid/taobao/service/appdevice/net/mtop/MtopRequestHelper;->toV3Sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static toV3Sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v0, Lcom/taobao/securityjni/SecretUtil;

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/SecretUtil;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toV3Sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/taobao/service/appdevice/util/DigestUtils;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p9, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p8, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/taobao/service/appdevice/util/DigestUtils;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/taobao/service/appdevice/util/DigestUtils;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method
