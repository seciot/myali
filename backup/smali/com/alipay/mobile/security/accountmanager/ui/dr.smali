.class final Lcom/alipay/mobile/security/accountmanager/ui/dr;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dr;->a:Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dr;->a:Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dr;->a:Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dr;->a:Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
