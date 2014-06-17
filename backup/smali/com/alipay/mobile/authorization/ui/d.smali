.class final Lcom/alipay/mobile/authorization/ui/d;
.super Landroid/webkit/WebViewClient;
.source "AuthorizationCheckProtocol.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/authorization/ui/d;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method
