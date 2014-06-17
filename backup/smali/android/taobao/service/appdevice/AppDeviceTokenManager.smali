.class public final Landroid/taobao/service/appdevice/AppDeviceTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/taobao/service/appdevice/IAppDeviceTokenManager;


# static fields
.field private static a:Landroid/taobao/service/appdevice/AppDeviceTokenManager;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->c:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "deviceId_jsoniInfo:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/service/appdevice/AppDeviceTokenManager;
    .locals 2

    const-class v1, Landroid/taobao/service/appdevice/AppDeviceTokenManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->a:Landroid/taobao/service/appdevice/AppDeviceTokenManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/taobao/service/appdevice/AppDeviceTokenManager;

    invoke-direct {v0}, Landroid/taobao/service/appdevice/AppDeviceTokenManager;-><init>()V

    sput-object v0, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->a:Landroid/taobao/service/appdevice/AppDeviceTokenManager;

    :cond_0
    sget-object v0, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->a:Landroid/taobao/service/appdevice/AppDeviceTokenManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final clear(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "deviceId_store"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v1, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getAppDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->getAppDeviceToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppDeviceToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-string/jumbo v0, "deviceId_store"

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p2}, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "DeviceIdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mydeviceId  getSharedPreferences  deviceInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/service/appdevice/util/LogHelper;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;

    invoke-direct {v0}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;-><init>()V

    const-string/jumbo v2, "mtop.sys.newDeviceId"

    invoke-virtual {v0, v2}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    const-string/jumbo v2, "4.0"

    invoke-virtual {v0, v2}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->getTtId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    const-string/jumbo v2, "new_device"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    const-string/jumbo v0, "deviceId_store"

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2}, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object v1

    :cond_1
    const-string/jumbo v3, "device_global_id"

    invoke-virtual {v0, v3, v2}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "c0"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "c1"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "c2"

    invoke-static {p1}, Landroid/taobao/service/appdevice/util/PhoneInfo;->getOriginalImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "c3"

    invoke-static {p1}, Landroid/taobao/service/appdevice/util/PhoneInfo;->getOriginalImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "c4"

    invoke-static {p1}, Landroid/taobao/service/appdevice/util/PhoneInfo;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "c5"

    invoke-static {}, Landroid/taobao/service/appdevice/util/PhoneInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "c6"

    invoke-static {p1}, Landroid/taobao/service/appdevice/util/PhoneInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Landroid/taobao/service/appdevice/net/mtop/MtopSyncClientV3;

    invoke-direct {v2}, Landroid/taobao/service/appdevice/net/mtop/MtopSyncClientV3;-><init>()V

    invoke-interface {v2, p2}, Landroid/taobao/service/appdevice/net/mtop/IMtopSynClient;->setDefaultAppkey(Ljava/lang/String;)V

    invoke-interface {v2, p3}, Landroid/taobao/service/appdevice/net/mtop/IMtopSynClient;->setDefaultAppSecret(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/taobao/service/appdevice/util/MTopUtils;->getMTopUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/taobao/service/appdevice/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    invoke-interface {v2, p1, v0}, Landroid/taobao/service/appdevice/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Landroid/taobao/service/appdevice/net/mtop/MtopRequest;)Landroid/taobao/service/appdevice/net/mtop/Result;

    move-result-object v0

    const-string/jumbo v2, "DeviceIdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "data:["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/mtop/Result;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/service/appdevice/util/LogHelper;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/mtop/Result;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "device_id"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    move-object v1, v0

    goto/16 :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final getTtId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "deviceid_app_tt_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final setAppTTID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "deviceid_app_tt_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setDeviceUTDID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->b:Ljava/lang/String;

    return-void
.end method
