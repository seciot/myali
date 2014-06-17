.class final Lcom/alipay/android/mini/uielement/z;
.super Lcom/alipay/android/app/widget/BaseTarget;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/android/mini/uielement/UILine;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UILine;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/z;->b:Lcom/alipay/android/mini/uielement/UILine;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/z;->a:Landroid/view/View;

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

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
