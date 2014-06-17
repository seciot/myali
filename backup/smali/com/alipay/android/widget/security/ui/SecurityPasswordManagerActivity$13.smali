.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$13;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v0, "1830"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$13;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1831"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$13;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$13;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->f(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "700"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$13;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    const-string/jumbo v2, "tel:95188"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$13;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
