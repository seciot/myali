.class Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;

.field final synthetic val$htmlActivity:Lcom/alipay/mobile/browser/HtmlActivityV2;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;->this$0:Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;

    iput-object p2, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;->val$htmlActivity:Lcom/alipay/mobile/browser/HtmlActivityV2;

    iput-object p3, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;->val$view:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;->this$0:Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;

    #getter for: Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->a:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->access$000(Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;->this$0:Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;

    iget-object v1, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;->val$htmlActivity:Lcom/alipay/mobile/browser/HtmlActivityV2;

    iget-object v2, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;->val$view:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->forceLoginAndLoadUrl(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
