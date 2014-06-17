.class final Lcom/alipay/android/phone/home/widget/i;
.super Ljava/util/TimerTask;
.source "HomeWidgetGroup.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/i;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.intent.action.UPDATETODOLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v1, "refreshNow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/i;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    iget-object v1, v1, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 144
    return-void
.end method
