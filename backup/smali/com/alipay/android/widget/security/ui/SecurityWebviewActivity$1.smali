.class Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$1;
.super Landroid/webkit/WebView;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    iget-object v2, v2, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    iget-object v3, v3, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$1;->onScrollChanged(IIII)V

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
