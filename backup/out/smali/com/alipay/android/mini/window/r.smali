.class final Lcom/alipay/android/mini/window/r;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/MiniWebActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/r;->a:Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/r;->a:Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->a(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/r;->a:Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->a(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
