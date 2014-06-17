.class Lcom/alipay/mobile/browser/HtmlActivity$3;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/browser/HtmlActivity;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/browser/HtmlActivity;Landroid/net/Uri;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/HtmlActivity$3;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    iput-object p2, p0, Lcom/alipay/mobile/browser/HtmlActivity$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/alipay/mobile/browser/HtmlActivity$3;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivity$3;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    iget-object v2, p0, Lcom/alipay/mobile/browser/HtmlActivity$3;->val$uri:Landroid/net/Uri;

    const-string/jumbo v3, "wapurl"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/browser/HtmlActivity;->getParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity$3;->val$view:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity$3;->val$view:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity$3;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/HtmlActivity;->closeWebView()V

    goto :goto_0
.end method
