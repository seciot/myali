.class Lcom/alipay/mobile/browser/HtmlActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/browser/HtmlActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/browser/HtmlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/HtmlActivity$4;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity$4;->this$0:Lcom/alipay/mobile/browser/HtmlActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/HtmlActivity;->finish()V

    return-void
.end method
