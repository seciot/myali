.class final Lcom/alipay/android/mini/window/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/alipay/android/mini/window/GuideWindow;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/GuideWindow;Landroid/widget/EditText;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/h;->d:Lcom/alipay/android/mini/window/GuideWindow;

    iput-object p2, p0, Lcom/alipay/android/mini/window/h;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alipay/android/mini/window/h;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/alipay/android/mini/window/h;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/h;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/h;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/widget/EditText;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/h;->d:Lcom/alipay/android/mini/window/GuideWindow;

    invoke-static {v0}, Lcom/alipay/android/mini/window/GuideWindow;->a(Lcom/alipay/android/mini/window/GuideWindow;)Z

    iget-object v0, p0, Lcom/alipay/android/mini/window/h;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/mini/window/h;->d:Lcom/alipay/android/mini/window/GuideWindow;

    invoke-static {v1}, Lcom/alipay/android/mini/window/GuideWindow;->b(Lcom/alipay/android/mini/window/GuideWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/h;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/h;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
