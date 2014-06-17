.class public Lcom/alipay/mobile/command/trigger/NetChangeTrigger;
.super Lcom/alipay/mobile/command/trigger/BaseTrigger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/command/trigger/BaseTrigger;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/alipay/mobile/command/util/CommandConfig;->initial(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v1, "network changed, check download policy"

    aput-object v1, v0, v3

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "----------NetworkInfo:----------"

    aput-object v2, v1, v3

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Type: "

    aput-object v2, v1, v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Type Name: "

    aput-object v2, v1, v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Available: "

    aput-object v2, v1, v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Connected: "

    aput-object v2, v1, v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v4

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/command/engine/TaskExeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "trigger_type"

    sget-object v2, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->CONNECTIVITY_CHANGE:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v1, "no Active NetworkInfo"

    aput-object v1, v0, v3

    goto :goto_0
.end method
