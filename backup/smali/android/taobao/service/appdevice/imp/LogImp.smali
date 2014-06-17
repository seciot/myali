.class public Landroid/taobao/service/appdevice/imp/LogImp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/taobao/service/appdevice/i/ILog;


# static fields
.field private static a:Landroid/taobao/service/appdevice/imp/LogImp;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/taobao/service/appdevice/imp/LogImp;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/service/appdevice/imp/LogImp;
    .locals 1

    sget-object v0, Landroid/taobao/service/appdevice/imp/LogImp;->a:Landroid/taobao/service/appdevice/imp/LogImp;

    if-nez v0, :cond_0

    new-instance v0, Landroid/taobao/service/appdevice/imp/LogImp;

    invoke-direct {v0}, Landroid/taobao/service/appdevice/imp/LogImp;-><init>()V

    sput-object v0, Landroid/taobao/service/appdevice/imp/LogImp;->a:Landroid/taobao/service/appdevice/imp/LogImp;

    :cond_0
    sget-object v0, Landroid/taobao/service/appdevice/imp/LogImp;->a:Landroid/taobao/service/appdevice/imp/LogImp;

    return-object v0
.end method


# virtual methods
.method public Logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v0, Landroid/taobao/service/appdevice/imp/LogImp;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public Loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v0, Landroid/taobao/service/appdevice/imp/LogImp;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public Logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v0, Landroid/taobao/service/appdevice/imp/LogImp;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public Logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v0, Landroid/taobao/service/appdevice/imp/LogImp;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public Logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v0, Landroid/taobao/service/appdevice/imp/LogImp;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getLogStatus()Z
    .locals 1

    sget-boolean v0, Landroid/taobao/service/appdevice/imp/LogImp;->b:Z

    return v0
.end method

.method public setLogSwitcher(Z)V
    .locals 0

    sput-boolean p1, Landroid/taobao/service/appdevice/imp/LogImp;->b:Z

    return-void
.end method
