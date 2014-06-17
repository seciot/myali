.class public final Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;
.super Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/msgreceiver/b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/msgreceiver/b;-><init>(Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;->a:Landroid/content/Context;

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
