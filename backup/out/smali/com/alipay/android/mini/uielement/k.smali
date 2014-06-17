.class final Lcom/alipay/android/mini/uielement/k;
.super Lcom/alipay/android/app/widget/BaseTarget;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/alipay/android/mini/uielement/UIComponent;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIComponent;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/k;->b:Lcom/alipay/android/mini/uielement/UIComponent;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/k;->a:Landroid/view/ViewGroup;

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

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
