.class public final Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;
.super Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;
.source "PublicHomeWidgetGroupReceiver_.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->reload(Z)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;->a:Landroid/content/Context;

    .line 24
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.method public final reload(Z)V
    .locals 1
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/alipay/android/phone/publicplatform/receiver/b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/publicplatform/receiver/b;-><init>(Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method
