.class Lcom/alipay/mobile/browser/HtmlActivity$1;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/browser/HtmlActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/browser/HtmlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/HtmlActivity$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    iget-object v0, v0, Lcom/alipay/mobile/browser/HtmlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    iget-object v0, v0, Lcom/alipay/mobile/browser/HtmlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    iget-object v0, v0, Lcom/alipay/mobile/browser/HtmlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/HtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/browser/HtmlActivity;->TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivity$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/browser/HtmlActivity;->setTitles(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/browser/HtmlActivity;->setTitles(Ljava/lang/String;)V

    goto :goto_0
.end method
