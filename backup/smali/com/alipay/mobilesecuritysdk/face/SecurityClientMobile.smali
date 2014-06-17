.class public Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->a:Z

    sput-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->b:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
