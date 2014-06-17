.class Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity$1;->a:Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity$1;->a:Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity$1;->a:Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "onlinehelp.test.alipay.net"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "onlinehelp.test.alipay.net"

    const-string/jumbo v1, "10.20.155.18"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string/jumbo v0, "portal.manjushri.alibaba.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "portal.manjushri.alibaba.com"

    const-string/jumbo v1, "10.20.155.18"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string/jumbo v0, "onlinehelp.alipay.net"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "onlinehelp.alipay.net"

    const-string/jumbo v1, "10.20.155.18"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    const-string/jumbo v0, "target=_blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity$1;->a:Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/RobotXiaoBaoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
