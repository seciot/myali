.class final Lcom/alipay/android/mini/window/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/UIFormWindow;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/UIFormWindow;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/mini/window/af;->a:Lcom/alipay/android/mini/window/UIFormWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/af;->b:Z

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/alipay/android/mini/window/af;->a:Lcom/alipay/android/mini/window/UIFormWindow;

    iget-object v2, v2, Lcom/alipay/android/mini/window/UIFormWindow;->r:Ljava/util/Map;

    const-string/jumbo v3, "mini_guide_img"

    new-array v4, v0, [I

    sget v5, Lcom/alipay/android/app/R$id;->x:I

    aput v5, v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/android/mini/window/af;->a:Lcom/alipay/android/mini/window/UIFormWindow;

    iget-object v2, v2, Lcom/alipay/android/mini/window/UIFormWindow;->r:Ljava/util/Map;

    const-string/jumbo v3, "mini_guide_btn"

    new-array v4, v0, [I

    sget v5, Lcom/alipay/android/app/R$id;->w:I

    aput v5, v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/alipay/android/mini/window/af;->b:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/af;->b:Z

    iget-object v2, p0, Lcom/alipay/android/mini/window/af;->a:Lcom/alipay/android/mini/window/UIFormWindow;

    invoke-static {v2}, Lcom/alipay/android/mini/window/UIFormWindow;->a(Lcom/alipay/android/mini/window/UIFormWindow;)Lcom/alipay/android/mini/window/GuideWindow;

    move-result-object v2

    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3}, Lcom/alipay/android/mini/window/GuideWindow;->a(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/mini/window/af;->a:Lcom/alipay/android/mini/window/UIFormWindow;

    iget-object v3, v3, Lcom/alipay/android/mini/window/UIFormWindow;->h:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/af;->a:Lcom/alipay/android/mini/window/UIFormWindow;

    iget-boolean v1, v1, Lcom/alipay/android/mini/window/UIFormWindow;->d:Z

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/window/af;->a:Lcom/alipay/android/mini/window/UIFormWindow;

    invoke-static {v0}, Lcom/alipay/android/mini/window/UIFormWindow;->a(Lcom/alipay/android/mini/window/UIFormWindow;)Lcom/alipay/android/mini/window/GuideWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/af;->a:Lcom/alipay/android/mini/window/UIFormWindow;

    iget-object v1, v1, Lcom/alipay/android/mini/window/UIFormWindow;->h:Landroid/app/Activity;

    const-string/jumbo v2, "info"

    iget-object v3, p0, Lcom/alipay/android/mini/window/af;->a:Lcom/alipay/android/mini/window/UIFormWindow;

    iget-object v3, v3, Lcom/alipay/android/mini/window/UIFormWindow;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    invoke-virtual {v3}, Lcom/alipay/android/mini/window/MiniUiWindow;->b()Lcom/alipay/android/mini/uielement/BaseElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/mini/window/GuideWindow;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/mini/uielement/BaseElement;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/af;->a:Lcom/alipay/android/mini/window/UIFormWindow;

    iget-object v0, v0, Lcom/alipay/android/mini/window/UIFormWindow;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/MiniUiWindow;->b()Lcom/alipay/android/mini/uielement/BaseElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->g()V

    goto :goto_1
.end method
