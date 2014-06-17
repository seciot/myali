.class Lcom/alipay/mobile/browser/HtmlActivityV2$1;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/browser/HtmlActivityV2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;

    iget-object v0, v0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;

    iget-object v0, v0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2$1;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2;

    iget-object v0, v0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
