.class public final Lcom/alipay/android/app/AlarmReciver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/AlarmReciver;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x0

    sget-boolean v0, Lcom/alipay/android/app/AlarmReciver;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/AlarmReciver;->a:Z

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/android/app/AlarmReciver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "alipay.intent.action.MONITOR"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb80

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->b()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "alipay.intent.action.MONITOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/monitor/TaskManager;->a()Lcom/alipay/android/app/monitor/TaskManager;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/monitor/TaskManager;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/monitor/TaskManager;->a()Lcom/alipay/android/app/monitor/TaskManager;

    move-result-object v0

    const-string/jumbo v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/monitor/TaskManager;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/net/MspHttpClient;->a()Lcom/alipay/android/app/net/MspHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/MspHttpClient;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
