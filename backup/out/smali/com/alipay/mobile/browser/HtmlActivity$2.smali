.class Lcom/alipay/mobile/browser/HtmlActivity$2;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/browser/HtmlActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/browser/HtmlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/HtmlActivity$2;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity$2;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/browser/HtmlActivity;->processCustomLogic(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
