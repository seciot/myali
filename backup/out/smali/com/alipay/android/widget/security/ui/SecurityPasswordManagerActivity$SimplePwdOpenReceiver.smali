.class final Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimplePwdOpenReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V

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

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b(Z)V

    goto :goto_0
.end method
