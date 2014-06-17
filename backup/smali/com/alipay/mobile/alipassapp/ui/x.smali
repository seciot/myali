.class final Lcom/alipay/mobile/alipassapp/ui/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/x;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/x;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->b(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/x;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
