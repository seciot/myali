.class final Lcom/alipay/android/mini/uielement/e;
.super Lcom/alipay/android/app/widget/BaseTarget;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/alipay/android/mini/uielement/UIBlock;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIBlock;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/e;->b:Lcom/alipay/android/mini/uielement/UIBlock;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/e;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/alipay/android/app/widget/BaseTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/e;->b:Lcom/alipay/android/mini/uielement/UIBlock;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIBlock;->a(Lcom/alipay/android/mini/uielement/UIBlock;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/e;->b:Lcom/alipay/android/mini/uielement/UIBlock;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIBlock;->a(Lcom/alipay/android/mini/uielement/UIBlock;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/e;->b:Lcom/alipay/android/mini/uielement/UIBlock;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIBlock;->a(Lcom/alipay/android/mini/uielement/UIBlock;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/e;->b:Lcom/alipay/android/mini/uielement/UIBlock;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIBlock;->a(Lcom/alipay/android/mini/uielement/UIBlock;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
