.class public Lcom/alipay/mobile/phonecashier/AccountChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "switchaccount"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    :cond_0
    return-void
.end method
