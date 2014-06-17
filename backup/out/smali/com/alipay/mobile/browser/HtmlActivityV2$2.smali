.class Lcom/alipay/mobile/browser/HtmlActivityV2$2;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/browser/HtmlActivityV2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2$2;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2$2;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;

    iput-object p2, v1, Lcom/alipay/mobile/browser/HtmlActivityV2;->loadUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2$2;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;

    #getter for: Lcom/alipay/mobile/browser/HtmlActivityV2;->c:Z
    invoke-static {v1}, Lcom/alipay/mobile/browser/HtmlActivityV2;->access$000(Lcom/alipay/mobile/browser/HtmlActivityV2;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2$2;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;

    #getter for: Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;
    invoke-static {v1}, Lcom/alipay/mobile/browser/HtmlActivityV2;->access$100(Lcom/alipay/mobile/browser/HtmlActivityV2;)Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/browser/HtmlActivityV2$2;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;

    invoke-virtual {v1, v2, p1, p2}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->callBackWhenURLLoding(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
