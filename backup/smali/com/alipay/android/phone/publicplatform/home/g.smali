.class final Lcom/alipay/android/phone/publicplatform/home/g;
.super Landroid/content/BroadcastReceiver;
.source "PublicHomeWidgetGroup.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/home/g;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string/jumbo v1, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const-string/jumbo v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string/jumbo v1, "20000101"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/g;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->n:Z
    invoke-static {v0, v1}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$202(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;Z)Z

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/g;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    const/4 v1, 0x0

    #setter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->n:Z
    invoke-static {v0, v1}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$202(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;Z)Z

    goto :goto_0
.end method
