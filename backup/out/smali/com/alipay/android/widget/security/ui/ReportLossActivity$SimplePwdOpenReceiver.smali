.class final Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/widget/security/ui/ReportLossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimplePwdOpenReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/ReportLossActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/android/widget/security/ui/ReportLossActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;->a:Lcom/alipay/android/widget/security/ui/ReportLossActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/widget/security/ui/ReportLossActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;-><init>(Lcom/alipay/android/widget/security/ui/ReportLossActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "openResult"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;->a:Lcom/alipay/android/widget/security/ui/ReportLossActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->b()V

    :cond_0
    return-void
.end method
