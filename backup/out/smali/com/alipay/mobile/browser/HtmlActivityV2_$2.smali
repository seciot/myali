.class Lcom/alipay/mobile/browser/HtmlActivityV2_$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/browser/HtmlActivityV2_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/browser/HtmlActivityV2_;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2_$2;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2_$2;->this$0:Lcom/alipay/mobile/browser/HtmlActivityV2_;

    #calls: Lcom/alipay/mobile/browser/HtmlActivityV2;->loadUrl()V
    invoke-static {v0}, Lcom/alipay/mobile/browser/HtmlActivityV2_;->access$101(Lcom/alipay/mobile/browser/HtmlActivityV2_;)V

    return-void
.end method
