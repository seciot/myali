.class final Lcom/alipay/mobile/security/accountmanager/ui/ds;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ds;->a:Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ds;->a:Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
