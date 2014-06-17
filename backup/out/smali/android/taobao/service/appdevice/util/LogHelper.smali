.class public final Landroid/taobao/service/appdevice/util/LogHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/taobao/service/appdevice/imp/LogImp;->getInstance()Landroid/taobao/service/appdevice/imp/LogImp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/taobao/service/appdevice/imp/LogImp;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/taobao/service/appdevice/imp/LogImp;->getInstance()Landroid/taobao/service/appdevice/imp/LogImp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/taobao/service/appdevice/imp/LogImp;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/taobao/service/appdevice/imp/LogImp;->getInstance()Landroid/taobao/service/appdevice/imp/LogImp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/taobao/service/appdevice/imp/LogImp;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/taobao/service/appdevice/imp/LogImp;->getInstance()Landroid/taobao/service/appdevice/imp/LogImp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/taobao/service/appdevice/imp/LogImp;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/taobao/service/appdevice/imp/LogImp;->getInstance()Landroid/taobao/service/appdevice/imp/LogImp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/taobao/service/appdevice/imp/LogImp;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
