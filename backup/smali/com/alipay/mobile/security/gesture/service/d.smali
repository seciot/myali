.class final Lcom/alipay/mobile/security/gesture/service/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/service/d;->a:Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/d;->a:Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->b:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    const-string/jumbo v1, "com.alipay.mobile.security.gesture.ui.GestureActivity_"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.android.app.activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/d;->a:Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->a:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateGesture()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
