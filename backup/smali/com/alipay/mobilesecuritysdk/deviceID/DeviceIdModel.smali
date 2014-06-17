.class public Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

.field private b:Lcom/alipay/mobilesecuritysdk/deviceID/Profile;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-direct {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    new-instance v0, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;

    invoke-direct {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b:Lcom/alipay/mobilesecuritysdk/deviceID/Profile;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "deviceid"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "device"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "device"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "deviceid"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "deviceId"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "checkcode"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "apdtk"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "time"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rule"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, ".SystemConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "device"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->d()Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "deviceId"

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "priDeviceId"

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "time"

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "checkcode"

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "rule"

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "apdtk"

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;

    invoke-direct {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "deviceid"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b:Lcom/alipay/mobilesecuritysdk/deviceID/Profile;

    const-string/jumbo v2, "profiles"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;->a(Landroid/content/SharedPreferences;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->d()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, ".SystemConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v3, "device"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private c()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v2}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v2

    move v2, v6

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AC1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AC2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AH1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AH2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_5
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AH3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_6
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AH4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_7
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AH5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_8
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AH6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    :goto_9
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AH7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    :goto_a
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AH8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    :goto_b
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AH9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    :goto_c
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AH10"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_d
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AS1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    :goto_e
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AS2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->t()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    :goto_f
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AS3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_11
    :goto_10
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AS4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->v()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_12
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_11

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x14

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/util/List;)V

    return-void
.end method

.method private d()Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;

    invoke-direct {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->a(Z)V

    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b:Lcom/alipay/mobilesecuritysdk/deviceID/Profile;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "AH1"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "AH2"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "AH3"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "AH4"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "AH5"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->k()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "AH6"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "AH7"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "AH8"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->n()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "AH9"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->o()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "AH10"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->p()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "AS1"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->s()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "AS2"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->t()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->u()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string/jumbo v3, "AS3"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->u()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "AS4"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->v()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "AC1"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v3, "AC2"

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    const-string/jumbo v3, "deviceInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v2}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "deviceId"

    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v2}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "priDeviceId"

    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v2}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "appId"

    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v2}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "time"

    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v2}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "apdtk"

    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gez v2, :cond_16

    :cond_5
    :goto_10
    return-object v0

    :cond_6
    const-string/jumbo v3, "AH1"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "AH2"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v3, "AH3"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v3, "AH4"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v3, "AH4"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v3, "AH6"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_c
    const-string/jumbo v3, "AH7"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_d
    const-string/jumbo v3, "AH8"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_e
    const-string/jumbo v3, "AH9"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_f
    const-string/jumbo v3, "AH10"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_10
    const-string/jumbo v3, "AS1"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_11
    const-string/jumbo v3, "AS2"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_12
    const-string/jumbo v3, "AS3"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_13
    const-string/jumbo v3, "AS4"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_14
    const-string/jumbo v3, "AC1"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :cond_15
    const-string/jumbo v3, "AC2"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_16
    :try_start_0
    new-instance v2, LHttpUtils/HttpFetcher;

    invoke-direct {v2}, LHttpUtils/HttpFetcher;-><init>()V

    const-string/jumbo v2, "https://seccliprod.alipay.com/api/do.htm"

    const-string/jumbo v3, "deviceFingerprint"

    const-string/jumbo v4, "1"

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, LHttpUtils/HttpFetcher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_17

    new-instance v2, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;

    invoke-direct {v2}, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;->a(Ljava/lang/String;)Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;

    move-result-object v0

    goto/16 :goto_10

    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V

    goto/16 :goto_10
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b:Lcom/alipay/mobilesecuritysdk/deviceID/Profile;

    const-string/jumbo v1, "profiles"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "deviceid"

    invoke-static {v1, v2}, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/SecurityUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;

    invoke-direct {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;-><init>()V

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/Profile;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4

    const/16 v3, 0x20

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->a()Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;

    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "tid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    const-string/jumbo v0, "tid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->e(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "utdid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    const-string/jumbo v0, "utdid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->f(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->g(Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->h(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->i(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->j(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->k(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->l(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->m(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->n(Ljava/lang/String;)V

    :cond_9
    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->o(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->p(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->s(Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->t(Ljava/lang/String;)V

    :cond_d
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->u(Ljava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->v(Ljava/lang/String;)V

    :cond_f
    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-static {p1}, Lcom/alipay/mobilesecuritysdk/deviceID/CollectDeviceInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->a(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_14

    const-string/jumbo v0, "apdtk"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    const-string/jumbo v0, "apdtk"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->r(Ljava/lang/String;)V

    :cond_11
    const-string/jumbo v0, "deviceId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    const-string/jumbo v0, "deviceId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->c(Ljava/lang/String;)V

    :cond_12
    const-string/jumbo v0, "time"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    const-string/jumbo v0, "time"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->q(Ljava/lang/String;)V

    :cond_13
    const-string/jumbo v0, "rule"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    const-string/jumbo v0, "rule"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->d(Ljava/lang/String;)V

    :cond_14
    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_16

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->b(Ljava/lang/String;)V

    :cond_15
    :goto_0
    return-void

    :cond_16
    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_15

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v0

    :goto_1
    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v0

    :goto_2
    if-eqz v2, :cond_7

    :goto_3
    invoke-static {p2}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v0, :cond_1

    const-string/jumbo v0, "priDeviceId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "time"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "priDeviceId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "checkcode"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    :cond_2
    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v4, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v4}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_b

    if-eqz v0, :cond_4

    if-nez v2, :cond_a

    :cond_4
    :goto_5
    if-eqz v1, :cond_b

    const-string/jumbo v0, "apdid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    move v2, v1

    goto/16 :goto_1

    :cond_6
    move v2, v1

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_3

    :cond_8
    invoke-static {v4}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;

    invoke-virtual {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceMetaData;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4

    :cond_9
    move v3, v1

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5

    :cond_b
    invoke-direct {p0, p1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
