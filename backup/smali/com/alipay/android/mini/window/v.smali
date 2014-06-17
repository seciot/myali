.class final Lcom/alipay/android/mini/window/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/MiniWebActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/v;->a:Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/v;->a:Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->b(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
